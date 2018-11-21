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
import Kingfisher

class MainViewController: UIViewController, ThumnailViewDelegate {
    
    func moveToDetail(row: Int) {
        print("MOVE To \(row)")
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailWikiViewController") as? DetailWikiViewController else {return}
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

    var todayWikis:[Wiki]?
    let aloeStackView = AloeStackView()
    var selectedDate:Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setUI()
        
        if let _selected = selectedDate {
            
            let date = Standard.shared.dFormatter.string(from: _selected)
            
            
            self.navigationItem.title = "What's on \(date)?"

        }else{
            self.navigationItem.title = "What's on Today?"

        }
 
        CustomAPI.getTodayWiki(date: selectedDate ?? Date()) { (wikis) in
            self.todayWikis = wikis
            
            if let _todaywikis = self.todayWikis {
                for i in 0..._todaywikis.count - 1 {
                    
                    let thumnailView = ThumnailView()
                    
                    thumnailView.setData(_todaywikis[i], row: i)
                    thumnailView.delegate = self
                    thumnailView.isUserInteractionEnabled = true
                    
                    self.aloeStackView.addRow(thumnailView)
                    
                }
            }

        }

    }
    
    private func setUI() {
        
        self.view.addSubview(aloeStackView)
        
        aloeStackView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeArea.edges)
        }
        
    }


}

class ThumnailView:UIView, Tappable {
    
    
    private let thumnailImageView = UIImageView()
    private let titleLb = UILabel()
    private let thumnailLb = UILabel()
    var delegate:ThumnailViewDelegate?
    
    func didTapView() {
        delegate?.moveToDetail(row: tag)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    func setData(_ wikiData:Wiki, row:Int) {
 
        thumnailImageView.kf.setImage(with: URL.init(string: wikiData.thumnailImageUrl ?? ""), placeholder: nil, options: nil, progressBlock: nil, completionHandler: nil)
        titleLb.text = wikiData.title ?? ""
        thumnailLb.text = wikiData.extract ?? ""
        self.tag = row
        
    }
    
    private func setUI() {
        for v in [thumnailLb, thumnailImageView, titleLb] {
            
            self.addSubview(v)
            
        }
        
        thumnailImageView.snp.makeConstraints { (make) in
            make.top.leading.bottom.equalToSuperview()
            make.width.height.equalTo(100)
            
        }
        titleLb.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalTo(thumnailImageView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
        }
        thumnailLb.snp.makeConstraints { (make) in
            make.top.equalTo(titleLb.snp.bottom)
            make.leading.equalTo(titleLb.snp.leading)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        titleLb.numberOfLines = 0
        thumnailLb.numberOfLines = 3
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

protocol ThumnailViewDelegate {
    
    func moveToDetail(row:Int)
    
}
