languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
  new_style = {style: []}
  languages.each { |s, l| new_hash.merge!(l) }
  new_hash.each { |k, v| v.merge!(new_style) }

  languages.each do |s, l|
    l.each { |key, value| new_hash[key][:style] << s }
  end

  new_hash
end

puts reformat_languages(languages)
