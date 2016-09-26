class Capturedimage < ActiveRecord::Base
  enum role: {main: 0, sub: 1 }
end
