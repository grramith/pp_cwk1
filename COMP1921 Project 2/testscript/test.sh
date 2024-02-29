#Testing invalid inputs e.g Numbers

echo -n "Testing numeric inputs - "

echo "1"  | ./maze > tmp

if grep -q "Error: Invalid input" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
FAIL

#Testing invalid inputs e.g Special Characters

echo -n "Testing special character inputs - "

echo "%" | ./maze > tmp

if grep -q "Error: Invalid input" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
FAIL

#Testing if a wall is reached

echo -n "Testing whether a wall has been reached - "

echo "w" | ./maze > tmp

if grep -q "Error: Wall Reached" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

#Testing whether the end of the maze has been reached successfully

echo -n "Testing whether the end of the maze has been reached - "

./maze < maze1solution.txt > tmp

if grep -q "Congratulations: Maze Completed" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

#Testing an empty input

echo -n "Testing empty inputs - "

echo " " | ./maze > tmp

if grep -q "Error: Invalid input" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

#Testing valid input

echo -n "Testing valid inputs - "

echo "w" | ./maze > tmp

if grep -q "Moving forward" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

#Testing an incorrect solution, player going into a wall

echo -n "Testing whether an incorrect input is detected - "

./maze < maze1incorrectsolution.txt > tmp

if grep -q "Error: Wall Reached" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi