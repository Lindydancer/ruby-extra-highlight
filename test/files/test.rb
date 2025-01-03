### test.rb --- Test file for ruby-extra-highlight,el


# ----------------------------------------
# Function parameters.
#

def f0
end

def f1()
end

def f2(parameter)
end

def f3(parameter1, parameter2)
end

def f4(parameter1 = 10, parameter2 = 20)
end

def f5(parameter1 = 10, parameter2 = f1(), parameter3 = 0)
end

def f6(parameter1 = 10, parameter2 = f3(var1, var2), parameter3 = 0)
end

def f7(parameter1,
       parameter2,
       parameter3)
end

def f8(parameter,    # Comment
       parameter,    # Another comment
       parameter)
end

def print(o = STDOUT, indent = "")
end

# Make sure a missing closing parenthesis doesn't cause the
# highlighthing of the text next function to fail.
def f9(missing_parenthesis

def f10(parameter)

#
# def not_in_comment(arg1, arg2, arg2)
#

"def not_in_strings(arg1, arg2, arg3)"

# ----------------------------------------
# Block parameters.
#

def block1
  func do
  end

  func do |param|
  end

  func do |param1, param2|
    param1 + param2
  end
end

def block2
  func {
  }

  func { |param1, param2|
    param1 + param2
  }
end

# The end.
