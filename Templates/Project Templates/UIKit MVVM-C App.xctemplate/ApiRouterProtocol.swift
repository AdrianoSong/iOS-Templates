//
//  ApiRouterProtocol.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//  

// import Foundation
// import Alamofire

// protocol ApiRouterProtocol: URLRequestConvertible {
//     var path: String { get }
//     var parameters: Parameters? { get }
//     var method: HTTPMethod { get }

//     func asURLRequest() throws -> URLRequest
// }

// ///The header fields
// enum HttpHeaderField: String {
//     case authentication = "Authorization"
//     case contentType = "Content-Type"
//     case acceptType = "Accept"
//     case acceptEncoding = "Accept-Encoding"
// }

// ///The content type (JSON)
// enum ContentType: String {
//     case json = "application/json"
//     case xml = "application/xml"
// }

//enum AlamoError: Error {
//    case invalidURL
//    case badRequest (description: String)
//    case notFound
//    case forbidden
//    case unknown
//}
