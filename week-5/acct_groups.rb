=begin
#Pseudocode:
#Input: Array of strings
#Output: Hash with Group Name Keys and Group Member Array values
#Steps:
Count the total number of students
If the total mod 5 is 0, iterate through the array and slice off five names at a time into a new array and assign them to hash keys.
If the total mod 5 is three or greater, then slice off that amount of names into an array and assign it to a Hash key.
	Then iterate through the array and slice off 5 names at a time into new arrays in the hash.
If the total mod 5 is 2, slice 3, then slice 4, then iterate through 5 at a time to slice.
If the total mod 5 is 1, slice 3 twice, then iterate through 5 at a time to slice.
=end

def accountability_grouper(name_array)
	group_hash = Hash.new
	group_number = 1
	mod_num= name_array.count % 5
	if mod_num == 0
		name_array.each do |x|
			group_hash["Group #{group_number}"]=name_array.slice!(0..4)
			group_number += 1
		end
	elsif mod_num >= 3
		group_hash["Group #{group_number}"]=name_array.slice!(0..(mod_num-1))
		group_number += 1
		name_array.each do |x|
			group_hash["Group #{group_number}"]=name_array.slice!(0..4)
			group_number += 1
		end
	elsif mod_num == 2
		group_hash["Group #{group_number}"]=name_array.slice!(0..2)
		group_number += 1
		group_hash["Group #{group_number}"]=name_array.slice!(0..3)
		group_number += 1
		name_array.each do |x|
			group_hash["Group #{group_number}"]=name_array.slice!(0..4)
			group_number += 1
		end
	elsif mod_num == 1
		group_hash["Group #{group_number}"]=name_array.slice!(0..2)
		group_number += 1
		group_hash["Group #{group_number}"]=name_array.slice!(0..2)
		group_number += 1
		name_array.each do |x|
			group_hash["Group #{group_number}"]=name_array.slice!(0..4)
			group_number += 1
		end
	end
	puts group_hash
	return group_hash
end
accountability_grouper(["Joe Blow", "Joe Shmoe", "Joe Plow", "Joe Joe", "Jo-Jo Jones","Flipperty Floe","Gus Gunner", "Plap Flapperton","Greb Garson", "Madge Micter", "Carl Blouse", "Fart Face", "Macker Ackerton"])

=begin
What was the most interesting and most difficult part of this challenge?
The most interesting and difficult part of this challenge was settling on how I wanted to attack the problem.
A few different options came to mind, and I eventually went with the one that seemed most straighforward.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I do think that I am improving my ability to do this. Initially I didn't like writing pseudocode, and all of my
	pseudocode read pretty much like code. I'm getting better at breaking everything down enough now that I can
	describe each step better, which pays off when it comes time to code.

Was your approach for automating this task a good solution? What could have made it even better?
I think it was a good solution. I mean, why would I submit a bad solution? Come on! If I had ideas about what could 
	have made it better I would've made it better before submitting it. For the scenario given, I think its ideal.

What data structure did you decide to store the accountability groups in and why?
I decided to store the groups in a hash so that I could name and number them. Its easier to call up "Group 1" rather than finding
the object at index 0.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I had already learned about the slice method, but using it again was good practice for me!
=end