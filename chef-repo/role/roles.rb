name "role"
description "creating roles in chefffff"
run_list "recipe[motd]","recipe[apache]"
