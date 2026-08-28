import rospy

import sys
import os
sys.path.insert(0, os.path.abspath(".") + "/src/api_test/scripts")

import hello

def doMsg(event):
    rospy.loginfo("hello world")
    rospy.loginfo("time: %.2f", event.current_real.to_sec())


def test_time():
    rospy.init_node('test_time')
    rospy.loginfo("num = %d", hello.num)
    timer = rospy.Timer(rospy.Duration(1), doMsg, oneshot=True)
    rospy.spin()

if __name__ == "__main__":
    test_time()
    