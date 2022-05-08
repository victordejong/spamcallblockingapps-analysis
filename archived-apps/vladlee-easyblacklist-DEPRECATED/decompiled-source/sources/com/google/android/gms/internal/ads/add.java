package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/add.class */
final class add<V> extends ack<V> implements RunnableFuture<V> {

    /* renamed from: a */
    private volatile acr<?> f7248a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public add(zzdgd<V> zzdgdVar) {
        this.f7248a = new adc(this, zzdgdVar);
    }

    private add(Callable<V> callable) {
        this.f7248a = new ade(this, callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <V> add<V> m5456a(Runnable runnable, @NullableDecl V v) {
        return new add<>(Executors.callable(runnable, v));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <V> add<V> m5455a(Callable<V> callable) {
        return new add<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: a */
    public final String mo3577a() {
        acr<?> acrVar = this.f7248a;
        if (acrVar == null) {
            return super.mo3577a();
        }
        String valueOf = String.valueOf(acrVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
        sb.append("task=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: b */
    public final void mo3566b() {
        acr<?> acrVar;
        super.mo3566b();
        if (m3558d() && (acrVar = this.f7248a) != null) {
            acrVar.m5461e();
        }
        this.f7248a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        acr<?> acrVar = this.f7248a;
        if (acrVar != null) {
            acrVar.run();
        }
        this.f7248a = null;
    }
}
