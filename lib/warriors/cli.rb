class CLI

    def run
        intro
        Scraper.scrape_team
    end

    def intro  
        puts "\n\nTesting\n\n\n"
    end    

end    