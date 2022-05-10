package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzden.class */
public final class zzden implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f27211a;

    /* renamed from: b */
    public final boolean f27212b;

    public zzden(String str, boolean z) {
        this.f27211a = str;
        this.f27212b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f27211a);
        if (this.f27212b) {
            bundle2.putString("de", "1");
        }
    }
}
