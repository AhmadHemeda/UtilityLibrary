import UIKit

public extension UITableView {
    
    // MARK: - Data Source and Delegate
    
    func setCustomDataSource(_ dataSource: UITableViewDataSource?) {
        self.dataSource = dataSource
    }
    
    func customDataSource() -> UITableViewDataSource? {
        return dataSource
    }
    
    func setCustomDelegate(_ delegate: UITableViewDelegate?) {
        self.delegate = delegate
    }
    
    func customDelegate() -> UITableViewDelegate? {
        return delegate
    }
    
    // MARK: - Row Height
    
    func setCustomRowHeight(_ height: CGFloat) {
        rowHeight = height
    }
    
    func customRowHeight() -> CGFloat {
        return rowHeight
    }
    
    // MARK: - Separator
    
    func setCustomSeparatorStyle(_ style: UITableViewCell.SeparatorStyle) {
        separatorStyle = style
    }
    
    func customSeparatorStyle() -> UITableViewCell.SeparatorStyle {
        return separatorStyle
    }
    
    func setCustomSeparatorColor(_ color: UIColor?) {
        separatorColor = color
    }
    
    func customSeparatorColor() -> UIColor? {
        return separatorColor
    }
    
    // MARK: - Background View
    
    func setCustomBackgroundView(_ view: UIView?) {
        backgroundView = view
    }
    
    func customBackgroundView() -> UIView? {
        return backgroundView
    }
    
    // MARK: - Section Header and Footer Height
    
    func setCustomSectionHeaderHeight(_ height: CGFloat) {
        sectionHeaderHeight = height
    }
    
    func customSectionHeaderHeight() -> CGFloat {
        return sectionHeaderHeight
    }
    
    func setCustomSectionFooterHeight(_ height: CGFloat) {
        sectionFooterHeight = height
    }
    
    func customSectionFooterHeight() -> CGFloat {
        return sectionFooterHeight
    }
    
    // MARK: - Scroll Indicators
    
//    func setCustomShowsVerticalScrollIndicator(_ show: Bool) {
//        showsVerticalScrollIndicator = show
//    }
//    
//    func customShowsVerticalScrollIndicator() -> Bool {
//        return showsVerticalScrollIndicator
//    }
//    
//    func setCustomShowsHorizontalScrollIndicator(_ show: Bool) {
//        showsHorizontalScrollIndicator = show
//    }
//    
//    func customShowsHorizontalScrollIndicator() -> Bool {
//        return showsHorizontalScrollIndicator
//    }
}
