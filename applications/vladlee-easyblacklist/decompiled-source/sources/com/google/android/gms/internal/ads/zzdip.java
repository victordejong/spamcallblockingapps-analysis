package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdip.class */
public final class zzdip<P> {

    /* renamed from: a */
    private final P f14316a;

    /* renamed from: b */
    private final byte[] f14317b;

    /* renamed from: c */
    private final zzdne f14318c;

    /* renamed from: d */
    private final zzdnw f14319d;

    public zzdip(P p, byte[] bArr, zzdne zzdneVar, zzdnw zzdnwVar) {
        this.f14316a = p;
        this.f14317b = Arrays.copyOf(bArr, bArr.length);
        this.f14318c = zzdneVar;
        this.f14319d = zzdnwVar;
    }

    public final P zzasi() {
        return this.f14316a;
    }

    public final zzdne zzasj() {
        return this.f14318c;
    }

    public final zzdnw zzask() {
        return this.f14319d;
    }

    public final byte[] zzasl() {
        byte[] bArr = this.f14317b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
