
https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmRules.html

self.xxx 语法背后其实实现大概可以这些描述
if(_xxx) {
    [_xxx release];
}

_xxx = aaa
[_xxx retain]
这是 self.xx 赋值语法背后的逻辑
所以 self.xx = [NSMutableArray array] 在 MRC 是对的
_xx =  [NSMutableArray array]  是错的
_xx = [ [NSMutable alloc] init] 也是对的
self.xx =  [[NSMutableArray alloc] init] 是错的
除了 alloc , 其他关键词还有  “new”, “copy”, or “mutableCopy”