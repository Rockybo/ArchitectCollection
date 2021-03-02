//
//  MVPViewController.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVPViewController.h"
#import "MVPPresenter.h"

@interface MVPViewController ()

@property (nonatomic, strong) MVPPresenter *presenter;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[MVPPresenter alloc] initWithVc:self];
    
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
