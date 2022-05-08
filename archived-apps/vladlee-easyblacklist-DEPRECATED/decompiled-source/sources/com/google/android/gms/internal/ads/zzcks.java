package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcks.class */
public final class zzcks implements zzcis<zzdac, zzcjy> {

    /* renamed from: a */
    private final zzcka f13276a;

    public zzcks(zzcka zzckaVar) {
        this.f13276a = zzckaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final zzcip<zzdac, zzcjy> zzd(String str, JSONObject jSONObject) {
        zzdac zze = this.f13276a.zze(str, jSONObject);
        if (zze == null) {
            return null;
        }
        return new zzcip<>(zze, new zzcjy(), str);
    }
}
