//
//  ViewController.m
//  pdfkit-basics
//
//  Created by admin on 2021-07-14.
//

#import "ViewController.h"
#import <PDFKit/PDFKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
     
     Displays a PDF file with no additional options.
     The PDF file will be displayed in vertical scrolling mode.
     
     */
    [self displaySimplestLayout];
    
}

- (void)displaySimplestLayout {
    
    PDFView *pdfView = [[PDFView alloc] initWithFrame:
                        CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                        ];
    
    NSString *pathToPDF = [[NSBundle mainBundle] pathForResource:@"PDFKit-Basics" ofType:@"pdf"];
    
    PDFDocument *pdfDoc = [[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:pathToPDF]];
    
    [pdfView setDocument:pdfDoc];
    
    [self.view addSubview:pdfView];
    
}


@end
