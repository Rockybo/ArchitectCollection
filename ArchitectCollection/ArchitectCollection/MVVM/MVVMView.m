//
//  MVVMView.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVVMView.h"
#import "NSObject+FBKVOController.h"

@interface MVVMView()

@property (nonatomic, weak) UILabel *nameLabel;
@property (nonatomic, weak) UILabel *sexLabel;

@end

@implementation MVVMView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(100, 100, 100, 40);
        nameLabel.textColor = [UIColor blackColor];
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
        
        UILabel *sexLabel = [[UILabel alloc] init];
        sexLabel.frame = CGRectMake(100, 300, 100, 40);
        sexLabel.textColor = [UIColor blackColor];
        [self addSubview:sexLabel];
        _sexLabel = sexLabel;
        
        UIButton *changeBtn = [[UIButton alloc] init];
        [changeBtn addTarget:self action:@selector(changeMvvmAction) forControlEvents:UIControlEventTouchUpInside];
        [changeBtn setTitle:@"改变MVVM模式，数据模型" forState:UIControlStateNormal];
        changeBtn.frame = CGRectMake(100, 400, 100, 50);
        changeBtn.backgroundColor = [UIColor blueColor];
        [self addSubview:changeBtn];
    }
    return self;
}

- (void)changeMvvmAction{
    if ([self.delegate respondsToSelector:@selector(viewChangeData)]) {
        [self.delegate viewChangeData];
    }
}

- (void)setViewModel:(MVVMViewModel *)viewModel {
    _viewModel = viewModel;
    __weak typeof(self) weakSelf = self;
    [self.KVOController observe:viewModel keyPath:@"name" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.nameLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
    [self.KVOController observe:viewModel keyPath:@"sex" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.sexLabel.text = change[NSKeyValueChangeNewKey];
    }];
}

@end

