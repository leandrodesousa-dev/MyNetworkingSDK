//
//  JSONParameterEncoder.swift
//  MyNetworkingSDK
//
//  Created by Leandro de Sousa Silva on 25/10/20.
//

import Foundation

public struct JSONParameterEncode: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetworkingError.encodingFailed
        }
    }
}
