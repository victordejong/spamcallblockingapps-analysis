package io.fabric.sdk.android.services.concurrency;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/UnmetDependencyException.class */
public class UnmetDependencyException extends RuntimeException {
    public UnmetDependencyException() {
    }

    public UnmetDependencyException(String str) {
        super(str);
    }

    public UnmetDependencyException(String str, Throwable th) {
        super(str, th);
    }

    public UnmetDependencyException(Throwable th) {
        super(th);
    }
}
