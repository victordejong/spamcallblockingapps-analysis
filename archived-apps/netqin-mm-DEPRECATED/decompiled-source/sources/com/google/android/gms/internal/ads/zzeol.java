package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeol.class */
public final class zzeol extends zzeoq {

    /* renamed from: a */
    public Logger f28120a;

    public zzeol(String str) {
        this.f28120a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.zzeoq
    /* renamed from: a */
    public final void mo12203a(String str) {
        this.f28120a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
