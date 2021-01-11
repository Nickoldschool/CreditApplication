//
//  MainViewController.m
//  CreditApplication
//
//  Created by Nick Chekmazov on 11.01.2021.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self addElement];
    [self configure];
    [self addSubview];
    [self addConstraints];
    [self showClientInfo];
}

-(void)addElement {
    _clientArray = [[NSArray alloc] initWithObjects:@"Петрова А.Н.",@"Иванов К.И.",@"Галкин П.А.",@"Столяров Д.И.",@"Куницын Р.С.", nil];
    _dateArray = [[NSArray alloc] initWithObjects:@"24.08.2018",@"13.04.2017",@"07.05.2015",@"20.05.2016",@"30.01.2014", nil];
    _statusArray = [[NSArray alloc] initWithObjects:@"Рассмотрена",@"Одобрена",@"Не одобрена",@"Рассмотрена",@"Одобрена", nil];
    _sumArray = [[NSArray alloc] initWithObjects:@"300 000",@"500 000",@"700 000",@"450 000",@"600 000", nil];
    _commentArray = [[NSArray alloc] initWithObjects:@"Желательна к одобрению",@"Не желательна к одобрению",@"Желательна к одобрению",@"",@"", nil];
}

-(void)configure {
    _clientLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _clientLabel.text = @"ФИО Клиента";
    //_clientLabel.text = _clientArray[0];
    _clientLabel.textColor = [UIColor blackColor];
    _clientLabel.textAlignment = NSTextAlignmentCenter;
    _clientLabel.backgroundColor = [UIColor grayColor];
    _clientLabel.layer.cornerRadius = 5;
    _clientLabel.layer.masksToBounds = true;
    _clientLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    _dateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _dateLabel.text = @"Дата заявки";
    _dateLabel.textColor = [UIColor blackColor];
    _dateLabel.textAlignment = NSTextAlignmentCenter;
    _dateLabel.backgroundColor = [UIColor grayColor];
    _dateLabel.layer.cornerRadius = 5;
    _dateLabel.layer.masksToBounds = true;
    _dateLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    _statusLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _statusLabel.text = @"Статус заявки";
    _statusLabel.textColor = [UIColor blackColor];
    _statusLabel.textAlignment = NSTextAlignmentCenter;
    _statusLabel.backgroundColor = [UIColor grayColor];
    _statusLabel.layer.cornerRadius = 5;
    _statusLabel.layer.masksToBounds = true;
    _statusLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    _sumLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _sumLabel.text = @"Сумма кредита";
    _sumLabel.textColor = [UIColor blackColor];
    _sumLabel.textAlignment = NSTextAlignmentCenter;
    _sumLabel.backgroundColor = [UIColor grayColor];
    _sumLabel.layer.cornerRadius = 5;
    _sumLabel.layer.masksToBounds = true;
    _sumLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    _commentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _commentLabel.text = @"Комментарий к заявке";
    _commentLabel.textColor = [UIColor blackColor];
    _commentLabel.textAlignment = NSTextAlignmentCenter;
    _commentLabel.backgroundColor = [UIColor grayColor];
    _commentLabel.layer.cornerRadius = 5;
    _commentLabel.layer.masksToBounds = true;
    _commentLabel.translatesAutoresizingMaskIntoConstraints = false;
    
    _segmentControl = [[UISegmentedControl alloc] initWithFrame:CGRectZero];
    _segmentControl.layer.borderWidth = 1;
    _segmentControl.layer.borderColor = [UIColor blackColor].CGColor;
    [_segmentControl insertSegmentWithTitle:@"1 Клиент" atIndex:0 animated: true];
    [_segmentControl insertSegmentWithTitle:@"2 Клиент" atIndex:1 animated: true];
    [_segmentControl insertSegmentWithTitle:@"3 Клиент" atIndex:2 animated: true];
    [_segmentControl insertSegmentWithTitle:@"4 Клиент" atIndex:3 animated: true];
    [_segmentControl insertSegmentWithTitle:@"5 Клиент" atIndex:4 animated: true];
    _segmentControl.translatesAutoresizingMaskIntoConstraints = false;
    [_segmentControl addTarget: self action: @selector(showClientInfo) forControlEvents: UIControlEventValueChanged];
}

