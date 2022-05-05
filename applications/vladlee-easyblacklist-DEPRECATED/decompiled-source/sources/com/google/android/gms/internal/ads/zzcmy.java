package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmy.class */
public final class zzcmy implements zzcis<zzani, zzcjy> {

    /* renamed from: a */
    private final zzcnz f13381a;

    public zzcmy(zzcnz zzcnzVar) {
        this.f13381a = zzcnzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final zzcip<zzani, zzcjy> zzd(String str, JSONObject jSONObject) {
        zzani zzgh = this.f13381a.zzgh(str);
        if (zzgh == null) {
            return null;
        }
        return new zzcip<>(zzgh, new zzcjy(), str);
    }
}
