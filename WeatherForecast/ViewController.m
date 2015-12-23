//
//  ViewController.m
//  WeatherForecast
//
//  Created by Apple on 12/22/15.
//  Copyright (c) 2015 AMOSC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weathericon;
@property (weak, nonatomic) IBOutlet UILabel *quote;


@end

@implementation ViewController{
    NSArray *quotes;
    NSArray *locations;
    NSArray *weathericons;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    quotes=@[@"When you are brave enough to loose, you are eligible to win",@"Happiness is when what you say, do and think are in a harmony",@"Love what you do",@"Do what you love",@"Never give up"];
    locations=@[@"New York, USA",@"Sydney",@"Ha Noi",@"Paris, France",@"Roma, Italy"];
    weathericons=@[@"Rain",@"Sunny",@"Thunder",@"Windy",@"Windy"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)action:(id)sender {
    int quoteindex= arc4random_uniform(5);
    self.quote.text = quotes[quoteindex];
    self.weathericon.image = [UIImage imageNamed:weathericons[quoteindex]];
    self.location.text = locations[quoteindex];
    
    self.temperature.text = [NSString stringWithFormat:@"%2.1f",[self gettemperature]];

}
- (float) gettemperature {
    float index1 = 10 + arc4random_uniform(20);
    float index2 = (float)arc4random()/(float)INT32_MAX;
    return (index1+index2);
    
}

@end
