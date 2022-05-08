package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ada.class */
final class ada extends TimeoutException {
    private ada(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ada(String str, byte b) {
        this(str);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        synchronized (this) {
            setStackTrace(new StackTraceElement[0]);
        }
        return this;
    }
}
