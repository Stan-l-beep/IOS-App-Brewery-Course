let enemy = Enemy(health: 10, attackStrength: 5)
let enemy2 = Enemy(health: 10, attackStrength: 5)
print(enemy2.health)
enemy.takeDmg(amount: 2)
print(enemy2.health)
