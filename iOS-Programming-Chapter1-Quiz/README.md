iOS-Programming-Chapter1-Quiz
============

<div align=center>
<img src="../Images/ios-programming-chapter1-1.png" width="420" height="720" />
</div>

#### 项目介绍
知识竞赛简易版APP，运行Demo显示题目，可以选择下一题，也可以查看当前题目的答案。

#### 开发初探
- (0) 设计思路
<div align=center>
<img src="../Images/ios-programming-chapter1-3.png" width="773" height="534" />
</div>
- (1) 新建项目
<div align=center>
<img src="../Images/ios-programming-chapter1-2.png" width="663" height="468" />
</div>
- (2) 界面设计
<div align=center>
<img src="../Images/ios-programming-chapter1-4.png" width="308" height="568" />
</div>
- (3)双击 重命名组建显示名称
<div align=center>
<img src="../Images/ios-programming-chapter1-5.png" width="315" height="350" />
</div>
- (4) 变量声明

```
import UIKit
class ViewController: UIViewController {
```
- (5)建立连接
<div align=center>
<img src="../Images/ios-programming-chapter1-6.png" width="589" height="387" />
</div>

- (6)定义按钮点击方法

```
class ViewController: UIViewController {
```
- (7) 建立按钮点击事件连接
<div align=center>
<img src="../Images/ios-programming-chapter1-7.png" width="786" height="441" />
</div>

- (8) 数据源配置、按钮方法实现

```
class ViewController: UIViewController {

@IBAction func showNextQuestion(_ sender: UIButton) {

class ViewController: UIViewController {
```

#### 开发环境：
- macOS 10.12
- Xcode 8.3
- iOS 10.3
- Swift 3.0

#### 组件：
- [UILabel](https://developer.apple.com/reference/uikit/uilabel)
- [UIButton](https://developer.apple.com/reference/uikit/uibutton)

#### 源代码：
- [https://github.com/NSMichael/SampleCode/tree/master/iOS-Programming-Chapter1-Quiz](https://github.com/NSMichael/SampleCode/tree/master/iOS-Programming-Chapter1-Quiz)