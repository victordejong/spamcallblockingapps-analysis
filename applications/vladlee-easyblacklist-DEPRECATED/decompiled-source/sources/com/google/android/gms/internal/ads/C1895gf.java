package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.gf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gf.class */
public final class C1895gf implements zzdgt<T> {

    /* renamed from: a */
    private final /* synthetic */ zzazo f8497a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1895gf(zzazo zzazoVar) {
        this.f8497a = zzazoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(T t) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f8497a.f11560b;
        atomicInteger.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f8497a.f11560b;
        atomicInteger.set(-1);
    }
}
