"""autogenerated by genpy from ros_lab2task2/Rsimulation.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Rsimulation(genpy.Message):
  _md5sum = "a636d3a806c8f3330f88267a8ee7133f"
  _type = "ros_lab2task2/Rsimulation"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 left_pressed
uint32 right_pressed
uint32 sonar_value
uint32 light_value

"""
  __slots__ = ['left_pressed','right_pressed','sonar_value','light_value']
  _slot_types = ['uint32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left_pressed,right_pressed,sonar_value,light_value

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rsimulation, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.left_pressed is None:
        self.left_pressed = 0
      if self.right_pressed is None:
        self.right_pressed = 0
      if self.sonar_value is None:
        self.sonar_value = 0
      if self.light_value is None:
        self.light_value = 0
    else:
      self.left_pressed = 0
      self.right_pressed = 0
      self.sonar_value = 0
      self.light_value = 0

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
      buff.write(_struct_4I.pack(_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value,) = _struct_4I.unpack(str[start:end])
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
      buff.write(_struct_4I.pack(_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.left_pressed, _x.right_pressed, _x.sonar_value, _x.light_value,) = _struct_4I.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4I = struct.Struct("<4I")