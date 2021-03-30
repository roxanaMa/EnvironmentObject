//
//  ServiceData.swift
//  Challenge6
//
//  Created by Roxy Mardare on 26.03.2021.
//

import Foundation

class ServiceData {
    
    static func getData () -> [Person]{
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        guard pathString != nil else {
            return [Person]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
        
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let personData = try decoder.decode([Person].self, from: data)
                
                for p in personData {
                    p.id = UUID()
                }
                
                return personData
            }
            catch {
                print(error)
            }
        }
        catch {
            print (error)
        }
        return [Person]()
    }
}
