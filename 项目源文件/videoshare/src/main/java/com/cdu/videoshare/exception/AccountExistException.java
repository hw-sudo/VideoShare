package com.cdu.videoshare.exception;

public class AccountExistException extends RuntimeException {
    public AccountExistException() {
    }

    public AccountExistException(String msg) {
        super((msg));
    }

    public AccountExistException(Throwable cause) {
        super(cause);
    }

    public AccountExistException(String msg, Throwable cause) {
        super(msg, cause);
    }
}