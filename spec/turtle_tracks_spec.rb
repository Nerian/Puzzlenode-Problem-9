require 'spec_helper'

describe Turtle_tracks do
  
  describe "# A Turtle_tracks object should be initialised" do
    
    it "with commands" do             
      input_commands = ['11', 'RT 90', 'FD 5', 'BK 10', 'RT 45', 'REPEAT 2 [ RT 9 RT 90 FD 15 FD 105 ]', 'LT 45']
      executable_commands = ['RT 90', 'FD 5', 'BK 10', 'RT 45', 'RT 9', 'RT 90', 'FD 15', 'FD 105', 'RT 9', 'RT 90', 'FD 15','FD 105', 'LT 45']
      turtle_track = Turtle_tracks.new(input_commands.clone)          
      
      assert{ turtle_track.size  == 11}
      assert{ turtle_track.commands  == executable_commands}
    end         
    
    it "with just a repeat command" do 
      input_commands = ['11', 'REPEAT 2 [ RT 9 RT 90 FD 15 FD 105 ]']
      executable_commands = ['RT 9', 'RT 90', 'FD 15', 'FD 105','RT 9', 'RT 90', 'FD 15', 'FD 105']
      turtle_track = Turtle_tracks.new(input_commands.clone)          
      
      assert{ turtle_track.size  == 11}
      assert{ turtle_track.commands  == executable_commands}      
    end                             
    
    it "should raise error with negative input for map size" do
      commands = ['-11', 'RT 90', 'FD 5', 'RT 135', 'FD 5']      
      assert{ rescuing{ Turtle_tracks.new(commands) }.message == "Map size must be bigger than 0" }            
    end                                                                                         
    
    it "should raise an error for invalid commands" do                                                                        
      commands = ['11', 'RTTTT']  
      expect { Turtle_tracks.new(commands) }.to raise_error(RuntimeError, 'The command RTTTT at line 2 is invalid')      
    end     
  end  
    
  describe "# It should execute commands and produce ASCII art" do  
    
    before(:each) {
      @commands = [4, 'RT 90'] 
    }             
    
    it "Should output a map with the frog at the center" do      
      
      commands = ['11']          
      turtle = Turtle_tracks.new(commands)
      turtle.parse
      output = turtle.output_image   
      puts output
      assert { output ==       
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . X . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n"+
      ". . . . . . . . . . .\n" }     
    end                                   
  end     
end                      