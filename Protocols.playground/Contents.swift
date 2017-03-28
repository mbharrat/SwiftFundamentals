//label rows
func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0 ..< amount {
        paddingString += " "
    }
    return paddingString
}
//protocol allows you to define interface you wish to satisfy
//similar to structs or classes except all computed property and function definitions are ommited

//*************************************************************************
//TabularDataSource protocol calls for two prop that must be there
//numberOfRows and numberOfColumns
//PROTOCOL INHERITANCE
//  protocol that inherits from another protocol required conforming types to provide implementations for all prop and methods required by both itself and the protocol it inherits from
//*************************************************************************

protocol TabularDataSource{
    var numberOfRows: Int { get }   //signifies properties can be read
    var numberOfColumns: Int { get } //if you want read/write then it should be { get set }
    
    func labelForRow(row: Int) -> String
    func labelForColumn(column: Int) -> String
    
    func itemForRow(row: Int, column: Int) -> String
}

func printTable(dataSource: protocol<TabularDataSource, CustomStringConvertible>) {
    //protocol composition allows you to state that a type must conform to multiple 
    //protocols
        print("Table: \(dataSource.description)")
        //create arrays of the row and column labels
    let rowLabels = (0 ..< dataSource.numberOfRows).map { dataSource.labelForRow($0) }
    let columnLabels = (0 ..< dataSource.numberOfColumns).map {
            dataSource.labelForColumn($0)
    }
        
        //create array of width of each row label
    let rowLabelWidths = rowLabels.map { $0.characters.count}
    
    //rowLabels.map creates new array containing width of each label
    
    //determine length of longest row label
    guard let maxRowLabelWidth = rowLabelWidths.maxElement() else {
        return
    }
    //safely unwrap .maxElement optional
    
    //*************************************************************************
    //LETS LABEL COLUMNS NOW
    //*************************************************************************
    
    //create first row containing column headers
    var firstRow: String = ""
    maxRowLabelWidth
    
    //also keep track of width of each column
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) " + padding(maxRowLabelWidth) + " |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.characters.count)
       // print(columnLabel)
    }
    print(firstRow)
    
    
    
    for i in 0 ..< dataSource.numberOfRows {
        
        //pad the row label out so they are all the same length
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(paddingAmount) + " |"
    
    
    //append each item in this row to our string
        for j in 0 ..< dataSource.numberOfColumns {
            
            let item = dataSource.itemForRow(i, column: j)
            let itemString = " \(item) |"
            columnWidths[j]
            itemString.characters.count
            if columnWidths[j] < itemString.characters.count {
                out += itemString
            }else{
                let paddingAmount = columnWidths[j] - itemString.characters.count
                out += padding(paddingAmount) + itemString
            }
            
            out
        }
        //done print now
        print(out)
    }
    
}

//lets run a test of this new function


//hard to use
/*
struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}
struct Department: TabularDataSource, CustomStringConvertible {
    let name: String
    //empty array of struct Person
    var people = [Person]()
    
    var description: String {
        return "Department (\(name))"
    }
    
    init(name: String){
        self.name = name
    }
    mutating func addPerson(person: Person){
        people.append(person)
    }
    var numberOfRows: Int {
        return people.count
    }
    var numberOfColumns: Int {
        return 2
    }
    func labelForRow(row: Int) -> String {
        return people[row].name
    }
    func labelForColumn(column: Int) -> String {
        switch column {
        case 0: return "Age"
        case 1: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    func itemForRow(row: Int, column: Int) -> Int {
        let person = people[row]
        switch column{
        case 0: return person.age
        case 1: return person.yearsOfExperience
        default: fatalError("Invalid column!")
        }
    }
}
var department = Department(name: "Engineering")
department.addPerson(Person(name: "Joe", age: 30, yearsOfExperience: 100000000))
department.addPerson(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.addPerson(Person(name: "Fred", age: 50, yearsOfExperience: 20))

printTable(department)
*/

struct Book {
    let title: String
    let author: String
    let averageReviews: String
}
struct BookCollection: TabularDataSource, CustomStringConvertible {
    let name: String
    var books = [Book]()
    
    init(name: String){
        self.name = name
    }
    var description: String {
        return "BookCollection on (\(name))"
    }
    mutating func addBook(book: Book){
        books.append(book)
    }
    var numberOfRows: Int{
        return books.count
    }
    var numberOfColumns: Int{
        return 3
    }
    func labelForRow(row: Int) -> String {
        return books[row].title
    }
    func labelForColumn(column: Int) -> String {
        switch column{
        case 0: return "Title"
        case 1: return "Author"
        case 2: return "Average Reviews"
        default: fatalError("no such column!")
        }
    }
    func itemForRow(row: Int, column: Int) -> String {
        let book = books[row]
        switch column{
        case 0: return book.title
        case 1: return book.author
        case 2: return book.averageReviews
        default: fatalError("no such column!")
        }
    }
}

var bookStore = BookCollection(name: "Amazon")
bookStore.addBook(Book(title: "Harry Potter", author: "JK Rowling", averageReviews: "Great"))
bookStore.addBook(Book(title: "Fifty Shades of Gray", author: "Who Cares", averageReviews: "Terrible"))
bookStore.addBook(Book(title: "Green Eggs and Ham", author: "Dr.Seuss", averageReviews: "Good"))

printTable(bookStore)
 









