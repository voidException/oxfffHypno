//
//  LoginController.m
//  HypnoNerd
//
//  Created by 艾海涛 on 14/10/2017.
//  Copyright © 2017 John Gallagher. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Set the tab bar item's title
        self.tabBarItem.title = @"登录";
        
        // Create a UIImage from a file
        // This will use Hypno@2x on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        // Put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}

-(void)loadView
{
    //不建议使用loadView
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor=[UIColor blueColor];
    self.view=view;
    //在这里为控制器提供视图
    NSLog(@"%p",self.view);
    // Do any additional setup after loading the view.
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 60, 80, 37)];
    
    nameLabel.font = [UIFont systemFontOfSize:15];
    
    nameLabel.text = @"用 户 名:";
    
    nameLabel.backgroundColor = [UIColor clearColor];
    
    nameLabel.textAlignment = NSTextAlignmentLeft;
    
    nameLabel.numberOfLines = 2;
    
    //用于设置UILabel中文本的行数
    
    [self.view addSubview:nameLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
