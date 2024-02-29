# Test 1: Testing invalid numeric inputs
echo -n "Testing invalid numeric inputs - "
echo "123" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 2: Testing valid numeric input
echo -n "Testing valid numeric input - "
echo "42" | ./maze > tmp
if grep -q "Moving forward" tmp; then
    echo "PASS"
else
    echo "FAIL"
fi

# Test 3: Testing negative numeric input
echo -n "Testing negative numeric input - "
echo "-5" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 4: Testing decimal numeric input
echo -n "Testing decimal numeric input - "
echo "3.14" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 5: Testing numeric input with leading zeros
echo -n "Testing numeric input with leading zeros - "
echo "007" | ./maze > tmp
if grep -q "Moving forward" tmp; then
    echo "PASS"
else
    echo "FAIL"
fi

# Test 6: Testing large numeric input
echo -n "Testing large numeric input - "
echo "1000000" | ./maze > tmp
if grep -q "Moving forward" tmp; then
    echo "PASS"
else
    echo "FAIL"
fi

# Test 7: Testing alphanumeric input
echo -n "Testing alphanumeric input - "
echo "abc123" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 8: Testing special character input
echo -n "Testing special character input - "
echo "@" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 9: Testing empty numeric input
echo -n "Testing empty numeric input - "
echo "" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 10: Testing numeric input followed by valid commands
echo -n "Testing numeric input followed by valid commands - "
echo "42wses" | ./maze > tmp
if grep -q "Congratulations: Maze Completed" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 11: Testing numeric input followed by invalid commands
echo -n "Testing numeric input followed by invalid commands - "
echo "42x" | ./maze > tmp
if grep -q "Error: Unknown command" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 12: Testing numeric input with whitespace
echo -n "Testing numeric input with whitespace - "
echo " 42 " | ./maze > tmp
if grep -q "Moving forward" tmp; then
    echo "PASS"
else
    echo "FAIL"
fi

# Test 13: Testing numeric input with newline character
echo -n "Testing numeric input with newline character - "
echo -e "42\n" | ./maze > tmp
if grep -q "Moving forward" tmp; then
    echo "PASS"
else
    echo "FAIL"
fi

# Test 14: Testing numeric input with multiple spaces
echo -n "Testing numeric input with multiple spaces - "
echo "4 2" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

# Test 15: Testing numeric input with tab character
echo -n "Testing numeric input with tab character - "
echo -e "4\t2" | ./maze > tmp
if grep -q "Error: Invalid input" tmp; then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi