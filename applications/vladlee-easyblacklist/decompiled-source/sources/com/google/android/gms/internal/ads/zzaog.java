package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaog.class */
public final class zzaog {

    /* renamed from: a */
    private final zzbdi f11105a;

    /* renamed from: b */
    private final boolean f11106b;

    /* renamed from: c */
    private final String f11107c;

    public zzaog(zzbdi zzbdiVar, Map<String, String> map) {
        this.f11105a = zzbdiVar;
        this.f11107c = map.get("forceOrientation");
        this.f11106b = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean(map.get("allowOrientationChange")) : true;
    }

    public final void execute() {
        int i;
        if (this.f11105a == null) {
            zzavs.zzez("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.f11107c)) {
            zzq.zzks();
            i = 7;
        } else if ("landscape".equalsIgnoreCase(this.f11107c)) {
            zzq.zzks();
            i = 6;
        } else {
            i = this.f11106b ? -1 : zzq.zzks().zzwo();
        }
        this.f11105a.setRequestedOrientation(i);
    }
}
