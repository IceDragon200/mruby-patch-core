class Time
  MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  MONTH_ABBRS = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  WEEKDAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
  WEEKDAY_ABBRS = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
  MERIDIAN_LC = ['am', 'pm']
  MERIDIAN_UC = ['AM', 'PM']

  # @return [Integer] 12 hour representation
  def hour12
    hour % 12
  end

  # @return [Integer] meridian index
  def meridian
    if hour >= 12
      1
    else
      0
    end
  end

  # Formats the time given a template string
  #
  # @param [String] template
  # @return [String] result
  def strftime(template)
    return "" if template.empty?
    result = ""
    # note this has to be done without regular expressions, as mruby doesn't
    # ship with regexp out the box
    idx = 0
    len = template.size
    while idx < len
      c = template[idx]
      if c == '%'
        idx += 1
        loop do
          fc = template[idx]
          case fc
          when '%'
            result << '%'
            break
          when 'a'
            result << WEEKDAY_ABBRS[wday]
            break
          when 'A'
            result << WEEKDAYS[wday]
            break
          when 'b'
            result << MONTH_ABBRS[month - 1]
            break
          when 'B'
            result << MONTHS[month - 1]
            break
          when 'c'
            result << strftime("%a %b %X %Y")
            break
          when 'd'
            result << format("%02d", day)
            break
          when 'e'
            result << "#{day}"
            break
          when 'H'
            result << format("%02d", hour)
            break
          when 'I'
            result << format("%02d", hour12)
            break
          when 'j'
            result << format("%03d", yday)
            break
          when 'l'
            result << "#{hour12}"
            break
          when 'm'
            result << format("%02d", month)
            break
          when 'M'
            result << format("%02d", min)
            break
          when 'p'
            result << MERIDIAN_LC[meridian]
            break
          when 'P'
            result << MERIDIAN_UC[meridian]
            break
          when 'S'
            result << format("%02d", sec)
            break
          when 'U', 'W'
            warn "Unsupported format #{fc}"
            break
          when 'w'
            result << "#{wday}"
            break
          when 'x'
            result << strftime("%m/%d/%y")
            break
          when 'X'
            result << strftime("%H:%M:%S")
            break
          when 'y'
            result << format("%02d", year % 100)
            break
          when 'Y'
            result << "#{year}"
            break
          when 'Z'
            result << zone
            break
          end
          idx += 1
          break if idx >= len
        end
        idx += 1
      else
        result << c
        idx += 1
      end
    end
    result
  end
end
