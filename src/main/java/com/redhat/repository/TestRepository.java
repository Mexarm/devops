package com.redhat.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * TestRepository
 */
@Repository
public class TestRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public String HelloWorld() {
    return jdbcTemplate.queryForObject("select name from testtable", String.class);
  }
}