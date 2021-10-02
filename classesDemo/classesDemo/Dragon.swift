class Dragon: Enemy {
    var wingspan = 2
    
    func talk(speech : String){
        print("Dragon: \(speech)")
    }
    override func move() {
        print("Flies towards you")
    }
    override func attack() {
        super.attack()
        print("Spits fire, burns your panties")
    }
}
