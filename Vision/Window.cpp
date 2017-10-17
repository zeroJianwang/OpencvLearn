#include "Window.h"
COpencvWindow::COpencvWindow()
{
	mWindowName = "defualt";
	cv::namedWindow(mWindowName,cv::WINDOW_AUTOSIZE);
}

COpencvWindow::~COpencvWindow()
{
	cv::destroyWindow(mWindowName);
}

void COpencvWindow::ShowImage(const cv::Mat& ImageSrc)
{
	cv::imshow(mWindowName,ImageSrc);
}
