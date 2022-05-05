package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznr.class */
public class zznr extends IOException {

    /* renamed from: a */
    private final int f15199a;

    /* renamed from: b */
    private final zznq f15200b;

    public zznr(IOException iOException, zznq zznqVar, int i) {
        super(iOException);
        this.f15200b = zznqVar;
        this.f15199a = i;
    }

    public zznr(String str, zznq zznqVar, int i) {
        super(str);
        this.f15200b = zznqVar;
        this.f15199a = 1;
    }

    public zznr(String str, IOException iOException, zznq zznqVar, int i) {
        super(str, iOException);
        this.f15200b = zznqVar;
        this.f15199a = 1;
    }
}
