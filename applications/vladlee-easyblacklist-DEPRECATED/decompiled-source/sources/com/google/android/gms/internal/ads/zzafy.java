package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafy.class */
public final class zzafy implements zzafn<Object> {

    /* renamed from: a */
    private final zzafx f10901a;

    private zzafy(zzafx zzafxVar) {
        this.f10901a = zzafxVar;
    }

    public static void zza(zzbdi zzbdiVar, zzafx zzafxVar) {
        zzbdiVar.zza("/reward", new zzafy(zzafxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        zzasd zzasdVar;
        String str = map.get("action");
        if ("grant".equals(str)) {
            try {
                int parseInt = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                zzasdVar = null;
                if (!TextUtils.isEmpty(str2)) {
                    zzasdVar = new zzasd(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzavs.zzd("Unable to parse reward amount.", e);
                zzasdVar = null;
            }
            this.f10901a.zza(zzasdVar);
        } else if ("video_start".equals(str)) {
            this.f10901a.zzrs();
        } else if ("video_complete".equals(str)) {
            this.f10901a.zzrt();
        }
    }
}
