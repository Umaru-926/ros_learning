import rospy
from ser_and_cli.srv import *
import sys

if __name__ == '__main__':
    
    if len(sys.argv) != 3:
        rospy.loginfo("params needs 3")
        exit(1)
    
    
    rospy.init_node("add_two_number_client")
    client = rospy.ServiceProxy("addTwoNumbers", number) 
    rospy.loginfo("argv[0] = %s", sys.argv[0])
    client.wait_for_service()
    # rospy.wait_for_service("addTwoNubmers")
    respnse = client.call(int(sys.argv[1]), int(sys.argv[2]))
    rospy.loginfo("sum = %d", respnse.sum)