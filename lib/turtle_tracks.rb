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
  end    
  
  def parse    
    @commands.each do |command|   
      case command
        when /^FD \d*$/
          @turtle.forward(command.match(/\d*$/)[0])
        when /^BK \d*$/
          @turtle.backward(command.match(/\d*$/)[0])
        when /^RT \d*$/                             
          @turtle.rotate_clockwise(command.match(/\d*$/)[0])
        when /^LT \d*$/                             
          @turtle.rotate_counter_clockwise(command.match(/\d*$/)[0])
      end
    end    
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
    
    @commands.each_index do |i|
      command = @commands[i]
      if command.match(/^REPEAT/)
        repeat_this_number_of_times = command.split(' ').flatten[1].to_i        
        tmp_command_list.delete_at(i)        
        extracted_commands = []                  
        extracted_commands = command.scan(/\[.*\]/)[0].scan(/(\w{2}\s\d+)/).flatten
        repeat_this_number_of_times.times do |ti|
          extracted_commands.size.times do |position|
            tmp_command_list.insert(i + position+ (extracted_commands.size * ti), extracted_commands[position])
          end
        end                 
      end
    end                                                                          
    @commands = tmp_command_list                                                 
  end
  
  def output_image    
    total = @image.size     
    image = @image.clone
    image_output = []
    
    image.each do |line|      
      line << "\n"               
      image_output << line.join(' ')
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
    @image[mid_point][mid_point] = 'x'                        
  end  
end    