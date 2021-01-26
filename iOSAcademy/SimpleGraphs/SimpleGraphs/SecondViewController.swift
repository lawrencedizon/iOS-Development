//
//  SecondViewController.swift
//  SimpleGraphs
//
//  Created by Lawrence Dizon on 1/26/21.
//

import UIKit
import Charts

class SecondViewController: UIViewController, ChartViewDelegate {
    
    var lineChart = LineChartView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = LineChartData(dataSet: set)
        
        lineChart.data = data
    }


}
