"""autogenerated by genpy from ros_webots_epuck_nxt_differential_robot/Rrobot.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ros_webots_epuck_nxt_differential_robot.msg
import std_msgs.msg

class Rrobot(genpy.Message):
  _md5sum = "8b886383709d99b19c9aec3796abbb5d"
  _type = "ros_webots_epuck_nxt_differential_robot/Rrobot"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Header Rrobot
ros_webots_epuck_nxt_differential_robot/Rmotor leftMotor
ros_webots_epuck_nxt_differential_robot/Rmotor rightMotor
ros_webots_epuck_nxt_differential_robot/Rbutton leftButtonSwitch
ros_webots_epuck_nxt_differential_robot/Rbutton rightButtonSwitch

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ros_webots_epuck_nxt_differential_robot/Rmotor
Header Rmotor
uint32 power

================================================================================
MSG: ros_webots_epuck_nxt_differential_robot/Rbutton
Header Rbutton
bool on

"""
  __slots__ = ['Rrobot','leftMotor','rightMotor','leftButtonSwitch','rightButtonSwitch']
  _slot_types = ['std_msgs/Header','ros_webots_epuck_nxt_differential_robot/Rmotor','ros_webots_epuck_nxt_differential_robot/Rmotor','ros_webots_epuck_nxt_differential_robot/Rbutton','ros_webots_epuck_nxt_differential_robot/Rbutton']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Rrobot,leftMotor,rightMotor,leftButtonSwitch,rightButtonSwitch

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rrobot, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Rrobot is None:
        self.Rrobot = std_msgs.msg.Header()
      if self.leftMotor is None:
        self.leftMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.rightMotor is None:
        self.rightMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.leftButtonSwitch is None:
        self.leftButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      if self.rightButtonSwitch is None:
        self.rightButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
    else:
      self.Rrobot = std_msgs.msg.Header()
      self.leftMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      self.rightMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      self.leftButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      self.rightButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.Rrobot.seq, _x.Rrobot.stamp.secs, _x.Rrobot.stamp.nsecs))
      _x = self.Rrobot.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.leftMotor.Rmotor.seq, _x.leftMotor.Rmotor.stamp.secs, _x.leftMotor.Rmotor.stamp.nsecs))
      _x = self.leftMotor.Rmotor.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.leftMotor.power, _x.rightMotor.Rmotor.seq, _x.rightMotor.Rmotor.stamp.secs, _x.rightMotor.Rmotor.stamp.nsecs))
      _x = self.rightMotor.Rmotor.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.rightMotor.power, _x.leftButtonSwitch.Rbutton.seq, _x.leftButtonSwitch.Rbutton.stamp.secs, _x.leftButtonSwitch.Rbutton.stamp.nsecs))
      _x = self.leftButtonSwitch.Rbutton.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_B3I.pack(_x.leftButtonSwitch.on, _x.rightButtonSwitch.Rbutton.seq, _x.rightButtonSwitch.Rbutton.stamp.secs, _x.rightButtonSwitch.Rbutton.stamp.nsecs))
      _x = self.rightButtonSwitch.Rbutton.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.rightButtonSwitch.on))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.Rrobot is None:
        self.Rrobot = std_msgs.msg.Header()
      if self.leftMotor is None:
        self.leftMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.rightMotor is None:
        self.rightMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.leftButtonSwitch is None:
        self.leftButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      if self.rightButtonSwitch is None:
        self.rightButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Rrobot.seq, _x.Rrobot.stamp.secs, _x.Rrobot.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Rrobot.frame_id = str[start:end].decode('utf-8')
      else:
        self.Rrobot.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.leftMotor.Rmotor.seq, _x.leftMotor.Rmotor.stamp.secs, _x.leftMotor.Rmotor.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.leftMotor.Rmotor.frame_id = str[start:end].decode('utf-8')
      else:
        self.leftMotor.Rmotor.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.leftMotor.power, _x.rightMotor.Rmotor.seq, _x.rightMotor.Rmotor.stamp.secs, _x.rightMotor.Rmotor.stamp.nsecs,) = _struct_4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rightMotor.Rmotor.frame_id = str[start:end].decode('utf-8')
      else:
        self.rightMotor.Rmotor.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.rightMotor.power, _x.leftButtonSwitch.Rbutton.seq, _x.leftButtonSwitch.Rbutton.stamp.secs, _x.leftButtonSwitch.Rbutton.stamp.nsecs,) = _struct_4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.leftButtonSwitch.Rbutton.frame_id = str[start:end].decode('utf-8')
      else:
        self.leftButtonSwitch.Rbutton.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.leftButtonSwitch.on, _x.rightButtonSwitch.Rbutton.seq, _x.rightButtonSwitch.Rbutton.stamp.secs, _x.rightButtonSwitch.Rbutton.stamp.nsecs,) = _struct_B3I.unpack(str[start:end])
      self.leftButtonSwitch.on = bool(self.leftButtonSwitch.on)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rightButtonSwitch.Rbutton.frame_id = str[start:end].decode('utf-8')
      else:
        self.rightButtonSwitch.Rbutton.frame_id = str[start:end]
      start = end
      end += 1
      (self.rightButtonSwitch.on,) = _struct_B.unpack(str[start:end])
      self.rightButtonSwitch.on = bool(self.rightButtonSwitch.on)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.Rrobot.seq, _x.Rrobot.stamp.secs, _x.Rrobot.stamp.nsecs))
      _x = self.Rrobot.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.leftMotor.Rmotor.seq, _x.leftMotor.Rmotor.stamp.secs, _x.leftMotor.Rmotor.stamp.nsecs))
      _x = self.leftMotor.Rmotor.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.leftMotor.power, _x.rightMotor.Rmotor.seq, _x.rightMotor.Rmotor.stamp.secs, _x.rightMotor.Rmotor.stamp.nsecs))
      _x = self.rightMotor.Rmotor.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_4I.pack(_x.rightMotor.power, _x.leftButtonSwitch.Rbutton.seq, _x.leftButtonSwitch.Rbutton.stamp.secs, _x.leftButtonSwitch.Rbutton.stamp.nsecs))
      _x = self.leftButtonSwitch.Rbutton.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_B3I.pack(_x.leftButtonSwitch.on, _x.rightButtonSwitch.Rbutton.seq, _x.rightButtonSwitch.Rbutton.stamp.secs, _x.rightButtonSwitch.Rbutton.stamp.nsecs))
      _x = self.rightButtonSwitch.Rbutton.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.rightButtonSwitch.on))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.Rrobot is None:
        self.Rrobot = std_msgs.msg.Header()
      if self.leftMotor is None:
        self.leftMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.rightMotor is None:
        self.rightMotor = ros_webots_epuck_nxt_differential_robot.msg.Rmotor()
      if self.leftButtonSwitch is None:
        self.leftButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      if self.rightButtonSwitch is None:
        self.rightButtonSwitch = ros_webots_epuck_nxt_differential_robot.msg.Rbutton()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Rrobot.seq, _x.Rrobot.stamp.secs, _x.Rrobot.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Rrobot.frame_id = str[start:end].decode('utf-8')
      else:
        self.Rrobot.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.leftMotor.Rmotor.seq, _x.leftMotor.Rmotor.stamp.secs, _x.leftMotor.Rmotor.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.leftMotor.Rmotor.frame_id = str[start:end].decode('utf-8')
      else:
        self.leftMotor.Rmotor.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.leftMotor.power, _x.rightMotor.Rmotor.seq, _x.rightMotor.Rmotor.stamp.secs, _x.rightMotor.Rmotor.stamp.nsecs,) = _struct_4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rightMotor.Rmotor.frame_id = str[start:end].decode('utf-8')
      else:
        self.rightMotor.Rmotor.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.rightMotor.power, _x.leftButtonSwitch.Rbutton.seq, _x.leftButtonSwitch.Rbutton.stamp.secs, _x.leftButtonSwitch.Rbutton.stamp.nsecs,) = _struct_4I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.leftButtonSwitch.Rbutton.frame_id = str[start:end].decode('utf-8')
      else:
        self.leftButtonSwitch.Rbutton.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.leftButtonSwitch.on, _x.rightButtonSwitch.Rbutton.seq, _x.rightButtonSwitch.Rbutton.stamp.secs, _x.rightButtonSwitch.Rbutton.stamp.nsecs,) = _struct_B3I.unpack(str[start:end])
      self.leftButtonSwitch.on = bool(self.leftButtonSwitch.on)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rightButtonSwitch.Rbutton.frame_id = str[start:end].decode('utf-8')
      else:
        self.rightButtonSwitch.Rbutton.frame_id = str[start:end]
      start = end
      end += 1
      (self.rightButtonSwitch.on,) = _struct_B.unpack(str[start:end])
      self.rightButtonSwitch.on = bool(self.rightButtonSwitch.on)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_B = struct.Struct("<B")
_struct_B3I = struct.Struct("<B3I")
_struct_4I = struct.Struct("<4I")
