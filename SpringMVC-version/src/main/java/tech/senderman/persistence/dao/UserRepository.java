package tech.senderman.persistence.dao;

import tech.senderman.persistence.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);

    @Override
    void delete(User user);

    List<User> findAll();
}
