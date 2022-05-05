package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavn.class */
public final class zzavn {

    /* renamed from: a */
    private BigInteger f11429a = BigInteger.ONE;

    /* renamed from: b */
    private String f11430b = "0";

    public final String zzvp() {
        String bigInteger;
        synchronized (this) {
            bigInteger = this.f11429a.toString();
            this.f11429a = this.f11429a.add(BigInteger.ONE);
            this.f11430b = bigInteger;
        }
        return bigInteger;
    }

    public final String zzvq() {
        String str;
        synchronized (this) {
            str = this.f11430b;
        }
        return str;
    }
}
