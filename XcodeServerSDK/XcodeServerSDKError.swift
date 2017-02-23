//
//  XcodeServerSDKError.swift
//  XcodeServerSDK
//
//  Created by boland on 2/22/17.
//  Copyright © 2017 Honza Dvorsky. All rights reserved.
//

import Foundation

enum XcodeServerSDKError: Error {
    
    case header
    case common(custom: String)
    case wrongBody(custom: String)
    case wrongStatus(custom: String)
    case wrongData(custom: String)
    case permission(custom: String)
    case nilResponse
    case couldntCreate
    case unknown
    case other
    
    var localizedDescription: String {
        var errorDescription = "No headers provided in response"
        switch self {
        case .unknown:
            errorDescription = "Unknown Error occurred"
        case .header:
            errorDescription = "No headers provided in response"
        case let .common(custom):
            errorDescription = custom
        case let .wrongStatus(custom):
            errorDescription = "Wrong status code: \(custom)"
        case let .wrongData(custom):
            errorDescription = "Wrong data returned: \(custom)"
        case let .wrongBody(custom):
            errorDescription = "Wrong body \(custom)"
        case let .permission(custom):
            errorDescription = custom
        case .nilResponse:
            errorDescription = "Nil Response"
        case .couldntCreate:
            errorDescription = "Couldn't create Request"
        default:
           errorDescription = "This is my default error"
        }
        return NSLocalizedString("\(XcodeServerSDKError.self)", tableName: String(describing: self), bundle: Bundle.main, value: errorDescription, comment: "")
        
    }
    
}
