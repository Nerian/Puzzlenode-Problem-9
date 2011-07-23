#!/usr/bin/env ruby
require "rubygems"
require "thor/group"
require File.join(File.dirname(__FILE__), '..', 'lib', 'Turtle_tracks')

class Logo < Thor::Group
  include Thor::Actions
  
  desc "Interprets Logo files and show a visualization"
  
  def one                           
    say '# Reading the file'      
    @commands = []
    File.open("logo", "r") do |infile|
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
    @turtle_tracks.parse
  end          
  
  def three
    say '# Visual'
  end
end

Logo.start