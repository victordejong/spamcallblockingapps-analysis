package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgl.class */
public final class zzgl extends Exception {

    /* renamed from: a */
    private final int f14821a;

    /* renamed from: b */
    private final int f14822b;

    private zzgl(int i, Throwable th, int i2) {
        super(null, th);
        this.f14821a = i;
        this.f14822b = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzgl m3250a(RuntimeException runtimeException) {
        return new zzgl(2, runtimeException, -1);
    }

    public static zzgl zza(IOException iOException) {
        return new zzgl(0, iOException, -1);
    }

    public static zzgl zza(Exception exc, int i) {
        return new zzgl(1, exc, i);
    }
}
