"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
exports.__esModule = true;
exports.SpinnerComponent = void 0;
var core_1 = require("@angular/core");
var router_1 = require("@angular/router");
var SpinnerComponent = /** @class */ (function () {
    function SpinnerComponent(router) {
        this.router = router;
        this.showSpinner = false;
    }
    SpinnerComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.router.events.subscribe(function (event) {
            if (event instanceof router_1.NavigationStart) {
                _this.showSpinner = true;
            }
            else if (event instanceof router_1.NavigationEnd) {
                setTimeout(function () {
                    _this.showSpinner = false;
                }, 2000);
            }
        });
    };
    SpinnerComponent = __decorate([
        core_1.Component({
            selector: 'app-spinner',
            templateUrl: './spinner.component.html',
            styleUrls: ['./spinner.component.css']
        })
    ], SpinnerComponent);
    return SpinnerComponent;
}());
exports.SpinnerComponent = SpinnerComponent;
