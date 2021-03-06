#' Landscape initialisation
#'
#' Initialise the landscape of the G-MSE model.
#'
#'@param model The type of model being applied (Currently only individual-based
#' -- i.e., 'agent-based' -- models are allowed)
#'@param cols The dimension of one side of the landscape (e.g., Latitude)
#'@param rows The dimension of the other side of the landscape (e.g., Longitude)
#'@param cell_types Scalar or vector of all possible types of landscape cells
#'@param cell_val_mn Mean cell value (e.g., defining crop output on a cell)
#'@param cell_val_sd Standard devation of cell values on a landscape
#'@param cell_val_max The maximum value of a cell
#'@param cell_val_min The minimum value of a cell
#'@param layers The number of layers in the 3D landscape (should usually be 3)
#'@param ownership A scalar or vector of agent IDs that own land
#'@param owner_pr The proportion of land owned by each agent with a unique ID. Note that `owner_pr` must be of the same size as `ownership`, and the order of `owner_pr` reflects the order of agent IDs to which owned land is being assigned
#'@return the_land A cols by rows landscape with randomly distributed cell types
#'@examples
#'land <- make_landscape(model = "IBM", rows = 10, cols = 10, cell_types = 1, 
#'cell_val_mn = 1, cell_val_sd =  0)
#'@export
make_landscape <- function(model, rows, cols, cell_types, cell_val_mn, 
                           cell_val_sd, cell_val_max = 1, cell_val_min = 0,
                           layers = 3, ownership = 0, owner_pr = NULL){
    the_land  <- NULL;
    if(model == "IBM"){
        if(rows < 2){
            stop("Landscape dimensions in IBM must be 2 by 2 or greater");   
        }         
        if(cols < 2){ # Check to make sure the landcape is big enough
            stop("Landscape dimensions in IBM must be 2 by 2 or greater");   
        }
        cell_count     <- cols * rows;
        the_terrain    <- sample(x = cell_types, size = cell_count, 
                                 replace = TRUE);
        the_terrain2   <- rnorm(n = cell_count, mean = cell_val_mn,
                                sd = cell_val_sd);
        if( length(ownership) == 1 ){
            who_owns     <- sample(x = 1:ownership, size = cell_count, 
                                   replace = TRUE);
            the_terrain3 <- sort(who_owns); # Make contiguous for now
        }else{
            who_owns     <- sample(x = ownership, size = cell_count, 
                                   replace = TRUE, prob = owner_pr);
            the_terrain3 <- sort(who_owns); 
        }
        the_terrain2[the_terrain2 > cell_val_max] <- cell_val_max;
        the_terrain2[the_terrain2 < cell_val_min] <- cell_val_min;
        alldata        <- c(the_terrain, the_terrain2, the_terrain3);
        the_land       <- array(data = alldata, dim = c(rows, cols, layers));
    }
    if( is.null(the_land) ){
        stop("Invalid model selected (Must be 'IBM')");
    }
    return(the_land);
}

#' Age landscape
#'
#' Determines how the landscape will change over the course of one time step.
#' For now, simply reverts a specified layer back to its original values
#' In other words, e.g., crops are annual and regrow undamaged each year.
#'
#'@param LAND The name of the landscape being changed
#'@param landscape_ini The name of the original landscape replacing
#'@param layer The layer that is being affected on the landscape
#'@return the_land with one layer reset to its original cell values
#'@examples
#'\dontrun{
#'LANDSCAPE_r <- age_land(LAND = LANDSCAPE_r, landscape_ini = LANDSCAPE_INI, 
#'layer = 2);
#'}
#'@export
age_land <- function(LAND, landscape_ini, layer){

    LAND[,,layer] <- landscape_ini[,,layer];
    
    return(LAND);
}