package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzp;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazj.class */
public class zzazj extends zzazg {
    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final WebResourceResponse mo16030a(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final zzbgi mo16031a(zzbgj zzbgjVar, zzts zztsVar, boolean z) {
        return new zzbhm(zzbgjVar, zztsVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: c */
    public final int mo16029c() {
        return 16974374;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: c */
    public final CookieManager mo16028c(Context context) {
        if (zzazd.m16044e()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzbbq.m15855b("Failed to obtain CookieManager.", th);
            zzp.m17965g().m16188a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }
}
