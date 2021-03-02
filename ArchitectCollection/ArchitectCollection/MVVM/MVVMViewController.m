//
//  MVVMViewController.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVVMViewController.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewModel = [[MVVMViewModel alloc] initWithVc:self];

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
