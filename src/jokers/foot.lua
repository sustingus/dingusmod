SMODS.Joker {
key = 'foot',
atlas = 'pooters',
pos = {
    x = 0,
    y = 0
},
config = {
    extra = {
        chips = 50
    }
},
rarity = 1,
cost = 3,
lock_vars = function(self, infoqueue, card)
return {
    vars = {
        card.ability.extra.chips
    }
}
end,
calculate = function(self, card, context)
if context.joker_main then
    return{
        chip = card.ability.extra.chips
    }
end
end
}