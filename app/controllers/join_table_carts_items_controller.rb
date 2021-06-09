class JoinTableCartsItemsController < ApplicationController
  before_action :set_join_table_carts_item, only: %i[ show edit update destroy ]

  # GET /join_table_carts_items or /join_table_carts_items.json
  def index
    @join_table_carts_items = JoinTableCartsItem.all
  end

  # GET /join_table_carts_items/1 or /join_table_carts_items/1.json
  def show
  end

  # GET /join_table_carts_items/new
  def new
    @join_table_carts_item = JoinTableCartsItem.new
  end

  # GET /join_table_carts_items/1/edit
  def edit
  end

  # POST /join_table_carts_items or /join_table_carts_items.json
  def create
    @join_table_carts_item = JoinTableCartsItem.new(join_table_carts_item_params)

    respond_to do |format|
      if @join_table_carts_item.save
        format.html { redirect_to @join_table_carts_item, notice: "Join table carts item was successfully created." }
        format.json { render :show, status: :created, location: @join_table_carts_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join_table_carts_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_carts_items/1 or /join_table_carts_items/1.json
  def update
    respond_to do |format|
      if @join_table_carts_item.update(join_table_carts_item_params)
        format.html { redirect_to @join_table_carts_item, notice: "Join table carts item was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_carts_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_carts_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_carts_items/1 or /join_table_carts_items/1.json
  def destroy
    @join_table_carts_item.destroy
    respond_to do |format|
      format.html { redirect_to join_table_carts_items_url, notice: "Join table carts item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_carts_item
      @join_table_carts_item = JoinTableCartsItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_carts_item_params
      params.fetch(:join_table_carts_item, {})
    end
end
