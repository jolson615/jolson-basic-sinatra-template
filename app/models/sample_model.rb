class SnippetySnip
        def initialize(name="Larry")
         @name = name
         @attack = rand(1..5)
         @health = rand(18..22)
         @speed = rand(8..12)
        end

        def attack()
            @attack
        end
        
        def health()
            @health
        end
        
        def name()
           @name 
        end
        
        def speed()
            @speed
        end
        
        def health=(health)
            @health = health
        end
        
        
        def crustacean_altercation(enemy)
         if self.speed < enemy.speed
            self.health=(self.health - enemy.attack)
            enemy.health=(enemy.health - self.attack)
             if self.health < 0
             self.health=(0)
             end
             if enemy.health < 0
             enemy.health=(0)
             end
        elsif self.speed > enemy.speed
            enemy.health=(enemy.health - self.attack)
            self.health=(self.health - enemy.attack)
             if self.health < 0
             self.health=(0)
             end
             if enemy.health < 0
             enemy.health=(0)
             end
         end
        
         return "After the attack, you're left with #{self.health} health and #{enemy.name} is left with #{enemy.health} health."
        end #method crustacean_altercation
end #class 