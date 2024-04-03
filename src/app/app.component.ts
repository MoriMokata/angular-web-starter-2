import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = process.env["API_KEY"] || 'env-tes-2';

  ngOnInit(): void {
      console.log("test", process.env["API_KEY"]);
      
  }
}
