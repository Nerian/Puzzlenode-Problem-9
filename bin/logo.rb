#!/usr/bin/env ruby
require "rubygems"
require "thor/group"
require File.join(File.dirname(__FILE__), '..', 'lib', 'Turtle_tracks')

class Logo < Thor::Group
  include Thor::Actions
  
  desc "Interprets Logo files and show a visualization"     
  
  argument :logo_file, :type => :string
  
  def one                           
    say '# Reading the file'      
    @commands = []
    File.open(logo_file, "r") do |infile|
      while (line = infile.gets)
        if line.length > 1   
          @commands << line.strip
        end
      end                                      
      puts @commands.inspect
    end                 
  end                      
  
  def two
    say '# Parsing'                                         
    @turtle_tracks = Turtle_tracks.new(@commands)  
    puts "Commands: "
    puts @turtle_tracks.commands.inspect
    @turtle_tracks.parse   
    image_string = @turtle_tracks.output_image
    puts image_string
                   
    File.open(logo_file + '_my_output.txt', "w") do |file|
      file.printf(image_string)
    end
    
  end          
end

Logo.start