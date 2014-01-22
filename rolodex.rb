require './contact'

    class Rolodex
        def initialize
            puts "\e[H\e[2J"
            @contacts  =  []
            @id = 1000
        end

        def contacts
            puts "\e[H\e[2J"
            @contacts
        end

        def add_contact
            puts "\e[H\e[2J"
            @id +=1
            print "Enter First Name: "
            first_name = gets.chomp
            print "Enter Last Name: "
            last_name = gets.chomp
            print "Enter Email Address: "
            email = gets.chomp
            print "Enter a Note: "
            note = gets.chomp
            contact = Contact.new(@id,first_name, last_name, email, note)
            @contacts << Contact.new(@id, contact.first_name, contact.last_name, contact.email, contact.note)
           
        end

        def modify_contact
            puts "\e[H\e[2J"
            print "Enter id number: "
            id = gets.chomp.to_i
            print "Enter attribute you would like to modify (first_name, last_name, email, note): "
            attribute  = gets.chomp
            print "Enter new attribute: "
            new_attribute = gets.chomp
            contact = find_contact(id)
            contact.first_name = new_attribute if attribute == "first_name"
            contact.last_name = new_attribute if attribute == "last_name"
            contact.email = new_attribute if attribute == "email"
            contact.note = new_attribute  if attribute == "note"
            puts "Contact has been successfully modified"
        end

        def delete_contact
            puts "\e[H\e[2J"
            print "Enter contact id number: "
            id = gets.chomp.to_i
            contact = find_contact(id)
            @contacts.delete(contact)
            puts " Contact has been successfully deleted."
        end

        def display_all_contacts
            puts "\e[H\e[2J"
            @contacts.each do |contact| puts "First Name: #{contact.first_name}, Last Name: #{contact.last_name}, Email: #{contact.email}, Notes: #{contact.note}"
            puts "Displaying all contacts"
            end
    
        end

        def display_attribute
            puts "\e[H\e[2J"
            print "Enter contact id: "
            id = gets.chomp.to_i
            print "Enter attribute tag (first_name, last_name, email, note: )"
            attribute  = gets.chomp
            contact = find_contact(id)
            puts contact.first_name if attribute == "first_name"
            puts contact.last_name if attribute == "last_name"
            puts contact.email if attribute == "email"
            puts contact.note if attribute == "note"

        end

        def find_contact(id)
            puts "\e[H\e[2J"
            return nil if @contacts.empty?
            @contacts.each do |contact|
            return contact if contact.id == id
        end 
    end
end
