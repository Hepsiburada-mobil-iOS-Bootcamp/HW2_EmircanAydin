//
//  CameraPermissionManager.swift
//  PermissionProject
//
//  Created by Emircan Aydın on 2.10.2021.
//

import Foundation
import Combine
import AVFoundation

public typealias VoidBlock = () -> Void

class CameraPermissionManager: CameraPermissionProtocol {

    func checkPermission() -> Bool {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            return true
        default:
            return false
        }
    }
    
    func requestPermission(completion: @escaping VoidBlock) {
        print("\(#function) : CameraPermissionManager")
        AVCaptureDevice.requestAccess(for: .video) { granted in
            print("CAMERA PERMISSION GRANTED : \(granted)")
            completion()
        }
    }
    
    func getPermissionRequestViewData(with pozitifCompletion: @escaping VoidBlock, with negativeCompletion: @escaping VoidBlock) -> PermissionRequestViewData {
        return PermissionRequestViewData(image: PermissionImages.camera.value, infoViewData: InfoViewData(title: "Camera Permission", subTitle: "Would you please give us permission to use camera."), actionComponentData: ActionComponentData(positifButton: ActionButtonViewData(title: "OK", type: .filled(.smooth)).setActionListener(by: pozitifCompletion), negativeButton: ActionButtonViewData(title: "NOT NOW", type: .outlined(.smooth)).setActionListener(by: negativeCompletion)))
    }

}
