# alias
class Rubyist
  def say!
    puts 'hello'
  end

  def say_with_log!
    puts "Calling method..."
    puts "hello"
    puts "...Method called"
  end

  alias_method :say_without_log!, :say!
  alias_method :say!, :say_with_log!
end