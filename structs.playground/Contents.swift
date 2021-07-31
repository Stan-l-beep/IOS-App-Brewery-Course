struct Town {
    let name = "The Netherlands"
    var citizens = ["Stan", "Nikoleta"]
    var resourses = ["Grain": 100, "Ore":30, "Wool":55]
    
    func Fortify(){
        print("Defcon 1")
    }
    
}


var myTown = Town()

print("\(myTown.name) has \(myTown.resourses["Grain"]!) bags of grain.")


myTown.citizens.append("Rostislav")
print(myTown.citizens.count)
myTown.Fortify()


