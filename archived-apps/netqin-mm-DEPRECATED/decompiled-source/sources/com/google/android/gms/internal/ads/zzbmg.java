package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmg.class */
public final class zzbmg implements zzbma {

    /* renamed from: a */
    public final zzayr f25154a;

    public zzbmg(zzayr zzayrVar) {
        this.f25154a = zzayrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbma
    /* renamed from: a */
    public final void mo15325a(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get("value");
        if ("auto_collect_location".equals(str)) {
            this.f25154a.mo16064b(Boolean.parseBoolean(str2));
        }
    }
}
