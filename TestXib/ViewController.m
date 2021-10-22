//
//  ViewController.m
//  TestXib
//
//  Created by FlyingFish on 2021/10/21.
//

#import "ViewController.h"

#import "FHeaderView.h"
#import "FSHomeCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    FHeaderView *headerView = [[[NSBundle mainBundle] loadNibNamed:@"FHeaderView" owner:nil options:nil] firstObject];
//    [self.view addSubview:headerView];
//
//    headerView.frame = CGRectMake(0, 150, 320, 500);
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"FSHomeCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:kFSHomeCollectionViewCell];
    
    [self.collectionView reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FSHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFSHomeCollectionViewCell forIndexPath:indexPath];
    
    return cell;
}



@end
