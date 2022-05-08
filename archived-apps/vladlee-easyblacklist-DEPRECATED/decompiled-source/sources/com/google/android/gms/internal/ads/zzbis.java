package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbis.class */
public final class zzbis implements zzbil {

    /* renamed from: a */
    private final Context f11925a;

    public zzbis(Context context) {
        this.f11925a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbil
    public final void zzk(Map<String, String> map) {
        CookieManager zzbd;
        String str = map.get("cookie");
        if (!TextUtils.isEmpty(str) && (zzbd = zzq.zzks().zzbd(this.f11925a)) != null) {
            zzbd.setCookie("googleads.g.doubleclick.net", str);
        }
    }
}
