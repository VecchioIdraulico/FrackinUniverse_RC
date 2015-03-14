function init()
healP = effect.configParameter("healPercent", 0) -- Heal percent is the configParameter in the json statuseffects file
self.healingRate = (status.resourceMax("energy") * healP) / effect.duration()
  script.setUpdateDelta(5)

  self.tickDamagePercentage = 0.005
  self.tickTime = 0.80
  self.tickTimer = self.tickTime
end


function update(dt)
  status.modifyResource("energy", self.healingRate * dt)
  effect.setParentDirectives("fade=005500="..self.tickTimer * 0.4)
end

function uninit()
  
end



