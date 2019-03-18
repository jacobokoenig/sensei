////
////  DataExtension.swift
////  My_SmartBottle
////
////  Created by Jacobo Koenig on 1/29/19.
////  Copyright © 2019 Binary Mango. All rights reserved.
////
//
import Foundation
//
extension Data {

//    var uint8: UInt8 {
//        get {
//            var number: UInt8 = 0
//            self.getBytes(&number, length: sizeof(UInt8))
//            return number
//        }
//    }
//    
//    var uint16: UInt16 {
//        get {
//            var number: UInt16 = 0
//            self.getBytes(&number, length: sizeof(UInt16))
//            return number
//        }
//    }
//    
//    var uint32: UInt32 {
//        get {
//            var number: UInt32 = 0
//            self.getBytes(&number, length: sizeof(UInt32))
//            return number
//        }
//    }
//    
//    var uuid: NSUUID? {
//        get {
//            var bytes = [UInt8](count: self.length, repeatedValue: 0)
//            self.getBytes(&bytes, length: self.length * sizeof(UInt8))
//            return NSUUID(UUIDBytes: bytes)
//        }
//    }

    var ascii: String? {
        get {
            return String(data: self, encoding: String.Encoding.ascii) as String?
        }
    }

//    var stringUTF8: String? {
//        get {
//            return NSString(data: self, encoding: NSUTF8StringEncoding) as String?
//        }
//    }
    
}
