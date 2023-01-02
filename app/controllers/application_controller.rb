class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/tokens" do
    tokens = Token.all.order(:token_id)
    tokens.to_json
  end
  get "/tokens/:board_id" do
    tokens = Token.where(board_id: params[:board_id])
    puts tokens
    tokens.to_json
  end
  get "/boards" do
    boards = Board.all.order(:board_id)
    boards.to_json
  end
  post "/tokens" do
    token = Token.create(
      board_id: params[:board_id], 
      horizontal: params[:horizontal], 
      vertical: params[:vertical], 
      token_value: params[:token_value]
      )
    token.to_json
  end
  post "/boards" do
    board = Board.create(
      board_id: param[:board_id]
    )
    board.to_json
  end
  delete '/tokens/:id' do
    token = Token.find(params[:id])
    token.destroy
    token.to_json
  end
  patch '/tokens/:id' do
    token = Token.find(params[:id])
    token.update(
      horizontal: params[:horizontal],
      vertical: params[:vertical],
      token_value: params[:token_value]
    )
    token.to_json
  end
end
