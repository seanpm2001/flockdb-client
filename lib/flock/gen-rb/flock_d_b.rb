#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'flockdb_types'

        module Flock
          module Edges
            module FlockDB
              class Client
                include ::Thrift::Client

                def contains(source_id, graph_id, destination_id)
                  send_contains(source_id, graph_id, destination_id)
                  return recv_contains()
                end

                def send_contains(source_id, graph_id, destination_id)
                  send_message('contains', Contains_args, :source_id => source_id, :graph_id => graph_id, :destination_id => destination_id)
                end

                def recv_contains()
                  result = receive_message(Contains_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'contains failed: unknown result')
                end

                def get(source_id, graph_id, destination_id)
                  send_get(source_id, graph_id, destination_id)
                  return recv_get()
                end

                def send_get(source_id, graph_id, destination_id)
                  send_message('get', Get_args, :source_id => source_id, :graph_id => graph_id, :destination_id => destination_id)
                end

                def recv_get()
                  result = receive_message(Get_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get failed: unknown result')
                end

                def get_metadata(source_id, graph_id)
                  send_get_metadata(source_id, graph_id)
                  return recv_get_metadata()
                end

                def send_get_metadata(source_id, graph_id)
                  send_message('get_metadata', Get_metadata_args, :source_id => source_id, :graph_id => graph_id)
                end

                def recv_get_metadata()
                  result = receive_message(Get_metadata_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_metadata failed: unknown result')
                end

                def contains_metadata(source_id, graph_id)
                  send_contains_metadata(source_id, graph_id)
                  return recv_contains_metadata()
                end

                def send_contains_metadata(source_id, graph_id)
                  send_message('contains_metadata', Contains_metadata_args, :source_id => source_id, :graph_id => graph_id)
                end

                def recv_contains_metadata()
                  result = receive_message(Contains_metadata_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'contains_metadata failed: unknown result')
                end

                def select2(queries)
                  send_select2(queries)
                  return recv_select2()
                end

                def send_select2(queries)
                  send_message('select2', Select2_args, :queries => queries)
                end

                def recv_select2()
                  result = receive_message(Select2_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'select2 failed: unknown result')
                end

                def count2(queries)
                  send_count2(queries)
                  return recv_count2()
                end

                def send_count2(queries)
                  send_message('count2', Count2_args, :queries => queries)
                end

                def recv_count2()
                  result = receive_message(Count2_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'count2 failed: unknown result')
                end

                def select_edges(queries)
                  send_select_edges(queries)
                  return recv_select_edges()
                end

                def send_select_edges(queries)
                  send_message('select_edges', Select_edges_args, :queries => queries)
                end

                def recv_select_edges()
                  result = receive_message(Select_edges_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'select_edges failed: unknown result')
                end

                def execute(operations)
                  send_execute(operations)
                  recv_execute()
                end

                def send_execute(operations)
                  send_message('execute', Execute_args, :operations => operations)
                end

                def recv_execute()
                  result = receive_message(Execute_result)
                  raise result.ex unless result.ex.nil?
                  return
                end

                def count(operations)
                  send_count(operations)
                  return recv_count()
                end

                def send_count(operations)
                  send_message('count', Count_args, :operations => operations)
                end

                def recv_count()
                  result = receive_message(Count_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'count failed: unknown result')
                end

                def select(operations, page)
                  send_select(operations, page)
                  return recv_select()
                end

                def send_select(operations, page)
                  send_message('select', Select_args, :operations => operations, :page => page)
                end

                def recv_select()
                  result = receive_message(Select_result)
                  return result.success unless result.success.nil?
                  raise result.ex unless result.ex.nil?
                  raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'select failed: unknown result')
                end

              end

              class Processor
                include ::Thrift::Processor

                def process_contains(seqid, iprot, oprot)
                  args = read_args(iprot, Contains_args)
                  result = Contains_result.new()
                  begin
                    result.success = @handler.contains(args.source_id, args.graph_id, args.destination_id)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'contains', seqid)
                end

                def process_get(seqid, iprot, oprot)
                  args = read_args(iprot, Get_args)
                  result = Get_result.new()
                  begin
                    result.success = @handler.get(args.source_id, args.graph_id, args.destination_id)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'get', seqid)
                end

                def process_get_metadata(seqid, iprot, oprot)
                  args = read_args(iprot, Get_metadata_args)
                  result = Get_metadata_result.new()
                  begin
                    result.success = @handler.get_metadata(args.source_id, args.graph_id)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'get_metadata', seqid)
                end

                def process_contains_metadata(seqid, iprot, oprot)
                  args = read_args(iprot, Contains_metadata_args)
                  result = Contains_metadata_result.new()
                  begin
                    result.success = @handler.contains_metadata(args.source_id, args.graph_id)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'contains_metadata', seqid)
                end

                def process_select2(seqid, iprot, oprot)
                  args = read_args(iprot, Select2_args)
                  result = Select2_result.new()
                  begin
                    result.success = @handler.select2(args.queries)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'select2', seqid)
                end

                def process_count2(seqid, iprot, oprot)
                  args = read_args(iprot, Count2_args)
                  result = Count2_result.new()
                  begin
                    result.success = @handler.count2(args.queries)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'count2', seqid)
                end

                def process_select_edges(seqid, iprot, oprot)
                  args = read_args(iprot, Select_edges_args)
                  result = Select_edges_result.new()
                  begin
                    result.success = @handler.select_edges(args.queries)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'select_edges', seqid)
                end

                def process_execute(seqid, iprot, oprot)
                  args = read_args(iprot, Execute_args)
                  result = Execute_result.new()
                  begin
                    @handler.execute(args.operations)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'execute', seqid)
                end

                def process_count(seqid, iprot, oprot)
                  args = read_args(iprot, Count_args)
                  result = Count_result.new()
                  begin
                    result.success = @handler.count(args.operations)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'count', seqid)
                end

                def process_select(seqid, iprot, oprot)
                  args = read_args(iprot, Select_args)
                  result = Select_result.new()
                  begin
                    result.success = @handler.select(args.operations, args.page)
                  rescue Flock::Edges::FlockException => ex
                    result.ex = ex
                  end
                  write_result(result, oprot, 'select', seqid)
                end

              end

              # HELPER FUNCTIONS AND STRUCTURES

              class Contains_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SOURCE_ID = 1
                GRAPH_ID = 2
                DESTINATION_ID = 3

                FIELDS = {
                  SOURCE_ID => {:type => ::Thrift::Types::I64, :name => 'source_id'},
                  GRAPH_ID => {:type => ::Thrift::Types::I32, :name => 'graph_id'},
                  DESTINATION_ID => {:type => ::Thrift::Types::I64, :name => 'destination_id'}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Contains_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Get_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SOURCE_ID = 1
                GRAPH_ID = 2
                DESTINATION_ID = 3

                FIELDS = {
                  SOURCE_ID => {:type => ::Thrift::Types::I64, :name => 'source_id'},
                  GRAPH_ID => {:type => ::Thrift::Types::I32, :name => 'graph_id'},
                  DESTINATION_ID => {:type => ::Thrift::Types::I64, :name => 'destination_id'}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Get_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Flock::Edges::Edge},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Get_metadata_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SOURCE_ID = 1
                GRAPH_ID = 2

                FIELDS = {
                  SOURCE_ID => {:type => ::Thrift::Types::I64, :name => 'source_id'},
                  GRAPH_ID => {:type => ::Thrift::Types::I32, :name => 'graph_id'}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Get_metadata_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Flock::Edges::Metadata},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Contains_metadata_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SOURCE_ID = 1
                GRAPH_ID = 2

                FIELDS = {
                  SOURCE_ID => {:type => ::Thrift::Types::I64, :name => 'source_id'},
                  GRAPH_ID => {:type => ::Thrift::Types::I32, :name => 'graph_id'}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Contains_metadata_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select2_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                QUERIES = 1

                FIELDS = {
                  QUERIES => {:type => ::Thrift::Types::LIST, :name => 'queries', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::SelectQuery}}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select2_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::Results}},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Count2_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                QUERIES = 1

                FIELDS = {
                  QUERIES => {:type => ::Thrift::Types::LIST, :name => 'queries', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::SelectOperation}}}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Count2_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success', :binary => true},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select_edges_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                QUERIES = 1

                FIELDS = {
                  QUERIES => {:type => ::Thrift::Types::LIST, :name => 'queries', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::EdgeQuery}}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select_edges_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::EdgeResults}},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Execute_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                OPERATIONS = 1

                FIELDS = {
                  OPERATIONS => {:type => ::Thrift::Types::STRUCT, :name => 'operations', :class => Flock::Edges::ExecuteOperations}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Execute_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                EX = 1

                FIELDS = {
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Count_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                OPERATIONS = 1

                FIELDS = {
                  OPERATIONS => {:type => ::Thrift::Types::LIST, :name => 'operations', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::SelectOperation}}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Count_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select_args
                include ::Thrift::Struct, ::Thrift::Struct_Union
                OPERATIONS = 1
                PAGE = 2

                FIELDS = {
                  OPERATIONS => {:type => ::Thrift::Types::LIST, :name => 'operations', :element => {:type => ::Thrift::Types::STRUCT, :class => Flock::Edges::SelectOperation}},
                  PAGE => {:type => ::Thrift::Types::STRUCT, :name => 'page', :class => Flock::Edges::Page}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

              class Select_result
                include ::Thrift::Struct, ::Thrift::Struct_Union
                SUCCESS = 0
                EX = 1

                FIELDS = {
                  SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Flock::Edges::Results},
                  EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Flock::Edges::FlockException}
                }

                def struct_fields; FIELDS; end

                def validate
                end

                ::Thrift::Struct.generate_accessors self
              end

            end

          end
        end
