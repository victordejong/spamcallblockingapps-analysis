package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbip.class */
public final class zzbip implements zzbil {

    /* renamed from: a */
    private final zzczj f11922a;

    public zzbip(zzczj zzczjVar) {
        this.f11922a = zzczjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbil
    public final void zzk(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f11922a.zzbl(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
