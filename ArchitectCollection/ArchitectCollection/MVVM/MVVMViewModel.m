//
//  MVVMViewModel.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVVMViewModel.h"
#import "MVVMModel.h"
#import "MVVMView.h"
#import "MVVMViewController.h"

@interface MVVMViewModel()<MVVMViewDelegate>

@property (nonatomic, weak) MVVMViewController *vc;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *sex;

@end

@implementation MVVMViewModel

- (instancetype)initWithVc:(MVVMViewController *)vc {
    self = [super init];
    if (self) {
        self.vc = vc;
        [self setup];
    }
    return self;
}

- (void)setup {
    MVVMView *view = [[MVVMView alloc] initWithFrame:self.vc.view.bounds];
    view.viewModel = self;
    view.delegate = self;
    [self.vc.view addSubview:view];
    
    MVVMViewModel *model = [[MVVMViewModel alloc] init];
    model.name = @"rocky";
    model.sex = @"man";

    // 赋值数据
    self.name = model.name;
    self.sex = model.name;
}

#pragma mark delegate
- (void)viewChangeData {
    self.name = @"berlinbli";
    self.sex = @"男";
}

@end
