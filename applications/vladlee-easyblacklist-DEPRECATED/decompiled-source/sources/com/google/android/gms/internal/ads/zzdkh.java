package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkh.class */
public class zzdkh implements zzdis<zzdib> {

    /* renamed from: a */
    private static final Logger f14369a = Logger.getLogger(zzdkh.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.zzdkh$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkh$a.class */
    static final class C2443a implements zzdib {

        /* renamed from: a */
        private final zzdiq<zzdib> f14370a;

        public C2443a(zzdiq<zzdib> zzdiqVar) {
            this.f14370a = zzdiqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final /* synthetic */ zzdib zza(zzdiq<zzdib> zzdiqVar) {
        return new C2443a(zzdiqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final Class<zzdib> zzarz() {
        return zzdib.class;
    }
}
