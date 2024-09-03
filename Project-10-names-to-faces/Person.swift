//
//  Person.swift
//  Project-10-names-to-faces
//
//  Created by Kevin Cuadros on 28/08/24.
//

import UIKit

class Person: NSObject, NSSecureCoding {
    
    static var supportsSecureCoding: Bool =  true
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    // init method called with NSKeyedUnarchiver
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
}