-(void)addSubview {
    [self.view addSubview: _clientLabel];
    [self.view addSubview: _dateLabel];
    [self.view addSubview: _statusLabel];
    [self.view addSubview: _sumLabel];
    [self.view addSubview: _commentLabel];
    [self.view addSubview: _segmentControl];
}

-(void)addConstraints {
    [NSLayoutConstraint activateConstraints: @[
        [_segmentControl.topAnchor constraintEqualToAnchor: self.view.topAnchor constant: 50],
        [_segmentControl.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 10],
        [_segmentControl.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -10],
        [_segmentControl.heightAnchor constraintEqualToConstant: 40],
        
        [_clientLabel.topAnchor constraintEqualToAnchor: _segmentControl.bottomAnchor constant: 50],
        [_clientLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 50],
        [_clientLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -50],
        [_clientLabel.heightAnchor constraintEqualToConstant: 40],
        
        [_dateLabel.topAnchor constraintEqualToAnchor: _clientLabel.bottomAnchor constant: 50],
        [_dateLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 50],
        [_dateLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -50],
        [_dateLabel.heightAnchor constraintEqualToConstant: 40],
        
        [_statusLabel.topAnchor constraintEqualToAnchor: _dateLabel.bottomAnchor constant: 50],
        [_statusLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 50],
        [_statusLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -50],
        [_statusLabel.heightAnchor constraintEqualToConstant: 40],
        
        [_sumLabel.topAnchor constraintEqualToAnchor: _statusLabel.bottomAnchor constant: 50],
        [_sumLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 50],
        [_sumLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -50],
        [_sumLabel.heightAnchor constraintEqualToConstant: 40],
        
        [_commentLabel.topAnchor constraintEqualToAnchor: _sumLabel.bottomAnchor constant: 50],
        [_commentLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 50],
        [_commentLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -50],
        [_commentLabel.heightAnchor constraintEqualToConstant: 40],
    ]];
}

-(void)showClientInfo {
    if  (_segmentControl.selectedSegmentIndex == 0) {
        _clientLabel.text = _clientArray[0];
        _dateLabel.text = _dateArray[0];
        _statusLabel.text = _statusArray[0];
        _sumLabel.text = _sumArray[0];
        _commentLabel.text = _commentArray[0];
    } else if  (_segmentControl.selectedSegmentIndex == 1) {
        _clientLabel.text = _clientArray[1];
        _dateLabel.text = _dateArray[1];
        _statusLabel.text = _statusArray[1];
        _sumLabel.text = _sumArray[1];
        _commentLabel.text = _commentArray[1];
    } else if  (_segmentControl.selectedSegmentIndex == 2) {
        _clientLabel.text = _clientArray[2];
        _dateLabel.text = _dateArray[2];
        _statusLabel.text = _statusArray[2];
        _sumLabel.text = _sumArray[2];
        _commentLabel.text = _commentArray[2];
    } else if  (_segmentControl.selectedSegmentIndex == 3) {
        _clientLabel.text = _clientArray[3];
        _dateLabel.text = _dateArray[3];
        _statusLabel.text = _statusArray[3];
        _sumLabel.text = _sumArray[3];
        _commentLabel.text = _commentArray[3];
    } else if  (_segmentControl.selectedSegmentIndex == 4) {
        _clientLabel.text = _clientArray[4];
        _dateLabel.text = _dateArray[4];
        _statusLabel.text = _statusArray[4];
        _sumLabel.text = _sumArray[4];
        _commentLabel.text = _commentArray[4];
    }
}
@end
