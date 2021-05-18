//
//  BaseApi.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//

//import Foundation
//import Alamofire
//import RxSwift
//
//class BaseApi {
//
//    static func request<T: Codable>(urlConvertile: URLRequestConvertible) -> Observable<T> {
//        return Observable<T>.create { emitter in
//            let request = AF.request(urlConvertile).responseData(completionHandler: { data in
//
//                switch data.response?.statusCode {
//                case 200:
//                    switch data.result {
//                    case .success(let dataValue):
//                        printSuccessData(
//                            url: urlConvertile.urlRequest?.url?.absoluteString ?? "",
//                            data: dataValue)
//                        do {
//                            let decoder = JSONDecoder()
//                            let parsedDataToModel = try decoder.decode(T.self, from: dataValue)
//
//                            emitter.onNext(parsedDataToModel)
//                            emitter.onCompleted()
//
//                        } catch let error {
//                            emitter.onError(error)
//                        }
//                    case .failure(let error):
//                        emitter.onError(error)
//                    }
//
//                case 400:
//                    emitter.onError(AlamoError.badRequest(description: "bad request"))
//                case 403:
//                    emitter.onError(AlamoError.forbidden)
//                case 404:
//                    emitter.onError(AlamoError.notFound)
//                default:
//                    emitter.onError(AlamoError.unknown)
//                }
//            })
//            return Disposables.create {
//                request.cancel()
//            }
//        }
//    }
//
//    static func request(urlConvertile: URLRequestConvertible) -> Observable<String> {
//        return Observable<String>.create { emitter in
//            let request = AF.request(urlConvertile).validate().responseData { data in
//                switch data.response?.statusCode {
//                case 200:
//                    switch data.result {
//                    case .success(let dataValue):
//                        printSuccessData(
//                            url: urlConvertile.urlRequest?.url?.absoluteString ?? "",
//                            data: dataValue)
//                        emitter.onNext(String(decoding: dataValue, as: UTF8.self))
//                        emitter.onCompleted()
//                    case .failure(let error):
//                        emitter.onError(error)
//                    }
//                case 400:
//                    emitter.onError(AlamoError.badRequest(description: "bad request"))
//                case 403:
//                    emitter.onError(AlamoError.forbidden)
//                case 404:
//                    emitter.onError(AlamoError.notFound)
//                default:
//                    emitter.onError(AlamoError.unknown)
//                }
//            }
//            return Disposables.create {
//                request.cancel()
//            }
//        }
//    }
//
//    static func printSuccessData(url: String, data: Data) {
//        #if DEBUG
//        let successString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
//        print("=====================🚀Start API call🚀=======================")
//        print("Request to: \(url)")
//        print(successString ?? "")
//        print("=====================🚀End API call🚀=========================")
//        #endif
//    }
//}
