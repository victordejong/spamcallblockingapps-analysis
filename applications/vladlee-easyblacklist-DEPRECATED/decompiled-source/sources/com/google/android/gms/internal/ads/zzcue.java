package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcue.class */
public final class zzcue implements zzcty<Bundle> {

    /* renamed from: a */
    private final boolean f13891a;

    /* renamed from: b */
    private final boolean f13892b;

    /* renamed from: c */
    private final String f13893c;

    /* renamed from: d */
    private final boolean f13894d;

    /* renamed from: e */
    private final boolean f13895e;

    /* renamed from: f */
    private final boolean f13896f;

    /* renamed from: g */
    private final String f13897g;

    /* renamed from: h */
    private final ArrayList<String> f13898h;

    /* renamed from: i */
    private final String f13899i;

    /* renamed from: j */
    private final String f13900j;

    /* renamed from: k */
    private final String f13901k;

    /* renamed from: l */
    private final boolean f13902l;

    /* renamed from: m */
    private final String f13903m;

    /* renamed from: n */
    private final long f13904n;

    public zzcue(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, @Nullable String str3, @Nullable String str4, String str5, boolean z6, String str6, long j) {
        this.f13891a = z;
        this.f13892b = z2;
        this.f13893c = str;
        this.f13894d = z3;
        this.f13895e = z4;
        this.f13896f = z5;
        this.f13897g = str2;
        this.f13898h = arrayList;
        this.f13899i = str3;
        this.f13900j = str4;
        this.f13901k = str5;
        this.f13902l = z6;
        this.f13903m = str6;
        this.f13904n = j;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.f13891a);
        bundle2.putBoolean("coh", this.f13892b);
        bundle2.putString("gl", this.f13893c);
        bundle2.putBoolean("simulator", this.f13894d);
        bundle2.putBoolean("is_latchsky", this.f13895e);
        bundle2.putBoolean("is_sidewinder", this.f13896f);
        bundle2.putString("hl", this.f13897g);
        if (!this.f13898h.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.f13898h);
        }
        bundle2.putString("mv", this.f13899i);
        bundle2.putString("submodel", this.f13903m);
        Bundle zza = zzdaa.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        zza.putString("build", this.f13901k);
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzclt)).booleanValue()) {
            zza.putLong("remaining_data_partition_space", this.f13904n);
        }
        Bundle zza2 = zzdaa.zza(zza, "browser");
        zza.putBundle("browser", zza2);
        zza2.putBoolean("is_browser_custom_tabs_capable", this.f13902l);
        if (!TextUtils.isEmpty(this.f13900j)) {
            Bundle zza3 = zzdaa.zza(zza, "play_store");
            zza.putBundle("play_store", zza3);
            zza3.putString("package_version", this.f13900j);
        }
    }
}
