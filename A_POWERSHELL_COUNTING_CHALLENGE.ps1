$Counter = 0
1..100 | % {if($_ % 2 -eq 0 ) {$counter = $counter + $_;"$_ is even"} }
write-host $counter