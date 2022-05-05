package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.gd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gd.class */
public final class C1893gd implements zzdgt<Object> {

    /* renamed from: a */
    private final /* synthetic */ String f8494a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1893gd(String str) {
        this.f8494a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzq.zzku().zzb(th, this.f8494a);
    }
}
