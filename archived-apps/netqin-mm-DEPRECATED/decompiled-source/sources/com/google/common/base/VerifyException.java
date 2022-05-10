package com.google.common.base;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/VerifyException.class */
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(String str) {
        super(str);
    }

    public VerifyException(String str, Throwable th) {
        super(str, th);
    }

    public VerifyException(Throwable th) {
        super(th);
    }
}
