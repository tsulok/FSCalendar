//
//  WeekViewTweaksViewController.m
//  FSCalendar
//
//  Created by Dávid Timár on 2017. 09. 28..
//  Copyright © 2017. wenchaoios. All rights reserved.
//

#import "WeekViewTweaksViewController.h"
#import "FSCalendar.h"

@interface WeekViewTweaksViewController()<FSCalendarDataSource,FSCalendarDelegate>
  
  @property (weak, nonatomic) FSCalendar *calendar;
  
  @end

@implementation WeekViewTweaksViewController
  
- (instancetype)init {
  self = [super init];
  if (self) {
    self.title = @"FSCalendar Week Tweaks";
  }
  return self;
}
  
- (void)loadView {
  UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  view.backgroundColor = [UIColor groupTableViewBackgroundColor];
  self.view = view;
  
  CGFloat height = 120;
  FSCalendar *calendar = [[FSCalendar alloc] initWithFrame:CGRectMake(0, 64, view.frame.size.width, height)];
  calendar.dataSource = self;
  calendar.delegate = self;
  calendar.backgroundColor = [UIColor whiteColor];
  calendar.appearance.headerMinimumDissolvedAlpha = 0;
  calendar.appearance.caseOptions = FSCalendarCaseOptionsHeaderUsesUpperCase;
  calendar.appearance.titleFont = [UIFont fontWithName:@"HelveticaNeue" size:30];
  calendar.scope = FSCalendarScopeWeek;
  calendar.appearance.eventOffset = CGPointMake(0, 3);
  calendar.headerHeight = 0;
  calendar.weekdayHeight = 0;
  [self.view addSubview:calendar];
  self.calendar = calendar;
}

  -(NSInteger)calendar:(FSCalendar *)calendar numberOfEventsForDate:(NSDate *)date {
    return 1;
  }
  
  @end
