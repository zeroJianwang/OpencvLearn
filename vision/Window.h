#ifndef _OPENCV_WINDOW_H_
#define _OPENCV_WINDOW_H_
#include <opencv2/core/core.hpp>
#include <opencv2/highgui.hpp>
class COpencvWindow
{
public:
	COpencvWindow();
	~COpencvWindow();
public:
	void ShowImage(const cv::Mat& ImageSrc);
private:
	cv::String mWindowName;
};
#endif
