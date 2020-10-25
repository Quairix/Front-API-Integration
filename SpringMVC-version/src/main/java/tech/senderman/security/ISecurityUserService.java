package tech.senderman.security;

public interface ISecurityUserService {

    String validatePasswordResetToken(long id, String token);

}
