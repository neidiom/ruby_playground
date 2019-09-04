# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/#Implicit_vs_Explicit_Blocks

def explicit_block(&block)
  block.call # same as yield
end
explicit_block { puts "Explicit block called" }

explicit_block do
  puts "Explicit block called"
end


# https://mixandgo.com/learn/mastering-ruby-blocks-in-less-than-5-minutes
# What does &block (ampersand parameter) mean?

# Here’s what &object does:

# if the object is a block, it converts it to a Proc.
# if the object is a Proc, it converts it to a block.
# if the object is something else, it calls to_proc on it, and then converts it to a block.


# https://skorks.com/2013/04/ruby-ampersand-parameter-demystified/

# The Implicit Block

def hello
  yield if block_given?
end

hello do
  puts "hello"
end

# The Explicit Block

def hello(&block)
  yield if block_given?
end

hello do
  puts "hello"
end
