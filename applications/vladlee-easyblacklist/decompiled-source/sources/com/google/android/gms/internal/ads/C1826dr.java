package com.google.android.gms.internal.ads;

import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dr.class */
final class C1826dr implements zzdgt<Void> {

    /* renamed from: a */
    private final /* synthetic */ zzdhe f8396a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1826dr(zzdhe zzdheVar) {
        this.f8396a = zzdheVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(Void r4) {
        List list;
        list = zzatf.f11353a;
        list.remove(this.f8396a);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        List list;
        list = zzatf.f11353a;
        list.remove(this.f8396a);
    }
}
