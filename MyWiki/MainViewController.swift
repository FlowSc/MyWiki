//
//  MainViewController.swift
//  MyWiki
//
//  Created by Seongchan Kang on 20/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import UIKit
import SwiftyJSON
import AloeStackView

class MainViewController: UIViewController {

    var todayWikis:[Wiki]?
    let aloeStackView = AloeStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUI()
 
        CustomAPI.getTodayWiki { (wikis) in
            self.todayWikis = wikis
            
            if let _todaywikis = self.todayWikis {
                for i in 0..._todaywikis.count - 1 {
                    
                    let lbl = UILabel()
                    
                    lbl.text = _todaywikis[i].title ?? ""
                    lbl.numberOfLines = 0
                    print(_todaywikis[i].mobilepageurl)
                    print(_todaywikis[i].originalImageUrl)
                    
                    self.aloeStackView.addRow(lbl)
                    
                }
            }

        }

    }
    
    
    func setUI() {
        
        self.view.addSubview(aloeStackView)
        
        aloeStackView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeArea.edges)
        }
        
    }


}

class ThumnailView:UIView, Tappable {
    
    
    let thumnailView = UIImageView()
    let tileView = UIView()
    
    func didTapView() {
        print("tap!")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
