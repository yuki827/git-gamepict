class UsersController < ApplicationController
    @nickname = current_user.nickname
    @posts = current_user.posts
