package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcui.class */
public final class zzcui implements zzcty<Bundle> {

    /* renamed from: a */
    private final String f13907a;

    /* renamed from: b */
    private final int f13908b;

    /* renamed from: c */
    private final int f13909c;

    /* renamed from: d */
    private final int f13910d;

    /* renamed from: e */
    private final boolean f13911e;

    /* renamed from: f */
    private final int f13912f;

    public zzcui(String str, int i, int i2, int i3, boolean z, int i4) {
        this.f13907a = str;
        this.f13908b = i;
        this.f13909c = i2;
        this.f13910d = i3;
        this.f13911e = z;
        this.f13912f = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f13907a;
        boolean z = true;
        zzdaa.zza(bundle2, "carrier", str, !TextUtils.isEmpty(str));
        int i = this.f13908b;
        if (this.f13908b == -2) {
            z = false;
        }
        zzdaa.zza(bundle2, "cnt", Integer.valueOf(i), z);
        bundle2.putInt("gnt", this.f13909c);
        bundle2.putInt("pt", this.f13910d);
        Bundle zza = zzdaa.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzdaa.zza(zza, "network");
        zza.putBundle("network", zza2);
        zza2.putInt("active_network_state", this.f13912f);
        zza2.putBoolean("active_network_metered", this.f13911e);
    }
}
