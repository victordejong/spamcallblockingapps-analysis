package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcds.class */
public final class zzcds {

    /* renamed from: a */
    private ConcurrentHashMap<String, String> f12987a;

    public zzcds(zzcdv zzcdvVar) {
        this.f12987a = zzcdvVar.zzalh();
    }

    public final void zzc(zzczt zzcztVar) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        String str;
        if (zzcztVar.zzgmi.zzgme.size() > 0) {
            int i = zzcztVar.zzgmi.zzgme.get(0).zzfjj;
            if (i == 1) {
                concurrentHashMap = this.f12987a;
                str = "banner";
            } else if (i == 2) {
                concurrentHashMap = this.f12987a;
                str = "interstitial";
            } else if (i == 3) {
                concurrentHashMap = this.f12987a;
                str = "native_express";
            } else if (i == 4) {
                concurrentHashMap = this.f12987a;
                str = "native_advanced";
            } else if (i != 5) {
                concurrentHashMap = this.f12987a;
                str = "unknown";
            } else {
                concurrentHashMap = this.f12987a;
                str = "rewarded";
            }
            concurrentHashMap.put("ad_format", str);
            if (!TextUtils.isEmpty(zzcztVar.zzgmi.zzgmf.zzbzo)) {
                this.f12987a.put("gqi", zzcztVar.zzgmi.zzgmf.zzbzo);
            }
        }
    }

    public final void zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f12987a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f12987a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> zzqu() {
        return this.f12987a;
    }
}
