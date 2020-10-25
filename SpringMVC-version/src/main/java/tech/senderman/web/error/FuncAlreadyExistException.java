package tech.senderman.web.error;

public class FuncAlreadyExistException extends RuntimeException {

    private static final long serialVersionUID = 5861310537366287163L;

    public FuncAlreadyExistException() {
        super();
    }

    public FuncAlreadyExistException(final String message, final Throwable cause) {
        super(message, cause);
    }

    public FuncAlreadyExistException(final String message) {
        super(message);
    }

    public FuncAlreadyExistException(final Throwable cause) {
        super(cause);
    }

}