package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcry.class */
public final class zzcry implements zzcty<Bundle> {

    /* renamed from: a */
    private final String f13803a;

    /* renamed from: b */
    private final boolean f13804b;

    public zzcry(String str, boolean z) {
        this.f13803a = str;
        this.f13804b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f13803a);
        if (this.f13804b) {
            bundle2.putString("de", "1");
        }
    }
}
