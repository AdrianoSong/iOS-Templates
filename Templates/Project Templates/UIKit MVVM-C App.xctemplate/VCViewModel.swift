//
//  Coordinator.swift
//  ___PROJECTNAME___
//
//  Created by Adriano Song on 4/2/20.
//

import Foundation
//import RxSwift

class VCViewModel {

    func sayHello() -> String {
        return NSLocalizedString("hello.world", comment: "")
    }

    ///Example how to use Api layer
//    func getUser(email: String, password: String) -> Observable<UserElement> {
//        return BaseApi.request(urlConvertile: ApiRouter.getUser(email: email, password: password))
//    }
}