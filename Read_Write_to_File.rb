#Reading file 

=begin

File hi.txt:

dafskdbfabskdfbasdk
fajsdbfkjadbskjfsad
fncasdjfbksad
dsafdaskfasd
sdjfnasdk

=end

file = File.open("hi.txt","r")
data1 = file.read()
puts data1

=begin

Out put:

dafskdbfabskdfbasdk
fajsdbfkjadbskjfsad
fncasdjfbksad
dsafdaskfasd
sdjfnasdk

=end

File.readlines("hi.txt").each do |line|
	puts line
	puts
end

=begin

Out put:

dafskdbfabskdfbasdk

fajsdbfkjadbskjfsad

fncasdjfbksad

dsafdaskfasd

sdjfnasdk

=end

file.close()

#Writing file

=begin

Các chế độ đọc trong ruby
https://medium.com/@Sandhya./file-handling-in-ruby-9c900c16091
ex:
“r” : Read-only mode for a file.
“r+” : Read-Write mode for a file.
“w” : Write-only mode for a file.
“w+” : Read-Write mode for a file.
“a” : Write-only mode, if file exists it will append the data otherwise a new file will be created.
“a+” : Read and Write mode, if file exists it will append the data otherwise a new file will be created.

=end

#Ex1:
File.open("Write.txt","w") do |file|
	file.write("Hi boiz, I'm girl :))) ") #file not exist, create a new file 
	#File data: Hi boiz, I'm girl :))) 
end

#Ex2:
File.open("index.html","w") do |file|
	file.write("<h1>Hello</h1>")
end