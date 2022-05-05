package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abw.class */
final class abw<V, X extends Throwable> extends abt<V, X, zzded<? super X, ? extends V>, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abw(zzdhe<? extends V> zzdheVar, Class<X> cls, zzded<? super X, ? extends V> zzdedVar) {
        super(zzdheVar, cls, zzdedVar);
    }

    @Override // com.google.android.gms.internal.ads.abt
    @NullableDecl
    /* renamed from: a */
    final /* synthetic */ Object mo5490a(Object obj, Throwable th) {
        return ((zzded) obj).apply(th);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    final void mo5491a(@NullableDecl V v) {
        set(v);
    }
}
