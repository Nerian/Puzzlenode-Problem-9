require File.join(File.dirname(__FILE__), '..', 'lib', 'turtle')

class Turtle_tracks
  
  attr_reader :commands, :size, :image, :turtle
  
  def initialize(commands)  
    @size = commands[0].to_i
    @commands = commands                 
    validate()    
    initializate_image()        
    mid_position = @size/2
    @turtle = Turtle.new(mid_position, mid_position, image)  
    puts "The turtle is at: #{mid_position}, #{mid_position}. The size of the grid is #{@size}" 
  end    
  
  def parse    
    @commands.each do |command|                     
      case command
        when /^FD \d*$/
          @turtle.move(command.match(/\d*$/)[0], :direction => :forward )
        when /^BK \d*$/
          @turtle.move(command.match(/\d*$/)[0], :direction => :backward )
        when /^RT \d*$/                             
          @turtle.rotate_clockwise(command.match(/\d*$/)[0])
        when /^LT \d*$/                             
          @turtle.rotate_counter_clockwise(command.match(/\d*$/)[0])
      end
    end
    #puts output_image    
  end
  
  def validate                        
    raise 'Map size must be bigger than 0' unless @commands[0].to_i >= 0
    
    @commands.delete_at(0)      
    extract_individual_commands_from_repeat_command
    
    @commands.each_index do |i|      
      command = @commands[i]   
      raise "The command #{command} at line #{i+2} is invalid" unless
        command =~ /^FD \d*$/ or 
        command =~ /^BK \d*$/ or
        command =~ /^RT \d*$/ or        
        command =~ /^LT \d*$/ or
        command =~ /^REPEAT/        
    end    
  end                           
  
  def extract_individual_commands_from_repeat_command    
    tmp_command_list = @commands.clone  
    puts tmp_command_list
    
    @commands.each_index do |i|
      command = @commands[i]
      if command.match(/^REPEAT/)
        repeat_this_number_of_times = command.split(' ').flatten[1].to_i  
        tmp_command_list.delete_at(i)     
        extracted_commands = []                  
        extracted_commands = command.scan(/\[.*\]/)[0].scan(/(\w{2}\s\d+)/).flatten   
        extracted_commands = extracted_commands * repeat_this_number_of_times
        extracted_commands.reverse.each { |c| tmp_command_list.insert(i, c)}
      end
    end                                                                          
    @commands = tmp_command_list                                                 
  end
  
  def output_image    
    total = @image.size     
    image = @image.clone
    image_output = []
    
    image.each do |line|                           
      image_output << line.join(' ')
      image_output << "\n"
      total -= 1
     print "\rWorking: #{total}"
    end          
                        
    puts "\nDone"         
    image_output = image_output.flatten.join
  end
  
  def initializate_image
    @image = Array.new
    @size.times do |x| 
      @image[x] = []
      @size.times do |y|
        @image[x][y] = '.'
      end                   
    end                     
    mid_point = @size/2
    @image[mid_point][mid_point] = 'X'                        
  end  
end    