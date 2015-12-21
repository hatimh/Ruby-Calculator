class Calculator
  def add(a, b)
   a + b
  end

  def subtract(a, b)
   a - b
  end
end

$try_again = "Invalid input or incorrect number of parameters, please try again from start ('add','subtract','usage')" 

def operation(input,boolean)

  array = input.split(" ")
  array.select!{|element| element.to_i.to_s == element}
  
  if  array==nil || array.length != 2
    
    return $try_again
  end
  array.map!{|element|element.to_i}
  boolean ? "The result is #{$calc.add(array[0],array[1])}" : "The result is #{$calc.subtract(array[0],array[1])}"

end
  
$calc = Calculator.new
$continue = true


puts "Welcome to Basic Ruby Calculator v1.0.0.0.0.1 !"
  puts "Type 'usage' to see options or enter operation straight if you have used this calculator before"

while $continue
    
  string = gets.chomp.upcase
  case string
    when "USAGE"
    puts "use 'add' to perform an add operation "
    puts "use 'subtract' to perform a subtract operation"
    puts "Type 'quit' to exit program"
    
    when "ADD"
    puts "enter two numbers to add separated by space"
    input = gets.chomp
    puts operation(input,true)
    
    
    when "SUBTRACT"
    puts "enter two numbers to subtract separated by space"
    puts "Note: first number must be the one to subtract from"
    input = gets.chomp
    puts operation(input,false)
        
  when "QUIT"
  
    $continue = false
    
  else 
    puts $try_again
    puts "or type 'quit' to exit program"
  end
end

puts "Thank you for using Basic Ruby Calculator v1.0.0.0.0.1 !"
