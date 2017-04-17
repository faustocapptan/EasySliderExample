//
//  ViewController.swift
//  EasySliderExample
//
//  Created by dev03 on 17/04/17.
//  Copyright © 2017 dev03. All rights reserved.
//

import UIKit
import Capptan_EasySlider

class ViewController: UIViewController, TGPControlsTicksProtocol {

	@IBOutlet weak var sliderLabel: TGPCamelLabels!
	@IBOutlet weak var sliderSlideBar: TGPDiscreteSlider!

	override func viewDidLoad() {
		super.viewDidLoad()
		carregarSlider()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func carregarSlider(){

		sliderSlideBar.ticksListener = sliderLabel
		sliderSlideBar.addTarget(self, action: #selector(valueChanged(_:event:)), for: .touchUpInside)
		
	}
	
	func tgpTicksDistanceChanged(_ ticksDistance: CGFloat, sender: Any!) {}
	
	func valueChanged(_ sender: TGPDiscreteSlider, event: TGPControlsTicksProtocol) {
		
		let valor:Int = Int(sender.value)
		print("valor: \(valor)")
		
	}


}

