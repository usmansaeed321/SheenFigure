/*
 * Copyright (C) 2013 SheenFigure
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "SSFont.h"
#import "SSLabel.h"
#import "SSViewController.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    SSFont *font = [SSFont fontWithPath:[[NSBundle mainBundle] pathForResource:@"NafeesWeb" ofType:@"ttf"] size:UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ? 19 : 45];

    _lblDesc = [[SSLabel alloc] initWithFrame:CGRectMake(0, 0, _scrlView.frame.size.width, 0)];
    [_scrlView addSubview:_lblDesc];
    _lblDesc.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    _lblDesc.font = font;
    _lblDesc.text = @"محمول (جمع: محمولات / mobile) کو ہاتفِ خلوی (cell phone) بھی کہا جاتا ہے اور یہ جدید طرزیات کی مدد سے تیار کی جانے والی ایک ایسی برقی اختراع (electronic device) ہوتی ہے کہ جسکے زریعے ہاتف (telephone) کا استعمال آزادانہ اور دوران حرکت و سفر کسی بھی جگہ بلا کسی قابل دید رابطے (یعنی تار وغیرہ کے بغیر) کیا جاسکتا ہے۔ آج کل جو جدید محمولات تیار کیے جارہے ہیں ان میں ناصرف یہ کہ ہاتف اور جال محیط عالم سے روابط (برقی خط اور رزمی بدیل (packet switching) وغیرہ) کی سہولیات میسر ہیں بلکہ اسکے ساتھ ساتھ ان میں تصاویر بھیجنے اور موصول کرنے کیلئے کثیرالوسیط پیغامی خدمت (multimedia messaging service) ، عکاسہ (camera) اور منظرہ (video) بنانے کی خصوصیات بھی موجود ہوتی ہیں۔";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    SF_RELEASE(_lblDesc);
    
#ifndef SF_ARC_ENABLED
    [super dealloc];
#endif
}

@end
