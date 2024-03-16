//
//  ListViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    
    let identfiler = "ListTableViewCell"
    
    let listView = ListView()
    
    let listTableViewCell = ListTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = listView
        
        setUpAddTarget()
        setUpTalbelView()
    }
    
    func setUpTalbelView(){
        listView.listTableView.register(ListTableViewCell.self, forCellReuseIdentifier: identfiler)
        
        listView.listTableView.dataSource = self
        listView.listTableView.delegate = self
    }
    
    func setUpAddTarget(){
        listView.allButton.addTarget(self, action: #selector(allButtonTapped), for: .touchUpInside)
        
        listView.meButton.addTarget(self, action: #selector(meButtonTapped), for: .touchUpInside)
        
        listView.youButton.addTarget(self, action: #selector(youButtonTapped), for: .touchUpInside)
        
        listTableViewCell.heartButton.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside)
    }
    
    @objc func allButtonTapped(){
        print(listView.youButton.isSelected)
        print("allButtonTapped")
        
        listView.allButton.backgroundColor = UIColor(hexCode: "#604937")
        listView.meButton.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        listView.youButton.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
    }
    
    @objc func meButtonTapped(){
        print("meButtonTapped")
        
        listView.meButton.backgroundColor = UIColor(hexCode: "#604937")
        listView.allButton.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        listView.youButton.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
    }
    
    @objc func youButtonTapped(){
        print("youButtonTapped")
        listView.youButton.backgroundColor = UIColor(hexCode: "#604937")
        listView.allButton.backgroundColor =  UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        listView.meButton.backgroundColor =  UIColor(hexCode: "#604937").withAlphaComponent(0.3)
    }
    
    @objc func heartButtonTapped(){
        print("heartButtonTapped")
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = listView.listTableView.dequeueReusableCell(withIdentifier: identfiler, for: indexPath) as? ListTableViewCell else { return UITableViewCell() }

        return cell
        
    }
}
