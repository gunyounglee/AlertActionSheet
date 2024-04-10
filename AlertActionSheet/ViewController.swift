//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by TJ on 2022/04/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //alert = 강제적으로 꼭 선택해야할때 사용
    @IBAction func btnAlert(_ sender: UIButton) {
        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        // UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        //Closure를 이용한 실행
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in print("destructive action called")})
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        
        
        //UIAlertController에 UIAlertAction추가
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: false, completion: nil)

    }
//Action Sheet는 비강제적인 선택일 경우 사용
    @IBAction func btnActionSheet(_ sender: UIButton) {

        // UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        // UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        //Closure를 이용한 실행
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in print("destructive action called")})
        
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
        
        
        //UIAlertController에 UIAlertAction추가
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: false, completion: nil)

    }
}

