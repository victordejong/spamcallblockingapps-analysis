package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxn.class */
public final class zzdxn<T> {

    /* renamed from: a */
    private final List<zzdxp<T>> f14720a;

    /* renamed from: b */
    private final List<zzdxp<Collection<T>>> f14721b;

    private zzdxn(int i, int i2) {
        this.f14720a = zzdxb.zzhh(i);
        this.f14721b = zzdxb.zzhh(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdxn(int i, int i2, byte b) {
        this(i, i2);
    }

    public final zzdxn<T> zzap(zzdxp<? extends T> zzdxpVar) {
        this.f14720a.add(zzdxpVar);
        return this;
    }

    public final zzdxn<T> zzaq(zzdxp<? extends Collection<? extends T>> zzdxpVar) {
        this.f14721b.add(zzdxpVar);
        return this;
    }

    public final zzdxl<T> zzbdp() {
        return new zzdxl<>(this.f14720a, this.f14721b, (byte) 0);
    }
}
