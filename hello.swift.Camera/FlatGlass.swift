//
//  Glass.swift
//  hello.swift.Camera
//
//  Created by Naohiro OHTA on Jun5,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit

class FlatGlass: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    // MARK: -

    let myDelegate = Delegate_of_ImagePickerController()

    @IBAction func cameraButtonDidTouchUp(sender: UIButton) {
        var picker = UIImagePickerController()
        let camera = UIImagePickerControllerSourceType.Camera
        if UIImagePickerController.isSourceTypeAvailable(camera) {
            picker.sourceType = camera
            myDelegate.imageView = myImageView
            picker.delegate = myDelegate
            presentViewController(picker, animated: true, completion: nil)
        }

    }


}
