package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxe.class */
public final class zzdxe<T> implements zzdxg<T> {

    /* renamed from: a */
    private zzdxp<T> f14713a;

    public static <T> void zzax(zzdxp<T> zzdxpVar, zzdxp<T> zzdxpVar2) {
        zzdxm.checkNotNull(zzdxpVar2);
        zzdxe zzdxeVar = (zzdxe) zzdxpVar;
        if (zzdxeVar.f14713a == null) {
            zzdxeVar.f14713a = zzdxpVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final T get() {
        zzdxp<T> zzdxpVar = this.f14713a;
        if (zzdxpVar != null) {
            return zzdxpVar.get();
        }
        throw new IllegalStateException();
    }
}
