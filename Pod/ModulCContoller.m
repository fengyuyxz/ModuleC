//
//  ModulCContoller.m
//  ModuleC
//
//  Created by yanxuezhou on 2017/5/15.
//  Copyright © 2017年 yanxuezhou. All rights reserved.
//

#import "ModulCContoller.h"
#import <JJMediator+BusinessA.h>
@interface ModulCContoller ()
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation ModulCContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)butPressed:(id)sender {
    __weak typeof(self) weakSelf = self;
    UIViewController *vc =[[JJMediator sharedInstance]getBussinsA:^(NSDictionary *result) {
        weakSelf.infoLabel.text= [result objectForKey:@"inputCall"];
    }];
    if (vc) {
        [self.navigationController pushViewController:vc animated:YES];
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
