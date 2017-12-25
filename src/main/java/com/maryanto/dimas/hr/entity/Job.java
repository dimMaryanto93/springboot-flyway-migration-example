package com.maryanto.dimas.hr.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Job {

    private String id;
    private String title;
    private BigDecimal minSalary;
    private BigDecimal maxSalary;
}
