package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwr.class */
public final class zzdwr extends zzdwy {

    /* renamed from: a */
    private String f14692a;

    public zzdwr(String str) {
        this.f14692a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final void zzhp(String str) {
        String str2 = this.f14692a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
