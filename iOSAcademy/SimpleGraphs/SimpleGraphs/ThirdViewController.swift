//
//  ThirdViewController.swift
//  SimpleGraphs
//
//  Created by Lawrence Dizon on 1/26/21.
//

import UIKit
import Charts

class ThirdViewController: UIViewController, ChartViewDelegate {

    var pieChart = PieChartView()
    override func viewDidLoad() {
        super.viewDidLoad()
        pieChart.delegate = self

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.pastel()
        let data = PieChartData(dataSet: set)
        
        pieChart.data = data
    }

}
