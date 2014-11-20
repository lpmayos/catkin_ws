buttonPushed=static_cast<bool>(srv.response.left_pressed) ||static_cast<bool>(srv.response.right_pressed) ;
obstacleDetected=srv.response.sonar<35;
lightChangeDetected=srv.response.light>50;
