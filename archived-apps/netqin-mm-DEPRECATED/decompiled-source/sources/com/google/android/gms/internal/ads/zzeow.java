package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeow.class */
public final class zzeow<T> implements zzeoy<T> {

    /* renamed from: a */
    public zzeph<T> f28141a;

    /* renamed from: a */
    public static <T> void m12196a(zzeph<T> zzephVar, zzeph<T> zzephVar2) {
        zzepe.m12189a(zzephVar2);
        zzeow zzeowVar = (zzeow) zzephVar;
        if (zzeowVar.f28141a == null) {
            zzeowVar.f28141a = zzephVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final T get() {
        zzeph<T> zzephVar = this.f28141a;
        if (zzephVar != null) {
            return zzephVar.get();
        }
        throw new IllegalStateException();
    }
}
