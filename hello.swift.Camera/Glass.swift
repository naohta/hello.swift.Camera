//
//  Glass.swift
//  hello.swift.Camera
//
//  Created by Naohiro OHTA on Jun5,2015.
//  Copyright (c) 2015 Naohiro OHTA. All rights reserved.
//

import UIKit

class Glass: UIViewController {

    let delegate = PickerDelegate()
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cameraButtonDidTouchUp(sender: UIButton) {
        var picker = UIImagePickerController()
        let camera = UIImagePickerControllerSourceType.Camera
        if UIImagePickerController.isSourceTypeAvailable(camera) {
            picker.sourceType = camera
            delegate.imageView = imageView
            picker.delegate = delegate
            presentViewController(picker, animated: true, completion: nil)
        }

    }


}
