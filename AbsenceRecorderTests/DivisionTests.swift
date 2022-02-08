//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Harry Sibson on 08/02/2022.
//

import XCTest
@testable import AbsenceRecorder

class DivisionTests: XCTestCase {

    func testGetAbsenceForADivsionWithAbsenceOnThatDayReturnsAbsence() throws {
        
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateTomorrow = Date(timeIntervalSinceNow: 86400)
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        
        let actual = division.getAbsence(for: dateLaterToday)
        XCTAssertNotNil(actual)
        if let actualNotNil = actual{
            XCTAssertEqual(actualNotNil.takenOn,absence2.takenOn)
        }
        
    }


}
