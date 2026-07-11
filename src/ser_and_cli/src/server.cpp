#include "ros/ros.h"
#include "ser_and_cli/number.h"

bool addNumber(ser_and_cli::number::Request &request,
                ser_and_cli::number::Response &response)
{
    response.sum = request.num1 + request.num2;
    ROS_INFO("num1 = %d, num2 = %d, sum = %d", request.num1, request.num2, response.sum);
    return true;

}

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "server");
    ros::NodeHandle node_handle;
    ros::ServiceServer server = node_handle.advertiseService("addTwoNumber", addNumber);
    ros::spin();
    return 0;
}