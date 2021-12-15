class PromptsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    prompts = Prompt.all
    render json: prompts
  end

  def show
    prompt = Prompt.find_by(id: params[:id])
    render json: prompt
  end

  def create
    prompt = Prompt.new(
      title: params["title"],
      content: params["content"],
    )
    if prompt.save
      render json: prompt
    else
      render json: { errors: prompt.error.full_messages }, status: 422
    end
  end

  def update
    prompt_id = params["id"]
    prompt = Prompt.find_by(id: prompt_id)

    prompt.title = params["title"] || prompt.title
    prompt.content = params["content"] || prompt.content

    if prompt.save
      render json: prompt
    else
      render json: { errors: prompt.error.full_messages }, status: 422
    end
  end

  def destroy
    prompt_id = params["id"]
    prompt = Prompt.find_by(id: prompt_id)

    prompt.destroy
    render json: { message: "This prompt has been destroyed" }
  end
end
