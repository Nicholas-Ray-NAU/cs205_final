# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

#starts loop through data with space feild seperator
BEGIN{FS=" "}
{

#begins if statement at the second row
if (NR!=1){

#Add all pokemon hp
hp+=$6

#Adds all attack stats of pokemon
attack+=$7

sum+=1
}
}
#ends loop through data
END{

#calculates avg hp
avgh=hp/sum

#calculates avg attack
avga=attack/sum

# Prints the summary of pokemon data
printf "======= SUMMARY OF POKEMON.DAT ======\n    Total Pokemon: %d\n    Avg. HP: %d\n    Avg. Attack: %d\n======= END SUMMARY =======\n", sum, avgh, avga}
