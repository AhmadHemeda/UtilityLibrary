import UIKit

public extension UIScrollView {
    
    // MARK: - Content Inset
    
    func setCustomContentInset(_ inset: UIEdgeInsets) {
        contentInset = inset
    }
    
    func customContentInset() -> UIEdgeInsets {
        return contentInset
    }
    
    // MARK: - Content Offset
    
    func setCustomContentOffset(_ offset: CGPoint, animated: Bool = false) {
        setContentOffset(offset, animated: animated)
    }
    
    func customContentOffset() -> CGPoint {
        return contentOffset
    }
    
    // MARK: - Content Size
    
    func setCustomContentSize(_ size: CGSize) {
        contentSize = size
    }
    
    func customContentSize() -> CGSize {
        return contentSize
    }
    
    // MARK: - Scroll Indicators
    
    func setCustomShowsVerticalScrollIndicator(_ show: Bool) {
        showsVerticalScrollIndicator = show
    }
    
    func customShowsVerticalScrollIndicator() -> Bool {
        return showsVerticalScrollIndicator
    }
    
    func setCustomShowsHorizontalScrollIndicator(_ show: Bool) {
        showsHorizontalScrollIndicator = show
    }
    
    func customShowsHorizontalScrollIndicator() -> Bool {
        return showsHorizontalScrollIndicator
    }
    
    // MARK: - Scroll Enabled
    
    func setCustomScrollEnabled(_ enabled: Bool) {
        isScrollEnabled = enabled
    }
    
    func customScrollEnabled() -> Bool {
        return isScrollEnabled
    }
    
    // MARK: - Bounces
    
    func setCustomBounces(_ bounces: Bool) {
        alwaysBounceVertical = bounces
        alwaysBounceHorizontal = bounces
    }
    
    func customBounces() -> Bool {
        return alwaysBounceVertical && alwaysBounceHorizontal
    }
}
