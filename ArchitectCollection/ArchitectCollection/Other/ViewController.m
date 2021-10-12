//
//  ViewController.m
//  ArchitectCollection
//
//  Created by berlinbli on 2021/3/2.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

static NSString *ID = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    
//    UIButton *mvpBtn = [[UIButton alloc] init];
//    [mvpBtn addTarget:self action:@selector(mvpAction) forControlEvents:UIControlEventTouchUpInside];
//    [mvpBtn setTitle:@"MVP模式" forState:UIControlStateNormal];
//    mvpBtn.frame = CGRectMake(100, 100, 100, 50);
//    mvpBtn.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:mvpBtn];
//
//    UIButton *mvvmBtn = [[UIButton alloc] init];
//    [mvvmBtn addTarget:self action:@selector(mvvmAction) forControlEvents:UIControlEventTouchUpInside];
//    [mvvmBtn setTitle:@"MVVM模式" forState:UIControlStateNormal];
//    mvvmBtn.frame = CGRectMake(100, 200, 100, 50);
//    mvvmBtn.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:mvvmBtn];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (self.dataArray.count > 0) {
        NSDictionary *dict = self.dataArray[indexPath.row];
        cell.textLabel.text = dict[@"name"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dict = self.dataArray[indexPath.row];
    Class class = NSClassFromString(dict[@"vc"]);
    UIViewController *vc = [[class alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"DataList.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        _dataArray = [NSMutableArray array];
        [_dataArray addObjectsFromArray:array];
    }
    return _dataArray;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.frame = self.view.bounds;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    }
    return _tableView;
}

- (void)mvpAction {
}

- (void)mvvmAction {
}


@end
