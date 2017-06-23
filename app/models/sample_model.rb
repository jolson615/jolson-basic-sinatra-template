class SnippetySnip
        
        @@fightlog ||= []
        
        def initialize(name="Larry", health=rand(18..22), attack=rand(1..5), speed=rand(8..12))
         @name = name
         @attack = attack
         @health = health
         @speed = speed
         puts "new snippety snip created with name #{@name}, attack #{@attack}, health #{@health}, and speed #{@speed}"
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
        
        def self.fightlog
           @@fightlog  
        end
        
        def crustacean_altercation(enemy)
        until self.health == 0 || enemy.health == 0
         if self.speed <= enemy.speed
            self.health=(self.health - enemy.attack)
            enemy.health=(enemy.health - self.attack)
             if self.health < 0
             self.health=(0)
             end
             if enemy.health < 0
             enemy.health=(0)
             end
             @@fightlog.push("After the attack, you're left with #{self.health} health and your enemy is left with #{enemy.health} health")
         elsif self.speed > enemy.speed
            enemy.health=(enemy.health - self.attack)
            self.health=(self.health - enemy.attack)
             if self.health < 0
             self.health=(0)
             end
             if enemy.health < 0
             enemy.health=(0)
             end
            @@fightlog.push("After the attack, you're left with #{self.health} health and #{enemy.name} is left with #{enemy.health} health")
         end
         puts @@fightlog
        end #until
        end #method crustacean_altercation
end #class 
