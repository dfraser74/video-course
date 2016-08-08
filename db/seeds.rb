# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(
	nickname: "Simon",
	email: "simon_somlai@hotmail.com",
	password: "password",
	admin: true)

User.create!(
	nickname: "Test",
	email: "test@hotmail.com",
	password: "password",
	admin: false)

Chapter.create!(
    title: 'Mind',
    description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>')
  
Chapter.create!(
    title: 'Health',
    description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>')
  
Chapter.create!(
    title: 'Wealth',
    description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>')
  

Chapter.create!(
    title: 'Social',
    description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>')
  

Chapter.create!(
    title: 'Alive',
    description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>')
  
Chapter.all.each do |chapter|
	10.times do |i|
	Lesson.create(
		title: chapter.title + " lesson #{i + 1}",
		chapter_id: chapter.id,
		description: '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec quam magna. Vivamus augue nulla, bibendum facilisis felis et, placerat ullamcorper elit. Vivamus sed lobortis felis. Praesent accumsan vel orci tincidunt accumsan. Etiam porta gravida posuere. Vivamus in condimentum lacus, feugiat viverra ex. Fusce tempus leo eu magna sodales, vitae eleifend metus pretium. Curabitur vulputate, mauris vel suscipit pellentesque, enim lacus efficitur lorem, ut pellentesque metus nisl at metus. Proin placerat augue sem, vulputate congue purus tempor id. Cras vestibulum augue ac mattis lobortis. In hac habitasse platea dictumst. Mauris volutpat tristique ex, sed volutpat lectus posuere sed.</p>
<p>Vivamus mollis tincidunt dui, sit amet vehicula ligula fringilla at. Maecenas posuere dui ut libero porttitor vulputate. Aliquam convallis placerat ultricies. Aliquam pulvinar porttitor leo, nec egestas felis ullamcorper nec. Etiam non auctor dui, eget fermentum sapien. In quis feugiat augue, a convallis tortor. Curabitur id metus at nunc facilisis egestas. Suspendisse magna lacus, aliquam ac lorem non, cursus tempor tellus. Aenean ornare accumsan metus consequat egestas. Maecenas non est purus. Sed eleifend lorem vitae justo tempus, nec ullamcorper eros dictum. Curabitur egestas sit amet nisl id vestibulum. Proin a tempor ipsum. Nullam tincidunt enim in quam iaculis pretium. Maecenas non arcu magna.</p>',
  		actions: "action 1, action 2, action 3",
  		sources: "source 1, source 2, source 3",
  		files: "file 1 => http://www.site.com",
  		images: "image 1 => http://www.site.com",
  		videos: "video 1 => http://www.site.com"
		)
end
end



