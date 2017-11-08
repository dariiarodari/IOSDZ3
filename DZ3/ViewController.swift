//
//  ViewController.swift
//  DZ3
//
//  Created by Dariia Rodari on 11/8/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("String Easy: Задание 1.")
        print(calculateMyName(Name: myName))
        print("==================")

        print("String Easy: Задание 2.")
        print(generateUserName(firstName: "Dariia", lastName: "Rodionova"))
        print("==================")

        print("String Easy: Задание 3.")
        print(checkMySex(fullName: "Дария Тихоновна"))
        print("==================")

        print("Collections Easy: Задание 1.")
        isArrayEmptyYet()
        print("==================")

        print("Collections Easy: Задание 2.")
        addTwoArrays()
        print("==================")

        print("Collections Easy: Задание 3")
        printMyStrings(anyArray: arrayWithStrings)

        print("==================")
        print("Collections Easy: Задание 4.")
        returnEdgeValues(oneMoreArray: anotherArrayWithStrings)

        print("==================")
        print("Collections Easy: Задание 5.")
        addNewName()

        print("==================")
        print("Collections Easy: Задание 6.")
        print(modifyDictionary(anyDictionary: alphabeticDictionary, keyName: "b"))

        print("==================")
        print("String Hard: Задание 1.")

        print("==================")
        print("String Hard: Задание 1.")

        print("==================")
        print("String Hard: Задание 2.")

        print("==================")
        print("String Hard: Задание 3.")

        print("==================")
        print("String Hard: Задание 4.")

        print("==================")
        print("Collections Hard: Задание 1.")

        print("==================")
        print("Collections Hard: Задание 2.")

        print("==================")
        print("Collections Hard: Задание 3.")

        print("==================")
        print("Collections Hard: Задание 4.")
    }

    //  String Easy: Задание 1. Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль

    let myName = "Dariia"
    func calculateMyName(Name: String) -> Int {
        let lettersInName = Int(Name.count)
        return lettersInName
    }

    //  String Easy: Задание 2. Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”

    func generateUserName(firstName: String, lastName: String) -> String {
        let username = firstName.lowercased() + "_" + lastName.lowercased()
        return username
    }

    //  String Easy: Задание 3. Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд. Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его

    let myFullName = "Дария Тихоновна"
    func checkMySex(fullName: String) -> String {
        let sex: String
        if fullName.hasSuffix("ич") || fullName.hasSuffix("ИЧ") || fullName.hasSuffix("Ич"){
            sex = "Man"
        } else if fullName.hasSuffix("на") || fullName.hasSuffix("НА") || fullName.hasSuffix("На"){
            sex = "Woman"
        } else {
            sex = "?"
        }
        return sex
    }

    //  Collections Easy: Задание 1.Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.

    func isArrayEmptyYet() {
        var myArray = [1, 2, 3, 4, 5]
        myArray.removeAll()
        print(myArray.count)
    }

    //  Collections Easy: Задание 2.Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.

    func addTwoArrays(){
        let firatArray = [1,2,3]
        let secondArray = [4,5,6]
        let allTogather = firatArray + secondArray
        print(allTogather)
    }

    //  Collections Easy: Задание 3. Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)

    let arrayWithStrings = ["One", "Two", "Three"]

    func printMyStrings(anyArray: Array<String>) {
        anyArray.forEach {
            word in
            print(word)
        }
    }

    //  Collections Easy: Задание 4.Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром

    let anotherArrayWithStrings = ["Seven", "Eight", "Nine"]

    func returnEdgeValues(oneMoreArray: Array<String>) {
        let newArray = [oneMoreArray.first, oneMoreArray.last]
        print(newArray)
    }

    //  Collections Easy: Задание 5.Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Добавить в данный словарь еще 2 новых элемента.

    func addNewName() {
        var ageAndName = [10: "Anna", 20: "Svitlana", 30: "Tatiana"]
        ageAndName[40] = "Ivan"
        ageAndName[50] = "Oleg"
        print(ageAndName)
    }

    //  Collections Easy: Задание 6. Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент). Например: передаваемый словарь будет такой: ["Max": 1, "Dasha": 2, "Sergey": 3] И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".

    let alphabeticDictionary = ["a":1, "b":2, "c":3]

    func modifyDictionary(anyDictionary: Dictionary<String, Int>, keyName: String ) -> Dictionary<String, Int> {
        var dictionatyTransformer = anyDictionary
        dictionatyTransformer.removeValue(forKey: keyName)
        return dictionatyTransformer
    }

    //  String Hard: Задание 1. Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,  где они будут разделены пробелом. input = “TungFam”, output = “Tung Fam". Сложность задачи в том, что имя может быть любое. Например: Введя “ArtemPigor” должно вернуть “Artem Pigor”. Введя “AnnaSecure” должно вернуть “Anna Secure”. Введя “BlaCar” должно вернуть “Bla Car”. То есть алгоритм разбивает два слова которые начинаются на большую букву

    //  String Hard: Задание 2. Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)

    //  String Hard: Задание 3. добавить запятые в строку как их расставляет калькулятор 1234567 -> 1,234,567, 12345 -> 12,345 (не использовать встроенный метод для применения формата)

    //  String Hard: Задание 4. проверить пароль на надежность от 1 до 5. a) если пароль содержит числа +1. b) символы верхнего регистра +1. c) символы нижнего регистра +1. d) спец символы +1. e) если длина пароля 8 или более символов +1. пример: 123456 - 1 a); qwertyui - 1 c); 12345qwerty - 2 a) c); 32556reWDr - 3 a) b) c)

    //  Collections Hard: Задание 1. Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк). например массив let array = [“one”, “two”] и если передать в этот метод “one“ то должно вернуть true а если передать “three” то должно вернуть false

    //  Collections Hard: Задание 2. метод который выведет все ключи словаря; метод который выведет все значения словаря

    //  Collections Hard: Задание 3. ортировка массива не встроенным методом по возрастанию + удалить дубликаты. Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36]. Результат должен быть [1, 2, 3, 6, 13, 36, 77]

    //  Collections Hard: Задание 4. Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными. Их мы будем передавать в метод, который напишем. Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

