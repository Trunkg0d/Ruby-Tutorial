puts "This is main Ruby Program"

END { #Declares code to be called at the end of the program.
   puts "Terminating Ruby Program"
}
BEGIN { #Declares code to be called before the program is run.
   puts "Initializing Ruby Program"
}
