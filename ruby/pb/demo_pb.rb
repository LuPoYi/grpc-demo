# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: demo.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("demo.proto", :syntax => :proto3) do
    add_message "demo.HelloRequest" do
      optional :name, :string, 1
    end
    add_message "demo.HelloResponse" do
      optional :message, :string, 1
    end
    add_message "demo.SumRequest" do
      optional :numberOne, :int64, 1
      optional :numberTwo, :int64, 2
    end
    add_message "demo.SumResponse" do
      optional :sum, :int64, 1
    end
  end
end

module Demo
  HelloRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("demo.HelloRequest").msgclass
  HelloResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("demo.HelloResponse").msgclass
  SumRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("demo.SumRequest").msgclass
  SumResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("demo.SumResponse").msgclass
end
