package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxc.class */
public final class zzcxc implements zzctb<zzdpa, zzcut> {

    /* renamed from: a */
    public final Map<String, zzctc<zzdpa, zzcut>> f26704a = new HashMap();

    /* renamed from: b */
    public final zzcku f26705b;

    public zzcxc(zzcku zzckuVar) {
        this.f26705b = zzckuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzctb
    /* renamed from: a */
    public final zzctc<zzdpa, zzcut> mo13804a(String str, JSONObject jSONObject) throws zzdos {
        synchronized (this) {
            zzctc<zzdpa, zzcut> zzctcVar = this.f26704a.get(str);
            zzctc<zzdpa, zzcut> zzctcVar2 = zzctcVar;
            if (zzctcVar == null) {
                zzdpa a = this.f26705b.m14103a(str, jSONObject);
                if (a == null) {
                    return null;
                }
                zzctcVar2 = new zzctc<>(a, new zzcut(), str);
                this.f26704a.put(str, zzctcVar2);
            }
            return zzctcVar2;
        }
    }
}
