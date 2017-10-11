
#include <opencv2/imgcodecs.hpp>

#include <string>

//using namespace cv;
//using namespace std;
#include "Window.h"
int main( int argc, char** argv )
{
	cv::String imageName( "./test.png" );
  	COpencvWindow window;
    //! [imread]
	cv::Mat image = imread( imageName,cv::IMREAD_COLOR ); // Read the file
    //! [imread]
    	window.ShowImage(image);
	cv::waitKey(0); // Wait for a keystroke in the window
    //! [wait]
	 return 0;
}
