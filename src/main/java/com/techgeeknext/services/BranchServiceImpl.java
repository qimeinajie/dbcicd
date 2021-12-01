package com.techgeeknext.services;

import com.techgeeknext.entities.Branch;
import com.techgeeknext.repositories.BranchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.stream.Stream;
import java.util.stream.StreamSupport;

@Component
public class BranchServiceImpl implements BranchService {

    private BranchRepository companyRepository;

    @Autowired
    public BranchServiceImpl(BranchRepository companyRepository) {
        this.companyRepository = companyRepository;
    }

    @Override
    public Stream<Branch> getCompanies() {
        return StreamSupport.stream(companyRepository.findAll().spliterator(), true);
    }
}
