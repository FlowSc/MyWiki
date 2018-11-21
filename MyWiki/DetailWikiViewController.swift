//
//  DetailWikiViewController.swift
//  MyWiki
//
//  Created by Seongchan Kang on 21/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import UIKit

class DetailWikiViewController: UIViewController {
    
    
    let originalImageView:UIImageView = UIImageView()
    let titleLb = UILabel()
    let detailTv = UITextView()
    let scrollView = UIScrollView()
    let contentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        
        
//        CustomAPI.getRandomWiki(completion: <#T##(JSON) -> ()?#>)
        
        // Do any additional setup after loading the view.
    }
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.centerX.top.bottom.equalToSuperview()
        }
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.centerX.top.bottom.equalToSuperview()
            
        }
        contentView.addSubview(titleLb)
        contentView.addSubview(detailTv)
        titleLb.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(20)
        }
        detailTv.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom).offset(1500)
            make.height.equalTo(100)
            make.left.right.bottom.equalToSuperview()
        }
        
        detailTv.backgroundColor = .red
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
