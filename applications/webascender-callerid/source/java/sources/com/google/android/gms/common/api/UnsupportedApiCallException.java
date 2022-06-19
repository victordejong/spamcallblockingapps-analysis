package com.google.android.gms.common.api;

import com.google.android.gms.common.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/UnsupportedApiCallException.class */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: f */
    private final d f3325f;

    public UnsupportedApiCallException(d dVar) {
        this.f3325f = dVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.f3325f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb.append("Missing ");
        sb.append(valueOf);
        return sb.toString();
    }
}
