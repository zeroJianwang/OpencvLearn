#include "Window.h"
int main( int argc, char** argv )
{
	cv::String imageName( "./test.png" );
  	COpencvWindow window;
	cv::Mat image = imread( imageName,cv::IMREAD_COLOR );
    	window.ShowImage(image);
	cv::waitKey(0);
	return 0;
}
