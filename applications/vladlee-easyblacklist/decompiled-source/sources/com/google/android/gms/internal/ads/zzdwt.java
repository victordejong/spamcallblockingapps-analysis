package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwt.class */
public final class zzdwt extends zzdwy {

    /* renamed from: a */
    private Logger f14693a;

    public zzdwt(String str) {
        this.f14693a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final void zzhp(String str) {
        this.f14693a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
