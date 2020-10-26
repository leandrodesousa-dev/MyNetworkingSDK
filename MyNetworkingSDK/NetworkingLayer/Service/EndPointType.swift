//
//  EndPointType.swift
//  MyNetworkingSDK
//
//  Created by Leandro de Sousa Silva on 25/10/20.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethods: HTTPMethods { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
