package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ade.class */
public final class ade extends acr<V> {

    /* renamed from: a */
    private final Callable<V> f7249a;

    /* renamed from: b */
    private final /* synthetic */ add f7250b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ade(add addVar, Callable<V> callable) {
        this.f7250b = addVar;
        this.f7249a = (Callable) zzdei.checkNotNull(callable);
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final void mo5453a(V v, Throwable th) {
        add addVar = this.f7250b;
        if (th == null) {
            addVar.set(v);
        } else {
            addVar.setException(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: a */
    final boolean mo5454a() {
        return this.f7250b.isDone();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: c */
    final V mo5452c() {
        return this.f7249a.call();
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: d */
    final String mo5451d() {
        return this.f7249a.toString();
    }
}
