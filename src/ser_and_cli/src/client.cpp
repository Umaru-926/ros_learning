#include"ros/ros.h"
#include"ser_and_cli/number.h"

int main(int argc, char* argv[])
{
    setlocale(LC_ALL, "");
    if(argc != 3)
    {
        ROS_INFO("wrong arg number");
        return 1;
    }
    ros::init(argc, argv, "client");
    ros::NodeHandle node_handle;
    ros::ServiceClient client = node_handle.serviceClient<ser_and_cli::number>("addTwoNumber");
    ser_and_cli::number number;
    number.request.num1 = atoi(argv[1]);
    number.request.num2 = atoi(argv[2]);
    client.waitForExistence();
    // ros::ServiceClient::waitForExistence();
    bool flag = client.call(number);
    if(flag)
    {
        ROS_INFO("求和结果为: %d", number.response.sum);
    }
    else
    {
        ROS_INFO("响应失败！");
    }
    return 0;
}