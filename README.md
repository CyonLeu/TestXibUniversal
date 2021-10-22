# iOS xib兼容iPhone和iPad

在开发移动应用时，需要兼容iPhone和iPad布局

若是很小的调整直接在实现中调整subview的布局即可；

但从设计交互的角度考虑，需要调整整体的显示和交互方式
比如在iPhone中需要垂直布局，方便在手机上操作；
但是在iPad上则需要水平布局，因为iPad的宽，显示效果更好；


所以我们在开发中可用创建两个不同的xib布局文件来共用一个.m实现文件；

比如 FSCollectionViewCell.m 实现对应两个xib文件：
    
    
     FSCollectionViewCell~iphone.xib;
     FSCollectionViewCell~ipad.xib
 
非常重要的是一定要把~iphone和ipad小写，否则无法识别；

使用时只需要
   
       [self.collectionView registerNib:[UINib nibWithNibName:@"FSHomeCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:kFSHomeCollectionViewCell];
       
## 结果
会自动根据设备来选择使用哪个xib；

开发者只需要在设置cell高度的地方来判断设备不同，设置不同高度显示cell即可。


demo演示请[点击查看github](https://github.com/CyonLeu/TestXibUniversal.git)
