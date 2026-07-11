#include "ros/ros.h"
#include<string>
using namespace std;

void use_getParam(ros::NodeHandle& nh)
{
    string str = nh.param<string>("name", "no_name");
    bool res = nh.getParam("name", str);
    if(res){
        ROS_INFO("success geet Param, name = %s", str.c_str());
    }
    else{
        ROS_INFO("fail~");
    }
}
void use_getParamCaches(ros::NodeHandle& nh)
{
    string str = nh.param<string>("name", "no_name");
    bool res =nh.getParamCached("name", str);
    if(res){
        ROS_INFO("success getParamCached, name = %s", str.c_str());
    }
    else{
        ROS_INFO("fail~");
    }
}

void use_getParamNames(ros::NodeHandle& nh)
{
    vector<string> v;
    nh.getParamNames(v);
    for(auto&& vv : v)
    {
        ROS_INFO("%s", vv.c_str());
    }
}

void use_hadParam(ros::NodeHandle& nh)
{
    bool res = nh.hasParam("name");
    if (res){
        ROS_INFO("success use handParam");
    }
    else{
        ROS_INFO("not have name");
    }
    res = nh.hasParam("lalal");
    if (res){
        ROS_INFO("success use handParam");
    }
    else{
        ROS_INFO("not have lalal");
    }
}

void use_searchParam(ros::NodeHandle& nh)
{
    string key;
    nh.searchParam("name", key);
    ROS_INFO("str = %s", key.c_str());
    key.clear();
    nh.searchParam("lalal", key);
    ROS_INFO("str = %s", key.c_str());
}
int main(int argc, char* argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "get_param");
    ros::NodeHandle nh;
    
    string str = nh.param<string>("name", "no_name");

    ROS_INFO("name = %s", str.c_str());
    use_getParam(nh);
    use_getParamCaches(nh);
    use_getParamNames(nh);
    use_hadParam(nh);
    use_searchParam(nh);

    ROS_INFO("name = %s", ros::param::param<string>("name", "no_name").c_str());
    vector<string> v;
    ros::param::getParamNames(v);
    for(auto&& n: v)
    {
        ROS_INFO("%s", n.c_str());
    }
    return 0;
}