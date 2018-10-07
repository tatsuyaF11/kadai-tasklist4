class TasksController < ApplicationController
  params.require(:task).permit(:content, :status)
end
