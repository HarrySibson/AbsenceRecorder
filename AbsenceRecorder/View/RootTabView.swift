//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Harry Sibson on 06/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            DivisionsView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text ("Absences")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "chart.pie")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
