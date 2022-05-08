package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzaar;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzug;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.google.android.gms.ads.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/e.class */
final class C1547e {

    /* renamed from: a */
    private final String f5905a;

    /* renamed from: b */
    private final Map<String, String> f5906b = new TreeMap();

    /* renamed from: c */
    private String f5907c;

    /* renamed from: d */
    private String f5908d;

    public C1547e(String str) {
        this.f5905a = str;
    }

    /* renamed from: a */
    public final String m6063a() {
        return this.f5908d;
    }

    /* renamed from: a */
    public final void m6062a(zzug zzugVar, zzazb zzazbVar) {
        this.f5907c = zzugVar.zzccd.zzblv;
        Bundle bundle = zzugVar.zzccf != null ? zzugVar.zzccf.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle != null) {
            String str = zzaar.zzcsn.get();
            for (String str2 : bundle.keySet()) {
                if (str.equals(str2)) {
                    this.f5908d = bundle.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    this.f5906b.put(str2.substring(4), bundle.getString(str2));
                }
            }
            this.f5906b.put("SDKVersion", zzazbVar.zzbma);
        }
    }

    /* renamed from: b */
    public final String m6061b() {
        return this.f5907c;
    }

    /* renamed from: c */
    public final String m6060c() {
        return this.f5905a;
    }

    /* renamed from: d */
    public final Map<String, String> m6059d() {
        return this.f5906b;
    }
}
