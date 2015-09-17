
local Player=require("app.scenes.Enemy")
   
local MyScene = class("MyScene", function ()  
    return display.newScene("MyScene")  
end)  
   local bone
   --xiugaigaigaigiagiaigiagiai
function MyScene:ctor()   
     sprite=ccs.ArmatureDataManager:getInstance():addArmatureFileInfo("zhaoyun.ExportJson")
     sprite = ccs.Armature:create("zhaoyun")
     sprite:pos(300,300)
    
     self:addChild(sprite)

     local a=sprite:getShapeList()
     

     print(a:getBoundingBox())
     local skin1 = ccs. Skin:create("skin/goldenCloak/pifeng7.png")

           -- 获取到装备的骨骼, 并添加新的显示
     bone = sprite:getBone("披风"):addDisplay(skin1, 1)
      sprite:getAnimation():play("跑步")
     transition.moveTo(sprite, {x = sprite:getPositionX()+200, y = sprite:getPositionY(), time =0.1})
    print(bone:getPositionX())
       --schedule_collision=scheduler.scheduleUpdateGlobal(handler(self, self.update),0.1)   
 
end  
   
   function MyScene:update(dt)
    transition.moveTo(sprite, {x = sprite:getPositionX()+2, y = sprite:getPositionY(), time =0.1})
   	print(bone:getPositionX())
   end
return MyScene
