# CoffeeScript does not protect from unintended variable hoisting in this
# case.

isWinner = (player, others)->
  highest = 0
  for player in others # WRONG: overwrites the player function parameter
    if(player.score > highest)
      highest = player.score

  player.score > highest

player = { name: "Abe", score: 10}
others = [
  { name: "Bob",    score: 2 },
  { name: "Carter", score: 3 },
]

console.log "isWinner? #{isWinner(player, others)}"
