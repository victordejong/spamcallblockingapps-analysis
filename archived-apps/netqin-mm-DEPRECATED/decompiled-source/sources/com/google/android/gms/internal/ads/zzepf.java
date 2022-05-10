package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepf.class */
public final class zzepf<T> {

    /* renamed from: a */
    public final List<zzeph<T>> f28146a;

    /* renamed from: b */
    public final List<zzeph<Collection<T>>> f28147b;

    public zzepf(int i, int i2) {
        this.f28146a = zzeot.m12202a(i);
        this.f28147b = zzeot.m12202a(i2);
    }

    /* renamed from: a */
    public final zzepd<T> m12186a() {
        return new zzepd<>(this.f28146a, this.f28147b);
    }

    /* renamed from: a */
    public final zzepf<T> m12185a(zzeph<? extends T> zzephVar) {
        this.f28146a.add(zzephVar);
        return this;
    }

    /* renamed from: b */
    public final zzepf<T> m12184b(zzeph<? extends Collection<? extends T>> zzephVar) {
        this.f28147b.add(zzephVar);
        return this;
    }
}
