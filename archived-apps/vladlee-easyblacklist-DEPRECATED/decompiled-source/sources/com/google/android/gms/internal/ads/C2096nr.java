package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.nr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nr.class */
public final class C2096nr implements zzafn<Object> {

    /* renamed from: a */
    private WeakReference<zzbvr> f10252a;

    private C2096nr(zzbvr zzbvrVar) {
        this.f10252a = new WeakReference<>(zzbvrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2096nr(zzbvr zzbvrVar, byte b) {
        this(zzbvrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        zzboq zzboqVar;
        zzbvr zzbvrVar = this.f10252a.get();
        if (zzbvrVar != null && "_ac".equals(map.get("eventName"))) {
            zzboqVar = zzbvrVar.f12479h;
            zzboqVar.onAdClicked();
        }
    }
}
