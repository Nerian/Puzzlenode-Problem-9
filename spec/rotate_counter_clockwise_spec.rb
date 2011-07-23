require 'spec_helper'


describe "LT" do
  before(:each) { @commands = [5, 'RT 90'] }
  describe "LT 0" do  
    before(:each) {
      @commands << 'LT 0'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse                                
        
        
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','x','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']        
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','x','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end        
  end
  describe "LT 45" do  
    before(:each) {
      @commands << 'LT 45'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','x','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','x','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']         
      end          
    end
    
  end
  describe "LT 90" do  
    before(:each) {
      @commands << 'LT 90'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','x','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']       
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','x','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']         
      end          
    end
    
  end
  describe "LT 135" do   
    before(:each) {
      @commands << 'LT 135'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','x','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','x','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']           
      end          
    end
    
  end
  describe "LT 180" do   
    before(:each) {
      @commands << 'LT 180'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','x','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','x','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']          
      end          
    end
    
  end
  describe "LT 225" do  
    before(:each) {
      @commands << 'LT 225'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','x','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','x','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end
    
  end    
  
  describe "LT 270" do  
    before(:each) {
      @commands << 'LT 270'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','x','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','x','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end
    
  end
             
  describe "LT 315" do  
    before(:each) {
      @commands << 'LT 315'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','x','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','x','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']
      end          
    end    
  end

  describe "LT 360" do 
    before(:each) {
      @commands << 'LT 360'
    }                     
    describe "FD 1" do
      it 'moves' do
        @commands << 'FD 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','.','x','x','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.'] 
      end
    end

    describe "BK 1" do
      it 'moves' do
        @commands << 'BK 1'                              
        @turtle_tracks = Turtle_tracks.new(@commands)  
        @turtle_tracks.parse
        @turtle_tracks.image[0].should == ['.','.','.','.','.']
        @turtle_tracks.image[1].should == ['.','.','.','.','.']
        @turtle_tracks.image[2].should == ['.','x','x','.','.']
        @turtle_tracks.image[3].should == ['.','.','.','.','.']
        @turtle_tracks.image[4].should == ['.','.','.','.','.']         
      end          
    end
    
  end
end