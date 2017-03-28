//: Playground - noun: a place where people can play

import Cocoa

//var statusCode: Int = 404
var statusCode: Int = 418
var errorString: String = "The request failed with the error:"
/*switch statusCode{
case 400:
    errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not found"
default:
    errorString = "None"
}
*/

/*switch statusCode{
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request"
    fallthrough
default:
    errorString += " Please review the request and try again"
}*/

switch statusCode{
case 100,101:
    //errorString += " Informational, 1xx."
    errorString += " Informational, \(statusCode)"

case 204:
    errorString += " Succesful but no content, 204."
   
case 300...307:
    //errorString += " Redirection, 3xx."
    errorString += " Redirection, \(statusCode)"
case 400...416:
    //errorString += " Client error, 4xx."
    errorString += " Client error, \(statusCode)"
case 500...505:
    //errorString += " Server error, 5xx."
    errorString += " Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300)
    || unknownCode > 505:
        errorString = "\(unknownCode) is not a known error code"
/*default:
    errorString = "Unknown. Please review the request and try again"
    */
default:
    errorString = "unexpected error occured"
    
}

/*let error = (statusCode, errorString)
error.0
error.1
*/

let error = (code: statusCode, error: errorString)
error.code
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes{
case(404, 404):
    print("No items found.")
case(404, _):
    print("First item not found")
case(_, 404):
    print("Second item not found")
default:
    print("All items found")
}




//single case switch

let age = 25
/*switch age{
case 18...35:
    print("Cool demographic!")
default:
    break
}

if case 18...35 = age{
    print("Cool demographic")
}
*/

if case 18...35 = age where age >= 21{
    print("In cool demographic and of drinking age")
}

//Bronze challenge

let point = (x: 1, y: 4)

switch point{
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
case (_, 0):
    print("\(point) sits on the x-axis")
case (0, _):
    print("\(point) sits on the y-axis")
default:
    print("case not covered")
}
