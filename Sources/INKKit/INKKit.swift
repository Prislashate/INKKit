import Foundation
import Alamofire
import HandyJSON

public struct INKPerson {
    public var name = "INK"
    
    public init() {}
    
    public static func test() {
        #if ENABLE_SOMETHING
        print("Define ENABLE_SOMETHING in INKKit.")
        #else
        print("No define ENABLE_SOMETHING in INKKit.")
        #endif
    }
}


