class Cell
    attr_reader :coordinate, 
                :ship,
                :takes_hit

    def initialize(coordinate, ship = nil, takes_hit = false)
        @coordinate = coordinate
        @ship = ship
        @takes_hit = takes_hit
    end

    def empty?
        if @ship == nil
            true
        else
            false
        end
    end                     

    def place_ship(ship_name)
        @ship = ship_name
    end

    def fired_upon?
        @takes_hit        
    end

    def fire_upon 
        @takes_hit = true
        if empty? == false
            @ship.health -= 1 
        end
    end

    def render(reveal = false)
    
        if fired_upon? == true && empty? == true
            "M"
        elsif @ship && @ship.sunk?
            "X"
        elsif fired_upon? == false && empty? == false && reveal == true
            "S"
        elsif fired_upon? == true && empty? == false 
            "H"
        else
            "."
        end
    end
    
end