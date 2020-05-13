package com.toledo.minhasfinancas.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.toledo.minhasfinancas.domain.FinancialRecord;

@Repository
@Transactional(readOnly = true)
public interface FinancialRecordRepository extends JpaRepository<FinancialRecord, Long> {

}
