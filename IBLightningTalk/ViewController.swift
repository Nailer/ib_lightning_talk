//
//  ViewController.swift
//  IBLightningTalk
//
//  Created by Andreas on 01/11/16.
//  Copyright © 2016 Andreas Petrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var dudeView: IBDudeView!
    private var dudeAnimator: IBDudeAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dudeAnimator = IBDudeAnimator(view: self.dudeView,
                                           model: IBDudeAnimatedDudeModel(animationBlock: { (phase) -> IBDudeModel in
                                            return IBDudeDefaultModel(leftEyeState: .squint(.left, phase),
                                                               rightEyeState: .squint(.right, phase),
                                                               handStates: [
                                                                .resisting(.left),
                                                                .resisting(.right),
                                                                ],
                                                               mouthState: .frown(phase))
                                           }),
                                           idleFrameUpdateInterval: 0.1)
        
        self.dudeAnimator.start()
    }
}

