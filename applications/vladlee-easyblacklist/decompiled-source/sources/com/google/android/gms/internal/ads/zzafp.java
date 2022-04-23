package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafp.class */
public final class zzafp implements zzafn<Object> {

    /* renamed from: a */
    private final Context f10889a;

    public zzafp(Context context) {
        this.f10889a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        if (zzq.zzlo().zzab(this.f10889a)) {
            String str = map.get("eventName");
            String str2 = map.get("eventId");
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != 94399) {
                if (hashCode != 94401) {
                    if (hashCode == 94407 && str.equals("_ai")) {
                        c = 1;
                    }
                } else if (str.equals("_ac")) {
                    c = 0;
                }
            } else if (str.equals("_aa")) {
                c = 2;
            }
            if (c == 0) {
                zzq.zzlo().zzh(this.f10889a, str2);
            } else if (c == 1) {
                zzq.zzlo().zzi(this.f10889a, str2);
            } else if (c != 2) {
                zzavs.zzex("logScionEvent gmsg contained unsupported eventName");
            } else {
                zzq.zzlo().zzk(this.f10889a, str2);
            }
        }
    }
}
