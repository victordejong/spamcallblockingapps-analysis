package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzq;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawn.class */
public class zzawn extends zzawk {
    @Override // com.google.android.gms.internal.ads.zzawh
    public final WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final zzbdl zza(zzbdi zzbdiVar, zzsm zzsmVar, boolean z) {
        return new zzbem(zzbdiVar, zzsmVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final CookieManager zzbd(Context context) {
        if (zzwq()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzavs.zzc("Failed to obtain CookieManager.", th);
            zzq.zzku().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final int zzwr() {
        return 16974374;
    }
}
