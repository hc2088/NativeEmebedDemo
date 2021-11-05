//
//  ViewController.m
//  NativeEmebedDemo
//
//  Created by huchu on 2021/9/28.
//

#import "ViewController.h"
#include "embedder_example_1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    const char *path1 = [[[NSBundle mainBundle] pathForResource:@"vm_platform_strong.dill" ofType:nil] cStringUsingEncoding:NSUTF8StringEncoding];
    const char *path2 = [[[NSBundle mainBundle] pathForResource:@"app.dill" ofType:nil] cStringUsingEncoding:NSUTF8StringEncoding];
    test123(path1, path2);
}

@end
