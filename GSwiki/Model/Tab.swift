//
//  Tab.swift
//  GSwiki
//
//  Created by 박성민 on 8/28/24.
//

import Foundation

enum Tab: String , CaseIterable { // CaseIterable : .allcase를 사용하기 위해
    case student = "학생"
    case teacher = "선생님"
    case issue = "사건/사고"
    case club = "동아리"
}
