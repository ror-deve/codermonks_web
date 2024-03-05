// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import { Application } from "@hotwired/stimulus";
const application = Application.start();
window.Stimulus = application;

import moment from "moment";
import Raphael from "raphael";

import Rails from "@rails/ujs";

window.moment = moment;
window.Raphael = Raphael;
window.Rails = Rails;
Rails.start();

import "./controllers";
// import "add_jquery";  

import { ApplicationController } from "./controllers/application_controller";

window.ApplicationController = ApplicationController;