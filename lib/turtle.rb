class Turtle
  attr_accessor :x, :y, :angle, :image
  
  def initialize(x, y, image, angle=90)    
    @x = x
    @y = y        
    @image = image
    @angle = angle.to_i
  end     
    
  def move(units, options )       
    units = units.to_i                                   
    
    direction = options[:direction] == :backward ? -1 : 1   
              
    puts "moving #{units.abs} #{options[:direction].to_s}, angle #{@angle}" 
    units.abs.times do                 
      if @angle == 0
        @x += 1 * direction                       
      end
      if @angle == 45
        @x += 1 * direction
        @y -= 1 * direction
      end
      if @angle == 90
        @y -= 1 * direction
      end
      if @angle == 135
        @x -= 1 * direction
        @y -= 1 * direction
      end
      if @angle == 180
        @x -= 1 * direction
      end
      if @angle==225
        @x -= 1 * direction
        @y += 1 * direction
      end
      if @angle == 270
        @y += 1 * direction
      end
      if @angle==315
        @x += 1 * direction
        @y += 1 * direction
      end
      if @angle == 360
        @x += 1 * direction
      end 
      image[@y][@x] = 'X' unless image[@y].nil? or image[@y][@x].nil?
    end
  end     
  
  def rotate(units, options)    
    angles = [0, 45, 90, 135, 180, 225, 270, 315, 360]
    
    if options[:direction] == :clockwise 
      @angle -= units.to_i
      if @angle < 0
        @angle += 360
      end
    else
      @angle += units.to_i
      if @angle > 360  
        @angle -= 360
      end
    end                
  end 
end