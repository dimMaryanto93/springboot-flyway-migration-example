package com.maryanto.dimas.hr.dao;

import com.maryanto.dimas.hr.entity.Region;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Repository
@Transactional(readOnly = true)
public class RegionDao {

    private final NamedParameterJdbcTemplate namedJdbc;
    private final JdbcTemplate jdbc;

    @Autowired
    public RegionDao(JdbcTemplate jdbc, NamedParameterJdbcTemplate paramsJdbc) {
        this.jdbc = jdbc;
        this.namedJdbc = paramsJdbc;
    }

    /**
     * saving data region
     * @param region
     */
    public void save(Region region) {
        Map<String, Object> params = new HashMap<>();
        params.put("name", region.getName());
        this.namedJdbc.update(
                "INSERT INTO public.regions (region_id, region_name) VALUES (:id, :name)",
                params);
    }
}
