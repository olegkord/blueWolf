## Readme for Oleg Kordunskiy Code Challenge.

### part 1:

Find the single pair of repeating integers in an array of integers of length 1 million.

Assumptions:
  - Array contains one and only one integer that repeats exactly twice.
  - All other elements in the array may appear 1, 3-999,998 times.
  - All other elements in the array are not necessarily unique.

### part 2:

Find the first non-repeating character in a given string.

## Test Results:

<pre><code>
>>rspec spec

TestArray
  #find_doop_arbitrary
    apply a smaller array to test proper function
      finds a solitary pair of integers in an array of size N
    input an array that contains an incorrect datatype
      evaluates the array until an incorrect value is read and returns false
    input an array without any integer pairs
      evalues the array and returns false
    input a string to be tested
      evaluates the argument and returns false
    input nil to be tested
      evalues the argument of nil and returns false
    full scale test
      evalues the array and returns the single pair of numbers

TestString
  #first_no_repeat
    apply string from assignment statement
      returns the first non-repeating char in the string
    apply a number as argument
      returns false because of invalid argument
    apply a string with no single-repeating char
      returns false because the first non-repeating char can't be found
    apply nil as argument
      returns false because nil is not a String class

Finished in 0.83913 seconds (files took 1.26 seconds to load)
10 examples, 0 failures
</code></pre>
