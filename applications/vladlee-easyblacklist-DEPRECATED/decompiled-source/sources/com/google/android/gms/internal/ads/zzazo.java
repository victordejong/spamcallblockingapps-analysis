package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazo.class */
public class zzazo<T> {

    /* renamed from: a */
    private final zzazl<T> f11559a = new zzazl<>();

    /* renamed from: b */
    private final AtomicInteger f11560b = new AtomicInteger(0);

    public zzazo() {
        zzdgs.zza(this.f11559a, new C1895gf(this), zzazd.zzdwj);
    }

    @Deprecated
    public final int getStatus() {
        return this.f11560b.get();
    }

    @Deprecated
    public final void reject() {
        this.f11559a.setException(new Exception());
    }

    @Deprecated
    public final void zza(zzazp<T> zzazpVar, zzazn zzaznVar) {
        zzdgs.zza(this.f11559a, new C1894ge(zzazpVar, zzaznVar), zzazd.zzdwj);
    }

    @Deprecated
    public final void zzm(T t) {
        this.f11559a.set(t);
    }
}
