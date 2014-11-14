UIView-Ext(视图扩展)
---------------

###1、位置frame扩展

      。top       
      。left<br>
      。right<br>
      。bottom<br>
      。size<br>
      。width<br>
      。height<br>
      。screenTop       离屏幕的位置<br/>
      。screenLeft<br>

###2、视图居中相关

      根据传入的子视图与当前视图计算出水平中心开始点
      -(CGFloat)centerHorizontalWithSubView:(UIView *)subView;   

      根据传入的子视图与当前视图计算出垂直中心开始点
      -(CGFloat)centerVerticalWithSubView:(UIView *)subView
      -(CGPoint)centerWithSubView:(UIView *)subView

      居中增加子视图
      -(void)addSubViewToCenter:(UIView *)subView
      -(void)addSubViewToHorizontalCenter:(UIView *)subView
      -(void)addSubViewToVerticalCenter:(UIView *)subView


###3、边缘对齐增加视图

      -(void)addSubViewToLeftAlign:(UIView *)subView
      -(void)addSubViewToRightAlign:(UIView *)subView
      -(void)addSubViewToTopAlign:(UIView *)subView
      -(void)addSubViewToBottomAlign:(UIView *)subView


###4、视图层次相关

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
