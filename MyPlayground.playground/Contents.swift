//: Playground - noun: a place where people can play

import UIKit

func currencyStringFromNumber(number: Float) -> String {
    let formatter = NSNumberFormatter()
    formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    formatter.currencyCode = NSLocale.currentLocale().displayNameForKey(NSLocaleCurrencySymbol, value: NSLocaleCurrencyCode)
    return formatter.stringFromNumber(number)!
}

let currencyString = currencyStringFromNumber(5.0009)
print("Currency String is: \(currencyString)")