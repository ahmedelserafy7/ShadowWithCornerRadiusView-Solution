# Shadow With Corner Radius View Solution

## Description

There is a problem that you might have faced in Swift when you try to add shadow with corner radius on the view.

## How to solve the problem

To add corner radius and shadow at the same time, you need to fake this view by adding another view of the same size, or rather subview on it.

So first, Add your view, Let's say that `containerView` it's like your parent view/superview that we will add shadow normally to it by:

    containerView.backgroundColor = .clear
    containerView.layer.shadowColor = UIColor.lightGray.cgColor
    // or if you'd like to add shadow color in black, it's what you prefer
    //containerView.layer.shadowColor = UIColor.black.cgColor
    containerView.layer.shadowOffset = .zero
    containerView.layer.shadowOpacity = 0.3
    // shadow radius is optional, you can add or comment it
    containerView.layer.shadowRadius = 8
    containerView.layer.masksToBounds = false

then you can create subview on the `containerView` by:

    containerView.addSubview(subContainerView)
    subContainerView.backgroundColor = .white
    subContainerView.layer.cornerRadius = 8
    subContainerView.layer.masksToBounds = true

The `containerView` will reflect the shadow to the `subContainerView` which is really corner radius.

like this:
without `containerView.layer.shadowRadius = 8`

<img src="https://imgur.com/yageqy4.png">

with `containerView.layer.shadowRadius = 8`

<img src="https://i.imgur.com/QNxjw2w.png">

with `containerView.layer.shadowRadius = 8` && `containerView.layer.shadowColor = UIColor.black.cgColor`

<img src="https://i.imgur.com/Wq5nJ5Y.png">

Note: If you'd like to change the background color of the view, Change the `subContainerView` background.

## Requirements

This project requires: 
* **Xcode 10+** 
* **iOS 12.4+**

If you like this solution, Please Upvote for Me on [Stack Overflow](https://stackoverflow.com/questions/47786017/how-to-add-corner-radius-and-shadow-to-a-uiview-in-ios/59995250#59995250)
