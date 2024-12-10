//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 황치현 on 12/3/24.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    //IBOutlet: 인터페이스와 코드를 연결하겠다.
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    //뷰에 있는 내용이 메모리에 올라왔을때 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        btn.tintColor = UIColor.systemRed
        //TO-DO:
        //심볼에서, 하나를 임의로 추출해서
        //이미지와 텍스트를 설정을 한다.
        //DRY: Do not Repeat yourself (중복금지)
        
    }
    
    //실제 스크린 보이기 직전 호출
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    //다 보이고 나서 호출
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload(){
        //!: 확실히 있다. 언래핑
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
        
    }
    
    //IBAction: 클릭이 될 경우 수행할 코드
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
