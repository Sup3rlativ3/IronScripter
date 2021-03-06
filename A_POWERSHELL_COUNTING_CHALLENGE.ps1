<# It is time for a new PowerShell scripting challenge. Today’s challenge is targeted at beginner and intermediate skill levels, although everyone is welcome to try their hand. To get the most out of the challenge you should do as much of all challenges posted. And really do it. Commit code to a file and not merely in your head. The best learning comes by actually doing. As always, you are encouraged to post links to your work in the comments.

Beginner
The challenge is simple: get the sum of the even numbers between 1 and 100. You should be able to do this in at least 3 different ways. Show all 3 ways. You don’t need to write any functions or scripts.

Intermediate
After you’ve solved the beginner level, take what you’ve learned and create a PowerShell function to get the sum and average of every X number between 1 and a user specified maximum. For example, the function should produce a result that shows the sum and average of every 4th number between 1 and 512.

Bonus Options
If you want a bit more challenge add the following features to your function.

Limit the interval to a value between 1 and 10
Add a property to your output that includes all the matching number
Let the user specify the starting and stopping numbers #>

# Method 1
$Counter = 0
1..100 | % {if($_ % 2 -eq 0 ) {$counter = $counter + $_} }
write-host $counter

# Method 2
$Counter = 0
$Values = 1..100
foreach($x in $values)
    {
        if($x % 2 -eq 0 ) 
        {
            $counter = $counter + $x
        }
    }
write-host $counter

# Method 3
$Counter = 0

write-host $counter