package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblz.class */
public final class zzblz implements zzbma {

    /* renamed from: a */
    public zzayr f25146a;

    public zzblz(zzayr zzayrVar) {
        this.f25146a = zzayrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbma
    /* renamed from: a */
    public final void mo15325a(Map<String, String> map) {
        this.f25146a.mo16061c(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
