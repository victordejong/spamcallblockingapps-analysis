package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddu.class */
public class zzddu extends Handler {

    /* renamed from: a */
    private static volatile zzddx f14230a;

    public zzddu() {
    }

    public zzddu(Looper looper) {
        super(looper);
    }

    public zzddu(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo3606a(Message message) {
        super.dispatchMessage(message);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        mo3606a(message);
    }
}
