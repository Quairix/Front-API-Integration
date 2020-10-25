package tech.senderman.persistence.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tech.senderman.persistence.model.Func;

import java.util.List;

@Repository
public interface FuncRepository extends JpaRepository<Func, Long> {
    Func findByName(String name);

    @Override
    void delete(Func func);

    List<Func> findAll();
}
