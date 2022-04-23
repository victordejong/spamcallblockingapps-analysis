package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmf.class */
public final class zzcmf implements zzcis<zzdac, zzcjx> {

    /* renamed from: a */
    private final Map<String, zzcip<zzdac, zzcjx>> f13351a = new HashMap();

    /* renamed from: b */
    private final zzcka f13352b;

    public zzcmf(zzcka zzckaVar) {
        this.f13352b = zzckaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final zzcip<zzdac, zzcjx> zzd(String str, JSONObject jSONObject) {
        synchronized (this) {
            zzcip<zzdac, zzcjx> zzcipVar = this.f13351a.get(str);
            zzcip<zzdac, zzcjx> zzcipVar2 = zzcipVar;
            if (zzcipVar == null) {
                zzdac zze = this.f13352b.zze(str, jSONObject);
                if (zze == null) {
                    return null;
                }
                zzcipVar2 = new zzcip<>(zze, new zzcjx(), str);
                this.f13351a.put(str, zzcipVar2);
            }
            return zzcipVar2;
        }
    }
}
