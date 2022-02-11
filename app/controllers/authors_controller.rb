class AuthorsController < ApplicationController
    before_action :authenticate_author!

    layout 'authors'

    def respondAuthors
        @authors = Author.all
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @users }
            format.xml { render xml: @users }
            format.any { render inline: 'Use json or xml!' }
        end
    end
end