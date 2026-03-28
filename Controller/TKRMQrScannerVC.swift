//
//  TKRMQrScannerVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 26.08.23.
//

import UIKit
import AVFoundation

class TKRMQrScannerVC: UIViewController {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var firstOpaqueView: UIView!
    @IBOutlet weak var secondOpaqueView: UIView!
    @IBOutlet weak var thirdOpaqueView: UIView!
    @IBOutlet weak var fourthOpaqueView: UIView!
    
    var captureSession: AVCaptureSession!
    var previewLayer: AVCaptureVideoPreviewLayer!
    
    override func viewWillAppear(_ animated: Bool) {
        if tabBarController?.tabBar.isHidden == false {
            self.tabBarController?.tabBar.isHidden = true
        }
        
        if (captureSession.isRunning == false) {
            captureSession.startRunning()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
        captureSession = AVCaptureSession()
        
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else { return }
        let videoInput: AVCaptureDeviceInput

        do {
            videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            return
        }
        
        if (captureSession.canAddInput(videoInput)) {
            captureSession.addInput(videoInput)
        } else {
            failed()
            return
        }
        
        let metadataOutput = AVCaptureMetadataOutput()

        if (captureSession.canAddOutput(metadataOutput)) {
            captureSession.addOutput(metadataOutput)
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.qr]
        } else {
            failed()
            return
        }

        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        backView.layer.addSublayer(previewLayer)

        captureSession.startRunning()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        captureSession.stopRunning()
        if tabBarController?.tabBar.isHidden == true {
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    func failed() {
            let ac = UIAlertController(title: "Scanning not supported", message: "Your device does not support scanning a code from an item. Please use a device with a camera.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
            captureSession = nil
        }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 0
    }
}

extension TKRMQrScannerVC: AVCaptureMetadataOutputObjectsDelegate {
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if metadataObjects.count == 0 {
            //implement error of not detecting a qr.
        }
        
        let metaDataObject = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
        
        if metaDataObject.type == AVMetadataObject.ObjectType.qr {
            let barCodeObject = previewLayer?.transformedMetadataObject(for: metaDataObject)
            
            if metaDataObject.stringValue != nil {
                print("item found.")
            }
        }
    }
    
}
