package com.c0821g1.sprint1.service;

import com.c0821g1.sprint1.entity.customer.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface CustomerService {
    //    VyLTT - customer list
    Page<Customer> getAll(Pageable pageable);
    List<Customer> getAll1();

    Optional<Customer> findById(Integer id);

    //    VyLTT - search by name, email, phone, identify number
    Page<Customer> findCustomerByNameAndEmailAndPhoneAndIdentify(Pageable pageable,
                                                                 String customer_name,
                                                                 String customer_email,
                                                                 String customer_phone,
                                                                 String customer_identify_number);
    void deleteCustomer(Integer id);
}
