# Turtle Tracks   

A simple LOGO-like interpreter to make a turtle move across a canvas, drawing lines in its wake.

# How to run it

	bundle install
	cd bin
	./logo simple.logo
	./logo complex.logo    

# Creating new images

The Turtle – a sort of pencil – starts at the center of the canvas. Using a list commands you move the turtle. The path that the turtle follows results is what get draw.

## Commands

    FD x  : Move forward x units   
    BK x  : Move backward x units
    RT x  : Rotate the turtle x units clockwise
    RL x  : Rotate the turtle x units counterclockwise

    REPEAT x [ command a command b command c command d command e ... ] : Repeat the commands  between [ ...  ] x times.

## Format of the input file

100  # The height of the canvas. It is a square.
# empty line
command 1
command 2
command 3
command 4
	
# How to run the specs

	rspec spec

# Licence

MIT licence. Gonzalo Rodríguez-Baltanás Díaz 2011

http://nerian.es