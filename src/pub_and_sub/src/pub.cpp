#include<ros/ros.h>
#include<std_msgs/String.h>
#include<sstream>
#include<pub_and_sub/Person.h>
int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "publish");
    ros::NodeHandle handle;

    std_msgs::String msg;

    ros::Publisher pub = handle.advertise<pub_and_sub::Person>("pub_theme", 10);

    ros::Rate rate(1);

    pub_and_sub::Person person;
    person.name = "xiaoming";
    person.age = 0;
    person.height = 60;
    int count = 0;
    std::stringstream ss;

    while(ros::ok())
    {
        ss.str("");
        ss << "hello " << count;
        msg.data = ss.str();
        pub.publish(person);
        ROS_INFO("内容：%s %d %.2f\n", person.name.c_str(), person.age, person.height);
        count++;
        rate.sleep();
    }

}