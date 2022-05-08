package com.google.android.gms.internal.ads;

import java.lang.Throwable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abs.class */
public final class abs<V, X extends Throwable> extends abt<V, X, zzdgf<? super X, ? extends V>, zzdhe<? extends V>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abs(zzdhe<? extends V> zzdheVar, Class<X> cls, zzdgf<? super X, ? extends V> zzdgfVar) {
        super(zzdheVar, cls, zzdgfVar);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    final /* synthetic */ Object mo5490a(Object obj, Throwable th) {
        zzdgf zzdgfVar = (zzdgf) obj;
        zzdhe zzf = zzdgfVar.zzf(th);
        zzdei.zza(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdgfVar);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    final /* synthetic */ void mo5491a(Object obj) {
        m3571a((zzdhe) ((zzdhe) obj));
    }
}
