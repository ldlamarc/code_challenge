Edit input_example.txt and run "ruby challenge.rb"

# Challenge

Story:
In Strangeland they have a coherent (with the name of the Country) monetary system.

Each Strangelandian gold ingot has a number (Integer) written on it.

An ingot n can be exchanged in a bank into three ingots: n/2, n/3 and n/4. These numbers are rounded down, banks remain banks... Note that the result of that kind of exchange are still ingots, meaning that each of them could be exchanged again for 3 other ingots.

You can also sell Strangelandian ingots for euros. The exchange rate is 1:1. An ingot of value n will give you n euros. But you can not buy Strangelandian ingot.

You have one gold ingot of value n. What is the maximum amount of euros you can get for it?

Input
The input will be a file on the file system containing several test cases (not more than 10).
Each testcase is a single line with a number n, 0 <= n <= 1 000 000 000. It is the number written on your ingot.
Output
For each test case output a single line, containing the maximum amount of euros you can make.
Once the file is processed output a single line with the processing time in nanoseconds.

---

Example:

- Input:
  attached file
- Output run 1:
  0
  2
  13
  120
  533
  248604
  1508613
  2566393
  4243218150
  13815601
  -Output run2:
  0
  2
  13
  120
  533
  248604
  1508613
  2566393
  4243218150
  14823501

---

Mark:
Your code will be run against another file than the one provided but with similar values and number of test cases.
Time considered for the mark will be the average of the 2 best of 3 executions of your code.
Success : File is processed and result is correct (in less than 2 000 _ 10^6 nanoseconds, 2s)
LOW < 2 000 _ 10^6 ns
MEDIUM < 200 _ 10^6 ns
HIGH < 20 _ 10^6 ns

---

Evaluation will be done on the same machine for all solutions. We should be able to pull, build and run your code. You don’t need to package or create an executable.
Price :

- First successful solution
- Lowest processing time
  The time of your last commit on the repo will be used to determine your position. Any commit after the timebox will disqualify you.
  You are allowed to participate only once.
  If you reach your ideal solution before the timebox, feel free to send a pm to get your code evaluated.
  Have fun!

# Input example

0
2
12
100
400
123456
654321
999999
1000000000

# Simple examples explained

0 -> 0 (you exchange the ingot 1:1 for 0)
..
11 -> 11 (you exchange the ingot 1:1 for 11)
12 -> 6 + 4 + 3 (you split) -> 13

# Results

Hi guys,

Thank you all for your submissions, I hope you had fun.

I reviewed them and we have two winners.

Most performant solution: Laurens De La Marche
0.409 ms in Ruby
Quickest successful submission: Karel Bernolet
12.843 ms in Java at 11h47

We have a few other successful solutions around the time frame (in order of submission):

Carl Salaets 56.946 ms in Java
Joachim Buyse 13.183 ms in Javascript
Taha Chehad 1342.500 ms in Java

Remarkable solutions but out of the time frame:

Vincent Leblond 2.000 ms in Python
Chris Boogmans 0.999 ms in Python

I have been flexible in my reviews, an automated check would have failed on a lot of submissions.
Don't forget to compare your output to the example next time.

I will check with some of you if I can share your solutions.

Thank you for your feedbacks, sorry for the ones who had hard time to figure out what I was asking.
I will try to get it review by multiple people next time or maybe use a platform with existing challenges as suggested by Laurens.

Kind regards,

Henri

PS: We are waiting for a picture of our winners with their (soon delivered) prize customized by Michiel!
PS2: Small poll incoming on a possible next step
