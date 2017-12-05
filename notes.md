# Notes for Complete Ruby on Rails course on Udemy

## Section 2 - The Ruby Programming Language
### Lecture 15 - ****Intro to Section 2 and Ruby  
- ruby-lang.org
- 

### Lecture 16 - Into to Ruby - Text with Directions, References 

### Lecture 26
Arrays
- ex. [1,2,3,4,5,6,"Caleb",[1,2,3]]

if x = [1,2,3,4,5,6,"Caleb",[1,2,3]]
`x[0] == 1`
`x[7] == [1,2,3]`
`x[7][1] == 1`
`x.shuffle` = randomly shuffled version of x array
`x.shuffle!` = same but permanently mutated

if y is a range from 0 up to _and including_ 99
`y = (0..99)` == range from 0 to 99 *including* 99
`y = (0...99)` == range from 0 to 99 *excluding* 99

`y.to_a` = turns y range into an array
`y.to_a << 30` = pushes 30 onto the end of the 

if z = [1,2,3,4,5,6,7,8,9,10]
`z.push 11` = will push an 11 on to the end of the z array
`z.pop` = pops the 11 back off the end of the array
`z.uniq` = removes similar items in the array
`z.uniq!` = permanently removes similar items in the array

if y == an array of 1-99
`y.each {|i| puts i}` will iterate through all 99 and output each number.

For loops...
```
for potato in y
puts "Hello"
end
```
^ will output "Hello" for every number that entry that is present in the y array.


