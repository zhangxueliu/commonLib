package com.ob.archetype.dal.common;

/**
 * 
 * MongoDB官方driver统一使用了RuntimeException, 如果没有在程序中捕获并处理，
 * 可能会造成预期外的结果。所以与MongoDB的交互中，如遇RuntimeException，会封装成
 * 本DataAccessException并抛出，强制调用程序捕获并处理.
 *
 */
public class DataAccessException extends Exception {

    private static final long serialVersionUID = -4415650368323650508L;

    public DataAccessException() {
        super();
    }

    public DataAccessException(String message) {
        super(message);
    }

    public DataAccessException(String message, Throwable t) {
        super(message, t);
    }
}
