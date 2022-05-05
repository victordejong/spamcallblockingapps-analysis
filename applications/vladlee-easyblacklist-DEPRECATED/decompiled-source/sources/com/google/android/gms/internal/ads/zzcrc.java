package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrc.class */
public final class zzcrc implements zzcty<Bundle> {

    /* renamed from: a */
    private final int f13766a;

    /* renamed from: b */
    private final boolean f13767b;

    /* renamed from: c */
    private final boolean f13768c;

    /* renamed from: d */
    private final int f13769d;

    /* renamed from: e */
    private final int f13770e;

    /* renamed from: f */
    private final int f13771f;

    /* renamed from: g */
    private final float f13772g;

    /* renamed from: h */
    private final boolean f13773h;

    public zzcrc(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.f13766a = i;
        this.f13767b = z;
        this.f13768c = z2;
        this.f13769d = i2;
        this.f13770e = i3;
        this.f13771f = i4;
        this.f13772g = f;
        this.f13773h = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.f13766a);
        bundle2.putBoolean("ma", this.f13767b);
        bundle2.putBoolean("sp", this.f13768c);
        bundle2.putInt("muv", this.f13769d);
        bundle2.putInt("rm", this.f13770e);
        bundle2.putInt("riv", this.f13771f);
        bundle2.putFloat("android_app_volume", this.f13772g);
        bundle2.putBoolean("android_app_muted", this.f13773h);
    }
}
