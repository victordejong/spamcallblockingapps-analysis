package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.pq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pq.class */
public final class C2149pq implements zzdgt<zzbdi> {

    /* renamed from: a */
    private final /* synthetic */ String f10335a;

    /* renamed from: b */
    private final /* synthetic */ Map f10336b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2149pq(String str, Map map) {
        this.f10335a = str;
        this.f10336b = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzbdi zzbdiVar) {
        zzbdiVar.zza(this.f10335a, this.f10336b);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
    }
}
