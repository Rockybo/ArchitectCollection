//
//  MVPView.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "MVPView.h"

@implementation MVPView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(100, 100, 100, 40);
        nameLabel.textColor = [UIColor blackColor];
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
        
        UILabel *ageLabel = [[UILabel alloc] init];
        ageLabel.frame = CGRectMake(100, 300, 100, 40);
        ageLabel.textColor = [UIColor blackColor];
        [self addSubview:ageLabel];
        _ageLabel = ageLabel;
    }
    return self;
}

@end
