package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ns */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ns.class */
public final class C2097ns implements zzafn<Object> {

    /* renamed from: a */
    private WeakReference<zzbvr> f10253a;

    private C2097ns(zzbvr zzbvrVar) {
        this.f10253a = new WeakReference<>(zzbvrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2097ns(zzbvr zzbvrVar, byte b) {
        this(zzbvrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        zzbpd zzbpdVar;
        zzbvr zzbvrVar = this.f10253a.get();
        if (zzbvrVar != null) {
            zzbpdVar = zzbvrVar.f12478g;
            zzbpdVar.onAdImpression();
        }
    }
}
