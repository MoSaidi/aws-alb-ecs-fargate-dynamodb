#These are the only value that need to be changed on implementation
region                   = "eu-west-3"
vpc_cidr                 = "10.0.0.0/16"
availibilty_zone_1       = "eu-west-3a"
availibilty_zone_2       = "eu-west-3b"
desired_ecs_tasks        = 2
minimum_ecs_tasks        = 2
maximum_ecs_tasks        = 4
container_port           = 5000
shared_config_files      = "" # Replace with path
shared_credentials_files = "" # Replace with path
credential_profile       = "" # Replace with what you named your profile