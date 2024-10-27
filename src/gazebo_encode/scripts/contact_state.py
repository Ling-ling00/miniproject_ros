#!/usr/bin/python3

from gazebo_encode.dummy_module import dummy_function, dummy_var
import rclpy
from rclpy.node import Node
from gazebo_msgs.msg import ContactsState
from std_msgs.msg import Bool


class ContactNode(Node):
    def __init__(self):
        super().__init__('contact_node')
        self.create_subscription(ContactsState, "/robot5/bumper_states", self.contact_callback, 10)
        self.contact_pub = self.create_publisher(Bool, "/contact", 10)
    
    def contact_callback(self, msg:ContactsState):
        for state in msg.states:
            if "robot1" in state.collision2_name or "robot2" in state.collision2_name or "robot3" in state.collision2_name or "robot4" in state.collision2_name:
                pub_msg = Bool()
                pub_msg.data = True
                self.contact_pub.publish(pub_msg)

def main(args=None):
    rclpy.init(args=args)
    node = ContactNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__=='__main__':
    main()
