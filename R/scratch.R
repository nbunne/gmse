



time_max       = 10;    # Max number of time steps in sim
land_dim_1     = 100;   # x dimension of the landscape
land_dim_2     = 100;   # y dimension of the landscape
res_movement   = 4;     # How far do resources move
remove_pr      = 0.0;   # Density independent resource death
lambda         = 0.30;  # Resource growth rate
agent_view     = 10;    # Number cells agent view around them
agent_move     = 50;    # Number cells agent can move
res_birth_K    = 10000; # Carrying capacity applied to birth
res_death_K    = 400;   # Carrying capacity applied to death
edge_effect    = 1;     # What type of edge on the landscape
res_move_type  = 2;     # What type of movement for resources
res_birth_type = 2;     # What type of birth for resources
res_death_type = 2;     # What type of death for resources
observe_type   = 0;     # Type of observation used
fixed_observe  = 20;    # How many obs (if type = 1)
times_observe  = 40;    # How many times obs (if type = 0)
obs_move_type  = 1;     # Type of movement for agents
res_min_age    = 1;     # Minimum age recorded and observed
res_move_obs   = TRUE;  # Move resources while observing
Euclidean_dist = FALSE; # Use Euclidean distance in view
plotting       = TRUE;  # Plot the results
hunt           = FALSE; # Does the user hunt resources?
start_hunting  = 0;     # What generation hunting starts
res_consume    = 0.5;
ga_popsize     = 100;   # Pop size in genetic algorithm
ga_mingen      = 20;    # Minimum generations in a ga run
ga_seedrep     = 20;    # How many copies to seed a ga with
ga_sampleK     = 20;    # Random sample size in ga tournament
ga_chooseK     = 2;     # Select from sample in ga tournament
ga_mutation    = 0.1;   # Mutation rate in genetic algorithm
ga_crossover   = 0.1;   # Crossover rate in genetic algorithm
move_agents    = TRUE   # Move agents once per time step
max_ages       = 5      # Maximum age of any resource(s)
minimum_cost   = 10     # Minimum cost value
user_budget    = 1000   # What is the budget of a user
manager_budget = 7000   # The budget of a manager
manage_target  = 200    # The target resource abundance
RESOURCE_ini   = 100    # Number of initial resources
scaring        = FALSE  # Scaring allowed in simulations
culling        = TRUE   # Culling/hunting allowed
castration     = FALSE  # Castration allowed
feeding        = FALSE  # Feeding resources allowed
help_offspring = FALSE  # Helping offspring allowed
tend_crops     = FALSE  # Tending crops allowed
kill_crops     = FALSE  # Killing crops allowed
stakeholders   = 4      # Number of stake-holders
manage_caution = 1      # Caution rate of the manager
land_ownership = FALSE  # Do stake-holders act on their land?
manage_freq    = 1      # Frequency that management enacted
converge_crit  = 100    # Convergence criteria
