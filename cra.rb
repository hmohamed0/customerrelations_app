require './rolodex'
# require './contact'

class CRA 
  def initialize
  @rolodex = Rolodex.new
  
  end  
  
  def self.run
    cra = CRA.new
    cra.main_menu
  end

  def print_main_menu
  puts "\e[H\e[2J"
  puts "[1] Add a new contact"
  puts "[2] Modify an existing contact"
  puts "[3] Delete a contact"
  puts "[4] Display all the contacts"
  puts "[5] Display attributes"
  puts "[6] Exit"
  puts "Enter a number: "
  
  end 
   
  
  def main_menu
    puts "\e[H\e[2J"
    user_input = 0 
    while user_input != 6
    puts print_main_menu
    user_input = gets.chomp.to_i
    call_option(user_input.to_i)

    break if user_input == 6
  
  end 
end

  def call_option(user_input)
    puts "\e[H\e[2J"
    @rolodex.add_contact if user_input == 1 
    @rolodex.modify_contact if user_input == 2
    @rolodex.delete_contact if user_input == 3
    @rolodex.display_all_contacts if user_input == 4
    @rolodex.display_attribute if user_input == 5
    exit if user_input == 6
    puts "Goodbye"
  end 
end 

CRA.run