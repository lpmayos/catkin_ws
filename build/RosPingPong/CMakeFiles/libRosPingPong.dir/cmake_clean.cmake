FILE(REMOVE_RECURSE
  "/home/upf/code/catkin_ws/devel/lib/libRosPingPong.pdb"
  "/home/upf/code/catkin_ws/devel/lib/libRosPingPong.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/libRosPingPong.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
