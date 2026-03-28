//
//  TKRMInvoiceVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//
import PDFKit
import UIKit

class TKRMInvoiceVC: UIViewController {

    @IBOutlet weak var invoiceView: UIView!
    let pdfView = PDFView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        invoiceView.addSubview(pdfView)
        guard let url = Bundle.main.url(forResource: "template invoice", withExtension: "pdf") else {
            return
        }
        guard let document = PDFDocument(url: url) else {
            return
        }
        pdfView.document = document
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pdfView.frame = invoiceView.bounds
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        
    }
}
