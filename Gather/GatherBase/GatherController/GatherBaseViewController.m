//
//  GatherBaseViewController.m
//  Gather
//
//  Created by apple on 2018/3/27.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "GatherBaseViewController.h"

@interface GatherBaseViewController ()

@end

@implementation GatherBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"nav-icon-Return"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(didLeftBarButton:)];
}
- (void)didLeftBarButton:(UIBarButtonItem *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    //当收到内存警告时,移除当前没有在屏幕上显示的视图.
    
    //判断是否可以安全的移除视图控制器的view.
    
    //判断当前的视图控制器的view是否是屏幕上显示.self.view.window
    
    //判断当前视图控制器的view是否已经成功加载.isViewLoaded
    
    if( self.view.window == nil && [self isViewLoaded]) {
        //安全移除控制器的view;
        self.view = nil;
        
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
