class AboutController < ApplicationController
  def index
    # Data sources information
    @data_sources = [
      {
        title: 'Star Wars Universe',
        desc1: "Welcome to Star Wars Universe, your ultimate destination for everything related to the iconic Star Wars franchise!",
        dsec2: ""

      },
    ]

    # ERD information (optional)
    @erd_information = {
      description: 'The Entity Relationship Diagram (ERD) represents the relationships between entities in our database. It shows how different entities are connected and the nature of those connections. Due to the limitations of text-based representation, we cannot provide a visual ERD here. However, you can create your own ERD by analyzing the associations between models and their corresponding database tables.'
    }
  end
end
