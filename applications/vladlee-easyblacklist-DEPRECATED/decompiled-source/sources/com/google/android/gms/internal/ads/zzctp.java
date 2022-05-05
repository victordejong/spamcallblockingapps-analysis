package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctp.class */
public final class zzctp implements zzcty<Bundle> {

    /* renamed from: a */
    private final String f13866a;

    /* renamed from: b */
    private final String f13867b;

    /* renamed from: c */
    private final String f13868c;

    /* renamed from: d */
    private final String f13869d;

    /* renamed from: e */
    private final Long f13870e;

    public zzctp(String str, String str2, String str3, String str4, Long l) {
        this.f13866a = str;
        this.f13867b = str2;
        this.f13868c = str3;
        this.f13869d = str4;
        this.f13870e = l;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdaa.zza(bundle2, "gmp_app_id", this.f13866a);
        zzdaa.zza(bundle2, "fbs_aiid", this.f13867b);
        zzdaa.zza(bundle2, "fbs_aeid", this.f13868c);
        zzdaa.zza(bundle2, "apm_id_origin", this.f13869d);
        Long l = this.f13870e;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
