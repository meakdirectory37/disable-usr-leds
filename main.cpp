#include <fstream>
#define LED_PATH "/sys/class/leds/beaglebone:green:usr"
void writeOut(std::string path);
int main(int, char* []) {
	for(int i = 0; i < 4; i++) {
		writeOut(LED_PATH + std::to_string(i));
	}
	return 0;
}
void writeOut(std::string path) {
	std::fstream fs;
	fs.open(path + "/trigger", std::fstream::out);
	fs << "none";
	fs.close();
}
