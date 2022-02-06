//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Harry Sibson on 06/02/2022.
//

import Foundation

class StateController: ObservableObject{
    @Published var divisions: [Division]
    
    init(){
        divisions = Division.examples
    }
    
}
