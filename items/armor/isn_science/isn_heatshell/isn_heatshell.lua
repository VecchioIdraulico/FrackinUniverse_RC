function init()
  effect.addStatModifierGroup({
    {stat = "lavaImmunity", amount = 1},
    {stat = "fireImmunity", amount = 1},
	{stat = "biomecoldImmunity", amount = 1},
	{stat = "biomeheatImmunity", amount = 1}
  })
  script.setUpdateDelta(0)
end

function update(dt)
end

function uninit()
end