=begin
ESSAY TEMPLATE:
The TITLE: PERSON was one of the most important people in COUNTRY's storied history. On DATE, PRONOUN single-handedly changed COUNTRY by THESIS_STATEMENT. It would be years before anyone else even came close to accomplishing something similar, and I can only imagine what it would've been like to have been there.	From that moment on, PERSON would always be remembered as the TITLE from COUNTRY.


=end


def essay_writer(essay_array)
	title=essay_array[0]
	person=essay_array[1]
	country=essay_array[2]
	date=essay_array[3]
	thesis_statement=essay_array[4]
	pronoun=essay_array[5]
	return "The #{title}: #{person} was one of the most important people in #{country}'s storied history. On #{date}, #{pronoun} single-handedly changed #{country} by #{thesis_statement}. It would be years before anyone else even came close to accomplishing something similar, and I can only imagine what it would've been like to have been there. From that moment on, #{person} would always be remembered as the #{title} from #{country}."
end

american_history = ["First Man on the Moon","Neil Armstrong","The United States of America","July 20th, 1968", "being the first person to walk on the surface of the moon","he"]
moonarian_history = ["First Moon-man on Mars","Scarbon Perfle","The United Americas of the Moon","Moonmonth 8, 3225", "setting moon-man foot on the surface of Mars", "he"]
marsarian_history = ["First Marsman on Jupelon 6","Calfrock Tickentom","The United Moons of Mars","Moonmonth 40, 3230","traveling to Jupelon 6, defeating the Jupelon Überkerd and implanting Marsman genetic material into the soil","heen"]

Essay_01 = "The First Man on the Moon: Neil Armstrong was one of the most important people in The United States of America's storied history. On July 20th, 1968, he single-handedly changed The United States of America by being the first person to walk on the surface of the moon. It would be years before anyone else even came close to accomplishing something similar, and I can only imagine what it would've been like to have been there. From that moment on, Neil Armstrong would always be remembered as the First Man on the Moon from The United States of America."
Essay_02 = "The First Moon-man on Mars: Scarbon Perfle was one of the most important people in The United Americas of the Moon's storied history. On Moonmonth 8, 3225, he single-handedly changed The United Americas of the Moon by setting moon-man foot on the surface of Mars. It would be years before anyone else even came close to accomplishing something similar, and I can only imagine what it would've been like to have been there. From that moment on, Scarbon Perfle would always be remembered as the First Moon-man on Mars from The United Americas of the Moon."
Essay_03 = "The First Marsman on Jupelon 6: Calfrock Tickentom was one of the most important people in The United Moons of Mars's storied history. On Moonmonth 40, 3230, heen single-handedly changed The United Moons of Mars by traveling to Jupelon 6, defeating the Jupelon Überkerd and implanting Marsman genetic material into the soil. It would be years before anyone else even came close to accomplishing something similar, and I can only imagine what it would've been like to have been there. From that moment on, Calfrock Tickentom would always be remembered as the First Marsman on Jupelon 6 from The United Moons of Mars."

puts essay_writer(american_history) == Essay_01
puts essay_writer(moonarian_history) == Essay_02
puts essay_writer(marsarian_history) == Essay_03

#=> should output `true` if your code works