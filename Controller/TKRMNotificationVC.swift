//
//  TKRMNotificationVC.swift
//  TKRM
//
//  Created by Usama Bashir Butt on 24.09.23.
//

import UIKit

class TKRMNotificationVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var notifications: [Notification] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        if let jsonNotifications = "[{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"},{\"text\":\"Notificationname\",\"date\":\"22/08/2023\",\"time\":\"07:24PM\"}]".data(using: .utf8) {
            do {
                let decoder = JSONDecoder()
                self.notifications = try decoder.decode([Notification].self, from: jsonNotifications)
            } catch {
                print("Error parsing JSON: \(error)")
            }
        }
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension TKRMNotificationVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notificationViewCell") as! TKRMNotificationViewCell
        let notification = notifications[indexPath.row]
        cell.configureCellWithNotification(text: notification.text, time: notification.time, date: notification.date)
        return cell
    }
}
