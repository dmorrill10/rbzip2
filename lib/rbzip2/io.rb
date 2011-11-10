# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2011, Sebastian Staudt

require 'rbzip2/decompressor'

class RBzip2::IO

  def initialize(io)
    @io           = io
    @decompressor = Decompressor.new io
  end

  def close
    @decompressor.close
  end

  def read
    @decompressor.read
  end

end
