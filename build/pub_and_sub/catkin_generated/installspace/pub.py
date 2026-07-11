#! /usr/bin/env python3
import rospy
from std_msgs.msg import String
from pub_and_sub.msg import Person
if __name__ == '__main__':

    rospy.init_node("pub")
    pub = rospy.Publisher("pub_theme", Person, queue_size=10)
    msg = String()
    rate = rospy.Rate(1)
    count = 0
    p = Person()
    p.name = "xiaohong"
    p.age = 10
    p.height = 10
    while not rospy.is_shutdown():
        msg.data = "hello" + str(count)
        pub.publish(p)
        rospy.loginfo(f"发布: %s %d %f", p.name, p.age, p.height)
        count += 1
        rate.sleep()