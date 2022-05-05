package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctt.class */
public final class zzctt implements zzcty<Bundle> {

    /* renamed from: a */
    private final boolean f13877a;

    /* renamed from: b */
    private final boolean f13878b;

    /* renamed from: c */
    private final String f13879c;

    /* renamed from: d */
    private final boolean f13880d;

    /* renamed from: e */
    private final int f13881e;

    /* renamed from: f */
    private final int f13882f;

    /* renamed from: g */
    private final int f13883g;

    public zzctt(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f13877a = z;
        this.f13878b = z2;
        this.f13879c = str;
        this.f13880d = z3;
        this.f13881e = i;
        this.f13882f = i2;
        this.f13883g = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f13879c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) zzve.zzoy().zzd(zzzn.zzclv));
        bundle2.putInt("target_api", this.f13881e);
        bundle2.putInt("dv", this.f13882f);
        bundle2.putInt("lv", this.f13883g);
        Bundle zza = zzdaa.zza(bundle2, "sdk_env");
        zza.putBoolean("mf", zzaaz.zzcti.get().booleanValue());
        zza.putBoolean("instant_app", this.f13877a);
        zza.putBoolean("lite", this.f13878b);
        zza.putBoolean("is_privileged_process", this.f13880d);
        bundle2.putBundle("sdk_env", zza);
        Bundle zza2 = zzdaa.zza(zza, "build_meta");
        zza2.putString("cl", "278033407");
        zza2.putString("rapid_rc", "dev");
        zza2.putString("rapid_rollup", "HEAD");
        zza.putBundle("build_meta", zza2);
    }
}
