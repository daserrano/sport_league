import { Component, OnInit} from 'angular2/core';
import { RouteParams } from 'angular2/router';
import { Http, HTTP_PROVIDERS } from 'angular2/http';

@Component({
        selector: 'ingredient',
        templateUrl: '/app/usda_components/ingredient.component.html'
    }) 
export class HomeComponent {
        message: string;
        constructor(public http: Http) {
            this.http.get('https://know-what-u-eat-antonio6822.c9users.io/api')
            .subscribe(
                data => this.message = data.json().some, 
                err => console.log(err));
        }
}