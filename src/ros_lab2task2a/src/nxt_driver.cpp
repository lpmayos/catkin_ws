#include "ros_lab2task2a/nxt_interface.h"

int main(int argc, char **argv) { 
    NXT_interface  *subscriber = new NXT_interface();
    subscriber->run(argc, argv);
    return 0;
}
