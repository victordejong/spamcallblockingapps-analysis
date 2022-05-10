package com.google.common.util.concurrent;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/ExecutionError.class */
public class ExecutionError extends Error {
    public static final long serialVersionUID = 0;

    public ExecutionError() {
    }

    public ExecutionError(Error error) {
        super(error);
    }

    public ExecutionError(String str) {
        super(str);
    }

    public ExecutionError(String str, Error error) {
        super(str, error);
    }
}
