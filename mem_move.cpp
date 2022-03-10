
#include <dml/dml.hpp>
#include <numeric>
#include <vector>
#include <iostream>

constexpr auto size = 16384u;  // 16 KB
constexpr auto op_count = 1;
using execution_path = dml::hardware;

int main()
{
    std::cout << "Starting batch dml::mem_move example...\n";
    std::cout << "Copy 1KB of data from source into destination...\n";

        // Some data definitions
    auto src_data = std::vector<uint64_t>{size};
    auto dst_data = std::vector<uint64_t>(src_data.size());

    // Use operation
    // auto sequence = dml::sequence(op_count, allocator<dml::byte_t>());
    auto handler = dml::submit<dml::hardware>(dml::mem_move,
                                            dml::make_view(src_data),
                                            dml::make_view(dst_data));

    // Evaluate other asynchronous operations...

    // Wait for the result
    auto result = handler.get();
    std::cout << "Copy 16KB of data from source into destination...\n";

    if (result.status != dml::status_code::ok)
    {
        return -1;
    }
}
