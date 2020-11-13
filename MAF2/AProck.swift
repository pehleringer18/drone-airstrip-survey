//
//  AProck.swift
//  MAF2
//
//  Created by Patrick Ehleringer on 11/9/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class AProck {
    
    func writeToFile() {
        // this will be a pair of coordinates from saved missions
        let coordPair = ""
        let filename = getDocumentsDirectory().appendingPathComponent("output.txt")

        do {
            try coordPair.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
