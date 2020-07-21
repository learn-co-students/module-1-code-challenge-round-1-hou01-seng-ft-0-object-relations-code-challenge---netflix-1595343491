class Review

    attr_accessor :view, :mov, :rate

    @@all = []

    def initialize(view, mov, rate)
        @view = view
        @mov = mov        
        @rate = rate

        self.class.all << self
    end
  
    def self.all
        @@all
    end

    def rating
        a = self.class.all.find {|r| r == self}
        a.rate 
    end

    def viewer
        a = self.class.all.find {|r| r == self}
        a.view
    end

    def movie
        a = self.class.all.find {|r| r == self}
        a.mov
    end

end
