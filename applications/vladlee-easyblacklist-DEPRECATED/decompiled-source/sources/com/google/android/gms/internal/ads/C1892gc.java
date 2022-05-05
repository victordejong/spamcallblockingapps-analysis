package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.gc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gc.class */
public final class C1892gc implements zzdgt<Object> {

    /* renamed from: a */
    private final /* synthetic */ String f8493a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1892gc(String str) {
        this.f8493a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzq.zzku().zza(th, this.f8493a);
    }
}
