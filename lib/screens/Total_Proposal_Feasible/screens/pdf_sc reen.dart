import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfScreen extends StatelessWidget {
  const PdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
        // Set a fixed width and height for the PDF viewer
        width: 300.0,
        height: 400.0,
        child: PDFView(
          filePath: "assets/adhaar.pdf", // Path to your PDF file
          enableSwipe: true, // Enable swipe gestures to navigate pages
          swipeHorizontal: true, // Enable horizontal swiping
          autoSpacing: false, // Disable automatic spacing
          pageSnap: false, // Disable snapping to pages
          pageFling: false, // Disable page fling
          fitPolicy: FitPolicy.BOTH, // Fit the pages both horizontally and vertically
          onRender: (pages) {
            // Set your logic to handle rendering completion
            print('PDF rendered: $pages pages');
          },
          onError: (error) {
            // Handle PDF loading error
            print('Error loading PDF: $error');
          },
        ),
      ),
    );
  }
}
