package com.techgeeknext.services;

import com.techgeeknext.entities.Branch;

import java.util.stream.Stream;

public interface BranchService {
    Stream<Branch> getCompanies();
}
