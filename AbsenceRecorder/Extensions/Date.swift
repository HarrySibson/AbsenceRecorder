//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Harry Sibson on 02/02/2022.
//

import Foundation

extension Date {
    func getShortDate () -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
    
    func previousDay() -> Date{
        return Calendar.current.date(byAdding:.day,value:-1,to: self) ?? Date ()
    }
    func nextDay() -> Date{
        return Calendar.current.date(byAdding:.day,value:1,to: self) ?? Date ()
    }
}
