# TKRMDemo

TKRM Demo is a native iOS application built with **Swift** and **UIKit**. The app includes user authentication, dashboard navigation, washroom listings and details, orders, wallet activity, notifications, ratings, QR scanning, and settings.

## Features

- User login and verification flow
- Dashboard-based navigation
- Washroom listing and detail screens
- Order management and order details
- Wallet and transaction history
- Notifications
- Ratings and feedback
- QR scanner
- Settings, About Us, and Terms & Conditions pages
- Reusable custom UI components

## Tech Stack

- **Language:** Swift
- **Framework:** UIKit
- **IDE:** Xcode
- **Architecture:** View controller based iOS app
- **Deployment Target:** iOS 15.0+

## Project Structure

```text
TKRM
├── AppDelegate.swift
├── SceneDelegate.swift
├── Base.lproj
│   ├── Main.storyboard
│   └── LaunchScreen.storyboard
├── Assets.xcassets
├── Info.plist
├── Extensions.swift
├── View Controllers
│   ├── TKRMLoginVC.swift
│   ├── TKRMVerificationVC.swift
│   ├── TKRMDashboardVC.swift
│   ├── TKRMWashroomsListVC.swift
│   ├── TKRMWashroomDetailsVC.swift
│   ├── TKRMOrderVC.swift
│   ├── TKRMOrderDetailsVC.swift
│   ├── TKRMInvoiceVC.swift
│   ├── TKRMWalletVC.swift
│   ├── TKRMNotificationVC.swift
│   ├── TKRMRatingVC.swift
│   ├── TKRMSettingsVC.swift
│   ├── TKRMQrScannerVC.swift
│   ├── TKRMTermsAndConditionsVC.swift
│   └── TKRMAboutUsVC.swift
├── Models
│   ├── TKRMOrder.swift
│   ├── TKRMTransaction.swift
│   └── TKRMNotification.swift
├── Custom UI
│   ├── TKRMButton.swift
│   ├── TKRMTabBar.swift
│   ├── TKRMtabBarVC.swift
│   └── TKRMShadowAndCorneredView.swift
└── Cells
    ├── TKRMOrderViewCell.swift
    ├── TKRMTransactionViewCell.swift
    ├── TKRMNotificationViewCell.swift
    └── TKRMWashroomDetailsImagesViewCell.swift
```

## Notes

- The project uses **Storyboard** for UI design and navigation.
- The app is configured primarily for **portrait orientation**.
- Avoid committing large binary files directly to GitHub unless they are managed through **Git LFS**.

## Recommended `.gitignore`

```gitignore
*.dmg
DerivedData/
build/
xcuserdata/
.DS_Store
