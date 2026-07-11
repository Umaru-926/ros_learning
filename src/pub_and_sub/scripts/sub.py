import rospy
from std_msgs.msg import String
from pub_and_sub.msg import Person

def doMsg(p):
    rospy.loginfo(f"订阅的数据是: %s %d %f", p.name, p.age, p.height)


if __name__ == '__main__':
    rospy.init_node("sub")
    sub = rospy.Subscriber("pub_theme", Person, doMsg, queue_size=10)

    rospy.spin()