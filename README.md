UIView-Ext(视图扩展)
---------------

###1、位置frame扩展

      。top       
      。left
      。right
      。bottom
      。size
      。width
      。height
      。screenTop       离屏幕的位置
      。screenLeft

###2、视图居中相关
```Objective-C
      根据传入的子视图与当前视图计算出水平中心开始点
      -(CGFloat)centerHorizontalWithSubview:(UIView *)subview;   

      根据传入的子视图与当前视图计算出垂直中心开始点
      -(CGFloat)centerVerticalWithSubview:(UIView *)subview
      -(CGPoint)centerWithSubview:(UIView *)subview

      居中增加子视图
      -(void)addSubviewToCenter:(UIView *)subview
      -(void)addSubviewToHorizontalCenter:(UIView *)subview
      -(void)addSubViewToVerticalCenter:(UIView *)subview
```

###3、边缘对齐增加视图
```Objective-C
      -(void)addSubviewToLeftAlign:(UIView *)subview
      -(void)addSubViewToRightAlign:(UIView *)subview
      -(void)addSubViewToTopAlign:(UIView *)subview
      -(void)addSubViewToBottomAlign:(UIView *)subview
```

###4、视图层次相关
```Objective-C
      当前视图在父视图中的位置
      -(int)getSubviewIndex
      
      将视图置于父视图最上面
      -(void)bringToFront
      
      将视图置于父视图最下面
      -(void)sendToBack
      
      视图层次上移一层
      -(void)bringOneLevelUp
      
      视图层次下移一层
      -(void)sendOneLevelDown
      
      是否在最上面
      -(BOOL)isInFront
      
      是否在最下面
      -(BOOL)isAtBack
      
      交换层次
      -(void)swapDepthsWithView:(UIView*)swapView
```
