//
//  MyWeatherPageTableViewCell.swift
//  Weather4U
//
//  Created by 강태영 on 5/13/24.
//

import UIKit
import SnapKit

class MyWeatherPageTableViewCell: UITableViewCell {
    
    let cityLabel = UILabel()
    let tempLabel = UILabel()
    let highLabel = UILabel()
    let lowLabel = UILabel()
    let weatherLabel = UILabel()
    let cellImageView = UIImageView() // imageView 이름 변경
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.layer.cornerRadius = 20 // 반경을 조정하여 원하는 둥근 정도를 설정할 수 있습니다.
        self.contentView.layer.masksToBounds = true // 셀의 내용이 경계를 벗어날 때 잘라내기 설정

        contentView.backgroundColor = .lightGray
        
        cityLabel.textColor = .white
        tempLabel.textColor = .white
        weatherLabel.textColor = .white
        cellImageView.backgroundColor = .white
        highLabel.textColor = .white
        lowLabel.textColor = .white
        
        contentView.addSubview(cityLabel)
        contentView.addSubview(tempLabel)
        contentView.addSubview(highLabel)
        contentView.addSubview(lowLabel)
        contentView.addSubview(weatherLabel)
        contentView.addSubview(cellImageView)
        
        // Auto Layout constraints 설정
        cityLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(170)
            make.height.equalTo(40)
        }
        
        tempLabel.snp.makeConstraints { make in
            make.top.equalTo(cityLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(190)
        }
        
        weatherLabel.snp.makeConstraints { make in
            make.top.equalTo(tempLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.trailing.equalToSuperview().inset(190)
            
        }
        
        highLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(10)
            make.width.equalTo(lowLabel.snp.width)
        }
        
        lowLabel.snp.makeConstraints { make in
            make.top.equalTo(weatherLabel.snp.bottom).offset(5)
            make.bottom.equalToSuperview().inset(10)
            make.trailing.equalTo(cellImageView.snp.leading).offset(50)
            make.leading.equalTo(highLabel.snp.trailing).offset(10)
        }
        
        cellImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(10)
            make.trailing.bottom.equalToSuperview().inset(10)
            make.leading.equalToSuperview().inset(200)
            make.height.equalTo(130) // 이미지 뷰의 높이 설정
        }
    }
    
    override func layoutSubviews() {
            super.layoutSubviews()
            
            // contentView 프레임을 수정하여 패딩 추가
            contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left:0, bottom: 5, right: 5))
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}