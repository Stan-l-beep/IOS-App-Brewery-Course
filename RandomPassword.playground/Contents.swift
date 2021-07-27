func exercise() {
    
    
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    
    var password = "";

    for _ in 0 ..< 6 {
        password = password + alphabet[Int.random(in:0...25)]
    }
    
    print(password)
    
    
}
exercise()
