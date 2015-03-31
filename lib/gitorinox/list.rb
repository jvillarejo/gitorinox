module Gitorinox
  class List < Command

    def execute
      @names = wathed_repositories_name
      
      if match
        @names.select! { |n| n.match(match) }
      end

      @names.each { |n| puts n}
    end

    def wathed_repositories_name
      result = []
      github.activity.watching.watched.each_page do |page|
        page.each do |repo| 
          result << repo.name
        end
      end
      result
    end
  end
end