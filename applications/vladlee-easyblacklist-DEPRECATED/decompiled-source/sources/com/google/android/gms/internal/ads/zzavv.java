package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavv.class */
public final class zzavv extends zzddu {
    public zzavv(Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzddu
    /* renamed from: a */
    public final void mo3606a(Message message) {
        try {
            super.mo3606a(message);
        } catch (Throwable th) {
            zzq.zzkq();
            zzawb.zza(zzq.zzku().getApplicationContext(), th);
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            zzq.zzku().zza(e, "AdMobHandler.handleMessage");
        }
    }
}
