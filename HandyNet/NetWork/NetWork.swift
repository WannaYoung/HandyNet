//
//  Network.swift
//  HandyNet
//
//  Created by yang on 2017/10/11.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit
import Networking
import HandyJSON

class NetWork: NSObject {
    
    static let share = NetWork()
    private override init(){ }
    
    //MARK: - get方法
    func getDataWith<T: HandyJSON>(homeUrl: String = GETHOME, path: String, parama: [String: String], successHandler: @escaping (T) -> Swift.Void, failureHandler: ((NSError) -> Swift.Void)? = nil) {
        let networking = Networking(baseURL: homeUrl)
        networking.get(path, parameters: parama) { (result) in
            switch result {
            case .success(let successResponse):
                if let getData = T.deserialize(from: successResponse.dictionaryBody) {
                    successHandler(getData)
                }
                break
            case .failure(let failureResponse):
                failureHandler?(failureResponse.error)
                break
            }
        }
    }
    
    //MARK: - post方法
    func postDataWith(baseUrl: String = "", path: String = "", parama: [String: String] = [:], header: [String: String] = [:]) {
        let networking = Networking(baseURL: baseUrl)
        networking.headerFields = header
        networking.get(path, parameters: parama) { (result) in
            switch result {
            case .success(let successResponse):
                print(successResponse.json)
                break
            case .failure(let failureResponse):
                print(failureResponse.error)
                break
            }
        }
    }
    
    //MARK: - 上传图片(待测)
    func uploadImageWith(baseUrl: String = "", path: String = "", uploadImage: UIImage, parama: [String: String] = [:], header: [String: String] = [:]) {
        let networking = Networking(baseURL: baseUrl)
        let imageData = UIImagePNGRepresentation(uploadImage)
        let imagePart = FormDataPart(data: imageData!, parameterName: "Filedata")
        networking.post(path, parameters: parama, parts: [imagePart]) { (result) in
            switch result {
            case .success(let successResponse):
                print(successResponse.headers)
                break
            case .failure(let failureResponse):
                print(failureResponse.error)
                break
            }
        }
    }
    
}
