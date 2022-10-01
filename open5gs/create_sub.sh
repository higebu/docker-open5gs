#/bin/bash

dbctl="/open5gs/open5gs-dbctl --db_uri=mongodb://mongodb/open5gs"

# add {imsi ip key opc}: adds a user to the database with default values and a IPv4 address for the UE
$dbctl add "001010000000001" "10.45.0.2" "465B5CE8B199B49FAA5F0A2EE238A6BC" "E8ED289DEBA952E4283B54E88E6183CA"
$dbctl showall
