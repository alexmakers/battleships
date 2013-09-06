class UI
  def self.display(*args)
    puts args.map { |rows|
      rows.join(' ')
    }.join("\n")
  end
end