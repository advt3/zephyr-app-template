#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(main, LOG_LEVEL_INF);

extern "C" int main() {
    LOG_INF("Zephyr app template started.");
}
