/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/upf/code/catkin_ws/src/ros_lab2task2a/srv/RlightStatus.srv
 *
 */


#ifndef ROS_LAB2TASK2A_MESSAGE_RLIGHTSTATUSRESPONSE_H
#define ROS_LAB2TASK2A_MESSAGE_RLIGHTSTATUSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_lab2task2a
{
template <class ContainerAllocator>
struct RlightStatusResponse_
{
  typedef RlightStatusResponse_<ContainerAllocator> Type;

  RlightStatusResponse_()
    : light(0)  {
    }
  RlightStatusResponse_(const ContainerAllocator& _alloc)
    : light(0)  {
    }



   typedef uint32_t _light_type;
  _light_type light;




  typedef boost::shared_ptr< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RlightStatusResponse_

typedef ::ros_lab2task2a::RlightStatusResponse_<std::allocator<void> > RlightStatusResponse;

typedef boost::shared_ptr< ::ros_lab2task2a::RlightStatusResponse > RlightStatusResponsePtr;
typedef boost::shared_ptr< ::ros_lab2task2a::RlightStatusResponse const> RlightStatusResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_lab2task2a

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'ros_lab2task2a': ['/home/upf/code/catkin_ws/src/ros_lab2task2a/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f99383af733f309421c5e214d94595a";
  }

  static const char* value(const ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f99383af733f309ULL;
  static const uint64_t static_value2 = 0x421c5e214d94595aULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_lab2task2a/RlightStatusResponse";
  }

  static const char* value(const ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 light\n\
\n\
";
  }

  static const char* value(const ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.light);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct RlightStatusResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_lab2task2a::RlightStatusResponse_<ContainerAllocator>& v)
  {
    s << indent << "light: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.light);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_LAB2TASK2A_MESSAGE_RLIGHTSTATUSRESPONSE_H
