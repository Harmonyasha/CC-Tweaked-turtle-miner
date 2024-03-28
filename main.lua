--turtle
cycle = 0
function autorefuel()
for i = 1,16 do 
    turtle.select(i)
    item = turtle.getItemDetail()
    if item and (item.name == "minecraft:coal" or string.find(item.name,"_planks") ) then
        turtle.refuel()
        --break
    end
end
end
 
 




while true do 
    
    if cycle == 5 then
        for i = 1,16 do 
            turtle.select(i)
            item = turtle.getItemDetail()
            if item and not (string.find(item.name,"raw_") or string.find(item.name,"_ore") or string.find(item.name,"coal") or string.find(item.name,"diamond") or string.find(item.name,"_planks")) then
                turtle.drop()
            end
        end 
        cycle = 0
    end
    if turtle.getFuelLevel() < 50 then
        autorefuel()
    end


    if turtle.detect() then
        cycle = cycle+1
        turtle.dig()
        turtle.forward()

        turtle.turnLeft()
        turtle.digUp()
        turtle.digDown()

        turtle.dig()
        turtle.forward()

        
        turtle.digUp()
        turtle.digDown()

        turtle.dig()
        turtle.forward()

        turtle.digUp()
        turtle.digDown()

        turtle.turnRight()
        if turtle.detect() then
            turtle.dig()
            turtle.forward()

            turtle.turnRight()
            turtle.digUp()
            turtle.digDown()

            turtle.dig()
            turtle.forward()
            turtle.digUp()
            turtle.digDown()

            turtle.dig()
            turtle.forward()
            turtle.digUp()
            turtle.digDown()
            
            turtle.turnLeft()
            else
                turtle.turnRight()
                turtle.forward()
                turtle.forward()
                turtle.turnLeft()
        end

    else
        turtle.forward()
    end
    
    
end
