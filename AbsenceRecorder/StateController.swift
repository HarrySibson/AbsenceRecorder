//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Harry Sibson on 06/02/2022.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions: [Division] = []
    
    init(){
        loadFromeFile()
    }
    
    func loadFromeFile(){
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json"){
            divisions = loaded
        }
    }
    
    func saveToFile(){
        FileManager.default.save(to: "divisions.json", object: divisions)
    }
}
