import UIKit

extension UITextField {
    /// Convenience initializer for creating a UITextField with specified placeholder, font, and color.
    ///
    /// - Parameters:
    ///   - placeholder: The placeholder text to be displayed.
    ///   - font: The font of the text.
    ///   - color: The color of the text.
    convenience init(placeholder: String, font: UIFont, color: UIColor) {
        self.init()
        self.placeholder = placeholder
        self.font = font
        self.textColor = color
    }

    /// Adds left padding to the text field's text.
    ///
    /// - Parameter padding: The amount of padding to add.
    func addLeftPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }

    /// Adds right padding to the text field's text.
    ///
    /// - Parameter padding: The amount of padding to add.
    func addRightPadding(_ padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }

    /// Set the text color for a specific range of the text field's text.
    ///
    /// - Parameters:
    ///   - color: The color to set as the text color.
    ///   - range: The range of text to which the color will be applied.
    func setTextColor(_ color: UIColor, forRange range: NSRange) {
        guard let attributedText = self.attributedText else { return }
        let mutableAttributedText = NSMutableAttributedString(attributedString: attributedText)
        mutableAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        self.attributedText = mutableAttributedText
    }

    /// Set the placeholder color for the text field.
    ///
    /// - Parameter color: The color to set as the placeholder color.
    func setPlaceholderColor(_ color: UIColor) {
        guard let placeholder = self.placeholder else { return }
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: color])
    }
}
