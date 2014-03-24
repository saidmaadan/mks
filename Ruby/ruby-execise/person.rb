class Person
  
  def about(name, age, work, country)
    @name = name
    @age = age
    @work = work
    @country = country
    puts "I am #{name} from #{country}"
  end
  def tell_us_more
    puts "My name is #{@name} 'm #{@age} years of age, I'm professional #{@work} from #{@country}"
  end
  def status(status)
    puts "I'm #{status}"
  end
end
me = Person.new
me.about("Said Maadan", 34, "Web Developer", "Nigeria")
me.tell_us_more
me.status("married")