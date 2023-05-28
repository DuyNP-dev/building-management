import { Component, OnInit } from '@angular/core';
import {FormControl, FormGroup, Validators} from '@angular/forms';
import {RequestMail} from '../../../model/RequestMail';
import Swal from 'sweetalert2';
import {FloorService} from '../../../service/floor/floor.service';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css']
})
export class ContactComponent implements OnInit {

  requestMail: RequestMail;
  requestForm = new FormGroup({
    name: new FormControl('', Validators.required),
    email: new FormControl('', Validators.required),
    content: new FormControl('', Validators.required)
  });
  constructor(private requestMailService: FloorService) {
  }

  ngOnInit(): void {
  }

  sendMail() {
    this.requestMail = this.requestForm.value;
    this.requestMailService.sendEmail(this.requestMail).subscribe(
      next => {
        this.callToastFailList();
      }
    );
    this.requestForm.reset();
  }
  private callToastFailList() {
    Swal.fire({
      position: 'top',
      icon: 'success',
      title: 'Đã gửi yêu cầu thành công. Vui lòng kiểm tra email.',
      showConfirmButton: false,
      timer: 2000
    });
  }
}
