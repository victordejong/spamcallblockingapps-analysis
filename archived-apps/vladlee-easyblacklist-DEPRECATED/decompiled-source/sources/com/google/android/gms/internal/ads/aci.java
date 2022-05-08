package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aci.class */
final class aci extends ach<V> {

    /* renamed from: b */
    private final Callable<V> f7217b;

    /* renamed from: c */
    private final /* synthetic */ acf f7218c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aci(acf acfVar, Callable<V> callable, Executor executor) {
        super(acfVar, executor);
        this.f7218c = acfVar;
        this.f7217b = (Callable) zzdei.checkNotNull(callable);
    }

    @Override // com.google.android.gms.internal.ads.ach
    /* renamed from: a */
    final void mo5462a(V v) {
        this.f7218c.set(v);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: c */
    final V mo5452c() {
        this.f7214a = false;
        return this.f7217b.call();
    }

    @Override // com.google.android.gms.internal.ads.acr
    /* renamed from: d */
    final String mo5451d() {
        return this.f7217b.toString();
    }
}
