//
//  MainViewController.h
//  CreditApplication
//
//  Created by Nick Chekmazov on 11.01.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController

@property (strong, nonatomic) UISegmentedControl *segmentControl;

@property (strong, nonatomic) UILabel *clientLabel;
@property (strong, nonatomic) UILabel *dateLabel;
@property (strong, nonatomic) UILabel *statusLabel;
@property (strong, nonatomic) UILabel *sumLabel;
@property (strong, nonatomic) UILabel *commentLabel;

@property (strong, nonatomic) NSArray *clientArray;
@property (strong, nonatomic) NSArray *dateArray;
@property (strong, nonatomic) NSArray *statusArray;
@property (strong, nonatomic) NSArray *sumArray;
@property (strong, nonatomic) NSArray *commentArray;

@end

NS_ASSUME_NONNULL_END
