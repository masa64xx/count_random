//
//  ViewController.swift
//  count_tsuika
//
//  Created by 村上 雅典 on 2015/07/07.
//  Copyright (c) 2015年 村上 雅典. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var number: Int32 = 0
    var audioplayer : AVAudioPlayer!
    @IBOutlet var backgroundColor: UIColor!
    @IBOutlet var setTitleColor: UIColor!

    @IBOutlet var label: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let soundFilePath : NSString =
        NSBundle.mainBundle().pathForResource("voise", ofType: "mp3")!
        let fileURL : NSURL = NSURL(fileURLWithPath: soundFilePath as String)!
        // AVAudioPlayerのインスタンス化.
        audioplayer = AVAudioPlayer(contentsOfURL: fileURL, error: nil)

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func random() {
        var randInt = Int32(arc4random_uniform(4))+1
        number = number + randInt
        label.text = String (number)
        if (number%7==0){
            view.backgroundColor = UIColor.blackColor()
            label.textColor = UIColor.whiteColor()
            audioplayer.play()
            }else{
            view.backgroundColor = UIColor.whiteColor()
            label.textColor = UIColor.blackColor()
        }
                      }
    
        }

    

