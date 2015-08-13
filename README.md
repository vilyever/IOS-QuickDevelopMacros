# IOS-QuickDevelopMacros
IOS宏指令集合

## Import
[CocoaPods](http://cocoapods.org)

`pod 'IOS-QuickDevelopMacros', '~> 1.0.2'`

## Usage
```objective-c

#import "VDQuickDevelopMacros.h"

VDLog(@"log %@", self); // 打印输出调用打印的方法和调用语句在该文件内的行数

VDWeakifySelf; // 将self 转为__weak __typeof(&*self)
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    VDStrongifySelf; // 局部对self重新赋值，简化block引用self
    [self test];
});

VDKeyPath(self, test); // 抓取property名字

VDStringFormat(@"%@", self); // [NSString stringWithFormat:]快速引用

VDIdentifier; // 根据当前所属实例，方法和行数生成唯一标识，

VDStringYES; // @“YES”
VDStringNO; // @"NO"
VDStringLineBreaker; // @"\r\n"

VDBOOLToString(YES); // 将BOOL转化为NSString

int many[] = {1,2,3};
VDArrayCount(many, int); // 获取数组长度

// 依照RGB/RGBA值生成UIColor
VDRGBColor(255.0f, 255.0f, 255.0f);
VDRGBAColor(255.0f, 255.0f, 255.0f, 1.0f);
VDColorFromRGB(0xFFFFFF);
VDColorFromRGBA(0xFFFFFF00);

```
## License

[MIT license](LICENSE)
