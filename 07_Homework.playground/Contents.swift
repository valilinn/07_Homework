import UIKit

print("1.")
//1. Сделать Класс Собаки с именем и функцией лая (компьютерные собаки лаят в print). Имя можно дать только при рождении, после чего изменить его нельзя, так же приватно должен храниться возраст, который изменяется функцией happyBirthday и должна быть функция печатающая информацию о собаке (Имя и возраст)

//1. Make a Dog Class with a name and bark function (computer dogs bark in print). The name can only be given at birth, after which it cannot be changed, the age must also be stored privately, which is changed by the happyBirthday function, and there must be a function that prints information about the dog (Name and age)
class Dog {
    private var name: String
    private var age: Int
    
    func dogBarking() {
        print("WOOF! WOOF!")
    }
    
    func happyBirthday(age: Int) {
        self.age = age
    }
    func dogInfo() {
        print("The dog's name is \(name) and he is \(age) years old.")
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let barsik = Dog(name: "Barsik", age: 7)
barsik.dogInfo()
barsik.happyBirthday(age: 9)
barsik.dogInfo()
barsik.dogBarking()




print("\n")
print("2.")
//2. Создать структуру кота. У котов как мы знаем бывает 9 жизней, так что вместо возраста мы будем приватно хранить количество оставшихся жизней. Кошки не самые аккуратные питомцы и часто попадают в передряги, теряя свои жизни (too bad so sad), в функции передряги кот должен терять жизнь. В информации о коте должно выводиться просто имя или Rest In Peace <Имя>, если кот отправился в лучший из миров.
//(Можете проявить креативность и сделать функцию ласкания кошки при вызове которой она будет мурчать, или, например, мяукать в каждой передряге)"

//2. 2. Create the structure of the cat. Cats, as we know, have 9 lives, so instead of age, we will privately store the number of lives remaining. Cats are not the neatest pets and often get into trouble, losing their lives (too bad so sad), in the function of trouble, the cat must lose a life. The cat information should show just the name, or Rest In Peace <name> if the cat went to the best of all possible worlds.
//(You can get creative and make a cat caress function that will purr when called, or, for example, meow in every trouble)"

struct Cat {
    private var name: String
    private var numberOfLives: Int = 9
    
    mutating func trouble() {
        switch numberOfLives {
        case 2...9:
            numberOfLives -= 1
            meow()
        case 1:
            numberOfLives -= 1
            meow()
            print("\(name) died")
        default:
            print("\(name) in heaven")
        }
    }

    func meow() {
        print("MEOW")
    }
    
    func catInfo() {
        if numberOfLives > 0 {
            print("The cat's name is \(name)")
        } else {
            print("Rest In Peace, \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

var timosha = Cat(name: "Timosha")
timosha.catInfo()
timosha.trouble()
timosha.meow()

