package com.c0821g1.sprint1.controller;

import com.c0821g1.sprint1.dto.RequestMail;
import com.c0821g1.sprint1.entity.floor.Floors;
import com.c0821g1.sprint1.service.impl.FloorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("http://localhost:4200")
@RequestMapping(value = "/api/floors")
public class FloorsRestController {
    @Autowired
    FloorServiceImpl floorService;

    @Autowired
    public JavaMailSender emailSender;
    /**
     * Created: DuyNP
     * Method: return List floors
     * @param
     * @returnResponseEntity<>(floors, HttpStatus.OK)
     */
    @GetMapping("/list")
    public ResponseEntity<List<Floors>> findAllFloors() {
        List<Floors> floors = floorService.findAllFloors();
        if (floors.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(floors, HttpStatus.OK);
    }
    /**
     * Created: DuyNP
     * Method: return floorsDTO
     * @return ResponseEntity<>(floorsDTO, HttpStatus.OK);
     */
    @GetMapping("/area")
    public ResponseEntity<String> findAllFloorsArea() {
        String floorsDTO = floorService.findAllFloorsArea();
        if (floorsDTO==null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(floorsDTO, HttpStatus.OK);
    }

    /**
     * Created: DuyNP
     * Method: return floors by id
     * @param id
     * @return ResponseEntity<>(floors, HttpStatus.OK);
     */
    @GetMapping("/find-by-id/{id}")
    public ResponseEntity<Floors> findFloorsById(@PathVariable Integer id) {
        Floors floors = floorService.findById(id);
        if (floors==null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(floors, HttpStatus.OK);
    }
    /**
     * Created: DuyNP
     * Method: delete flag floors by id
     * @param id
     * @return ResponseEntity<>(floors,HttpStatus.OK);
     */

    @DeleteMapping(value = "/delete-flag/{id}")
    public ResponseEntity<Floors> deleteFlagFloorsById(@PathVariable Integer id) {
        Floors floors = this.floorService.findById(id);
        if (floors==null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        floors.setFloorDeleteFlag(true);
        this.floorService.editFloors(floors);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("send-email")
    public ResponseEntity<?> sendEmailTo(@RequestBody RequestMail requestMail) {
        sendMail(requestMail);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    private void sendMail (RequestMail requestMail){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(requestMail.getEmail());
        message.setSubject("[C0821G1] KÍNH CHÀO QUÝ KHÁCH");
        message.setText("DEAR " +requestMail.getName() + ", \n \n \n CTY - TNHH C0821G1 CODEGYM XIN CẢM ƠN QUÝ KHÁCH " + requestMail.getName() +
                " ĐÃ GỞI YÊU CẦU XIN THÊM THÔNG TIN VỀ CÔNG TY CHÚNG TÔI. \n" +
                " XIN QUÝ KHÁCH VUI LÒNG ĐỢI SẼ CÓ NHÂN VIÊN CỦA CÔNG TY CHÚNG TÔI LIÊN LẠC VỚI QUÝ KHÁCH THÔNG QUA EMAIL NÀY \n" +
                " XIN CẢM ƠN QUÝ KHÁCH ĐÃ QUAN TÂM ĐẾN CÔNG TY CHÚNG TÔI! \n \n" +
                " TRÂN TRỌNG CẢM ƠN QUÝ KHÁCH");
        this.emailSender.send(message);
    }
}
