package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcms.class */
public final class zzcms {

    /* renamed from: a */
    public ConcurrentHashMap<String, String> f26260a;

    public zzcms(zzcmz zzcmzVar) {
        this.f26260a = zzcmzVar.m14034b();
    }

    /* renamed from: a */
    public final Map<String, String> m14053a() {
        return this.f26260a;
    }

    /* renamed from: a */
    public final void m14052a(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f26260a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f26260a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    /* renamed from: a */
    public final void m14051a(zzdog zzdogVar) {
        if (zzdogVar.f27634b.f27629a.size() > 0) {
            int i = zzdogVar.f27634b.f27629a.get(0).f27582b;
            if (i == 1) {
                this.f26260a.put("ad_format", "banner");
            } else if (i == 2) {
                this.f26260a.put("ad_format", AdType.INTERSTITIAL);
            } else if (i == 3) {
                this.f26260a.put("ad_format", "native_express");
            } else if (i == 4) {
                this.f26260a.put("ad_format", "native_advanced");
            } else if (i != 5) {
                this.f26260a.put("ad_format", "unknown");
            } else {
                this.f26260a.put("ad_format", "rewarded");
            }
        }
        if (!TextUtils.isEmpty(zzdogVar.f27634b.f27630b.f27612b)) {
            this.f26260a.put("gqi", zzdogVar.f27634b.f27630b.f27612b);
        }
    }
}
