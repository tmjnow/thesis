module MetaModel
module Log
  extend self
  
  def out(*msg)
    puts timestamp + msg.join(' ')
  end
  
  def task(t)
    puts
    puts timestamp + "Task | #{t[:mission].to_s.capitalize}: #{t[t[:mission]]}"
    puts '-'*100
    puts t.opts.select { |k,v| not [:recommenders].include?(k) }.to_s
    puts
  end

  def evaluation(x)
    puts timestamp + "Evaluation results:"
    puts x.to_s
    puts
  end
  
  def timestamp
    Time.now.strftime("[%T] ")
  end

end
end
