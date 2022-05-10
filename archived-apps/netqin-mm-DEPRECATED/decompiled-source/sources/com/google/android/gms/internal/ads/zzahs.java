package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahs.class */
public final class zzahs implements zzahq<Object> {

    /* renamed from: a */
    public final Context f24115a;

    public zzahs(Context context) {
        this.f24115a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        if (zzp.m17972A().m16256a(this.f24115a)) {
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
                zzp.m17972A().m16235d(this.f24115a, str2);
            } else if (c == 1) {
                zzp.m17972A().m16233e(this.f24115a, str2);
            } else if (c != 2) {
                zzbbq.m15856b("logScionEvent gmsg contained unsupported eventName");
            } else {
                zzp.m17972A().m16229g(this.f24115a, str2);
            }
        }
    }
}
