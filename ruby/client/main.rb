this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(File.dirname(this_dir), 'pb')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'demo_services_pb'

def main
  stub = Demo::DemoService::Stub.new('localhost:50051', :this_channel_is_insecure)

  say_hello_response = stub.say_hello(Demo::HelloRequest.new(
    name: 'Bob'
  ))
  puts "say_hello_response #{say_hello_response}"

  sum_response = stub.sum(Demo::SumRequest.new(
    numberOne: 8,
    numberTwo: 7,
  ))
  puts "sum_response #{sum_response}"
end

main