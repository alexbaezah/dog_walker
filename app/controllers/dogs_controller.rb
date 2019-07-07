class DogsController < ApplicationController
    def index 
        @dogs = Dog.all 
    end
    def new 
        @dog = Dog.new
    end
    def create 
        @dog = Dog.new(dog_params)
        if @dog.save 
            redirect_to dogs_path
        else
            render :new
        end
        def edit 
            @dog = Dog.find(params[:id])
        end

    def update 
     @dog = Dog.find(params[:id])
        if @dog.update(dog_params)
        redirect_to dogs_path
        else
        render :edit
        end
    end
end
    def delete
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
        end
    end

                
    private
            
       def dog_params 
       params.require(:dog).permit(:name, :age, :frequencie_walk, :walking_time)
       end
    

