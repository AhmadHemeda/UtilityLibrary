import UIKit

public extension UIScrollView {
    /// Scrolls to the top of the scroll view with optional animation.
    ///
    /// - Parameter animated: Whether to animate the scrolling (default is true).
    func scrollToTop(animated: Bool = true) {
        let desiredOffset = CGPoint(x: 0, y: -contentInset.top)
        setContentOffset(desiredOffset, animated: animated)
    }

    /// Scrolls to the bottom of the scroll view with optional animation.
    ///
    /// - Parameter animated: Whether to animate the scrolling (default is true).
    func scrollToBottom(animated: Bool = true) {
        let desiredOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height + contentInset.bottom)
        setContentOffset(desiredOffset, animated: animated)
    }

    /// Scrolls to the left edge of the scroll view with optional animation.
    ///
    /// - Parameter animated: Whether to animate the scrolling (default is true).
    func scrollToLeftEdge(animated: Bool = true) {
        let desiredOffset = CGPoint(x: -contentInset.left, y: 0)
        setContentOffset(desiredOffset, animated: animated)
    }

    /// Scrolls to the right edge of the scroll view with optional animation.
    ///
    /// - Parameter animated: Whether to animate the scrolling (default is true).
    func scrollToRightEdge(animated: Bool = true) {
        let desiredOffset = CGPoint(x: contentSize.width - bounds.size.width + contentInset.right, y: 0)
        setContentOffset(desiredOffset, animated: animated)
    }
}
