# frozen_string_literal: true

module Api
  module V1
    # A collection belongs to 1 user
    class CollectionsController < ApplicationController
      before_action :authorize_access_request!, except: %i[show index]
      before_action :set_collection, only: %i[show update destroy]

      # GET /collections
      def index
        @collections = current_user.collections.all

        render json: @collections
      end

      # GET /collections/1
      def show
        render json: @collection
      end

      # POST /collections
      def create
        @collection = current_user.collections.build(collection_params)

        if @collection.save
          render json: @collection, status: :created, location: @collection
        else
          render json: @collection.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /collections/1
      def update
        if @collection.update(collection_params)
          render json: @collection
        else
          render json: @collection.errors, status: :unprocessable_entity
        end
      end

      # DELETE /collections/1
      def destroy
        @collection.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_collection
        @collection = current_user.collections.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def collection_params
        params.require(:collection).permit(:name, :user_id)
      end
    end
  end
end
