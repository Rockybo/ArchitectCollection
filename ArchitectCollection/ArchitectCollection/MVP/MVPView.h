//
//  MVPView.h
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MVPView : UIView

@property (nonatomic, weak, readonly) UILabel *nameLabel;
@property (nonatomic, weak, readonly) UILabel *ageLabel;

@end

NS_ASSUME_NONNULL_END
