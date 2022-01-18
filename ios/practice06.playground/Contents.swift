import UIKit

// Enumerations

// enum
// 타입분류

// 도서관 -> 항목 -> 소설, 문제집, 패션, 만화책

// 분류만 하고 싶다. + 값
enum BookType {
    case fiction(title: String, price: Int, year: Int)
    case comics(title: String, price: Int, year: Int)
    case workbook(title: String, price: Int, year: Int)
    // ......
}

extension BookType {
    var typeName: String {
        switch self {
        case .comics:
            return "comics"
        case .fiction:
            return "fiction"
        case .workbook:
            return "workbook"
        }
    }
}

var bookStyle : BookType?

var books = [BookType]()

func saveBook(book : BookType) {
    //    if book == .comics {
    //        // 저장...
    //    }
    //    else if book == .fiction {
    //
    //    }
    //
    //    switch book {
    //    case .comics:
    //        books.append(book)
    //    case .fiction:
    //        books.append(book)
    //    default:
    //        books.append(book)
    //    }
    books.append(book)
}

//func loadBook(book: BookType) -> [BookType] {
//    var tempBooks = [BookType]()
//
//    for item in books {
//        if item == book {
//            tempBooks.append(item)
//        }
//    }
//    return tempBooks
//}

saveBook(book: .comics(title: "aaa", price: 5000, year: 2020))
saveBook(book: .comics(title: "bbb", price: 6000, year: 2021))
saveBook(book: .comics(title: "ccc", price: 7000, year: 2022))

saveBook(book: .fiction(title: "ddd", price: 8000, year: 2010))
saveBook(book: .fiction(title: "eee", price: 9000, year: 2011))
saveBook(book: .fiction(title: "fff", price: 10000, year: 2012))

saveBook(book: .workbook(title: "ggg", price: 11000, year: 2000))
saveBook(book: .workbook(title: "hhh", price: 12000, year: 2001))
saveBook(book: .workbook(title: "iii", price: 13000, year: 2002))

for book in books {
    
    if case let BookType.comics(title, price, year) = book {
        print(book.typeName,title,price,year)
    }
    if case let BookType.fiction(title, price, year) = book {
        print(book.typeName,title,price,year)
    }
    if case let BookType.workbook(title, price, year) = book {
        print(book.typeName,title,price,year)
    }
    
    //    switch book {
    //    case let .comics(_, price, _):
    //        print(price)
    //    case let .fiction(title, _, _):
    //        print(title)
    //    default:
    //        break
    //    }
}

books

//loadBook(book: .workbook)
