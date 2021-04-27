//
//  ApiRouter.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//  

//import Foundation
//import Alamofire
//
///You can Create specific ApiRouter (ex: User) each one needs to conform ApiRouterProtocol
//enum ApiRouter: ApiRouterProtocol {
//
//    // MARK: - Endpoints
//    case getToken
//
//    var path: String {
//        switch self {
//        case .getToken:
//            return "/getToken"
//        }
//    }
//
//    var parameters: Parameters? {
//        switch self {
//        case .getToken:
//            return nil
//        }
//    }
//
//    var method: HTTPMethod {
//        switch self {
//        case .getToken:
//            return .get
//        }
//    }
//
//    func asURLRequest() throws -> URLRequest {
//        //baseURL on this sample baseUrl is in project Build Settings
//        guard let baseUrl =
//            try (Bundle.main.object(forInfoDictionaryKey: "baseUrl") as? String)?.asURL() else {
//                throw AlamoError.invalidURL
//        }
//
//        var urlRequest = URLRequest(url: baseUrl.appendingPathComponent(path))
//
//        urlRequest.httpMethod = method.rawValue
//
//        //Request header
//        urlRequest.setValue(ContentType.json.rawValue,
//                                forHTTPHeaderField: HttpHeaderField.acceptType.rawValue)
//        urlRequest.setValue(ContentType.json.rawValue,
//                                forHTTPHeaderField: HttpHeaderField.contentType.rawValue)
//
//        // parameter enconding
//        let enconding: ParameterEncoding = {
//            return URLEncoding.default
//        }()
//
//        return try enconding.encode(urlRequest, with: parameters)
//    }
//}
