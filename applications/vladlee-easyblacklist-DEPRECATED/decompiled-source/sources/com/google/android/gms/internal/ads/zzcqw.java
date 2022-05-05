package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqw.class */
public final class zzcqw implements zzcty<Bundle> {

    /* renamed from: a */
    private final boolean f13755a = false;

    /* renamed from: b */
    private final boolean f13756b = false;

    /* renamed from: c */
    private final boolean f13757c;

    public zzcqw(boolean z, boolean z2, boolean z3) {
        this.f13757c = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("c_pcbg", this.f13755a);
        bundle2.putBoolean("c_phbg", this.f13756b);
        bundle2.putBoolean("ar_lr", this.f13757c);
    }
}
