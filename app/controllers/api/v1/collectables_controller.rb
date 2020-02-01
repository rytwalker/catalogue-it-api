# frozen_string_literal: true

module Api
  module V1
    # Collectables are items in a collection
    class CollectablesController < ApplicationController
      before_action :authorize_access_request!, except: %i[show index]
      before_action :set_collectable, only: %i[show update destroy]

      # GET /collectables
      def index
        @collectables = Collectable.all

        render json: @collectables
      end

      # GET /collectables/1
      def show
        render json: @collectable
      end

      # POST /collectables
      def create
        @collectable = Collectable.new(collectable_params)

        if @collectable.save
          render json: @collectable, status: :created, location: @collectable
        else
          render json: @collectable.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /collectables/1
      def update
        if @collectable.update(collectable_params)
          render json: @collectable
        else
          render json: @collectable.errors, status: :unprocessable_entity
        end
      end

      # DELETE /collectables/1
      def destroy
        @collectable.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_collectable
        @collectable = Collectable.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def collectable_params
        params.require(:collectable).permit(:name, :user_id, :collection_id, :likes, :for_sale, :image)
      end
    end
  end
end
