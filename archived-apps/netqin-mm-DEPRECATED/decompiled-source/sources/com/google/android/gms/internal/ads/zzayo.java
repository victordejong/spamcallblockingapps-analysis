package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayo.class */
public final class zzayo extends zzdvo {
    public zzayo(Looper looper) {
        super(looper);
    }

    @Override // com.google.android.gms.internal.ads.zzdvo
    /* renamed from: a */
    public final void mo13106a(Message message) {
        try {
            super.mo13106a(message);
        } catch (Throwable th) {
            zzp.m17969c();
            zzayu.m16136a(zzp.m17965g().m16193a(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzp.m17965g().m16188a(e, "AdMobHandler.handleMessage");
        }
    }
}
