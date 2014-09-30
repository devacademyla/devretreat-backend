# Be sure to restart your server when you modify this file.
ActiveSupport::Inflector.inflections.clear
ActiveSupport::Inflector.inflections do |inflect|
 inflect.plural /([rlnd])([A-Z]|_|$)/, '\1es\2'
 inflect.plural /([aeiou])([A-Z]|_|$)/, '\1s\2'
 inflect.singular /([aeiou])s([A-Z]|_|$)/, '\1\2'
 inflect.singular /([rlnd])es([A-Z]|_|$)/, '\1\2'
end
# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
