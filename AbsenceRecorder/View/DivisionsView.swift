//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Harry Sibson on 01/02/2022.
//

import SwiftUI

struct DivisionsView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)){
                    DivisionItem(division:division)
                }
                
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action:{ currentDate = currentDate.previousDay()}){
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action:{ currentDate = currentDate.nextDay()}){
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView(divisions: Division.examples)
    }
}
