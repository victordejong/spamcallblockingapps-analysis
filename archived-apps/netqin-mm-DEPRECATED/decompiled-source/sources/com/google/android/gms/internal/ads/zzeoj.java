package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoj.class */
public final class zzeoj extends zzeoq {

    /* renamed from: a */
    public String f28119a;

    public zzeoj(String str) {
        this.f28119a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeoq
    /* renamed from: a */
    public final void mo12203a(String str) {
        String str2 = this.f28119a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
