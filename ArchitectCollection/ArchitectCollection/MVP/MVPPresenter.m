//
//  MVPPresenter.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVPPresenter.h"
#import "MVPViewController.h"
#import "MVPView.h"
#import "MVPModel.h"

@interface MVPPresenter()

@property (nonatomic, weak) MVPViewController *vc;
@property (nonatomic, strong) MVPModel *model;

@end

@implementation MVPPresenter

- (instancetype)initWithVc:(MVPViewController *)vc {
    self = [super init];
    if (self) {
        self.vc = vc;
        [self initWithData];
        [self setup];
    }
    return self;
}

- (void)initWithData {
    self.model = [[MVPModel alloc] init];
    self.model.name = @"rocky";
    self.model.des = @"MVP模式";
}

- (void)setup {
    MVPView *view = [[MVPView alloc] initWithFrame:self.vc.view.bounds];
    [self.vc.view addSubview:view];
    
    //  赋值数据
    view.nameLabel.text = self.model.name;
    view.ageLabel.text = self.model.des;
}

#pragma mark delegate


@end
