import rospy
from geometry_msgs.msg import *

if __name__ == "__main__":
    rospy.init_node("turtle_control_py")
    pub = rospy.Publisher("/turtle1/cmd_vel", Twist, queue_size=10)

    pos = Twist()
    pos.linear.x = 1
    pos.angular.z = 1

    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        pub.publish(pos)
        rate.sleep()