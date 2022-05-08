package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adc.class */
public final class adc extends acr<zzdhe<V>> {

    /* renamed from: a */
    private final zzdgd<V> f7246a;

    /* renamed from: b */
    private final /* synthetic */ add f7247b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adc(add addVar, zzdgd<V> zzdgdVar) {
        this.f7247b = addVar;
        this.f7246a = (zzdgd) zzdei.checkNotNull(zzdgdVar);
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final /* synthetic */ void mo5453a(Object obj, Throwable th) {
        zzdhe zzdheVar = (zzdhe) obj;
        add addVar = this.f7247b;
        if (th == null) {
            addVar.m3571a(zzdheVar);
        } else {
            addVar.setException(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final boolean mo5454a() {
        return this.f7247b.isDone();
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: c */
    final /* synthetic */ Object mo5452c() {
        return (zzdhe) zzdei.zza(this.f7246a.zzanm(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.f7246a);
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: d */
    final String mo5451d() {
        return this.f7246a.toString();
    }
}
