package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzag.class */
public final class zzag extends Handler {
    private final /* synthetic */ zzaf zzcx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzag(zzaf zzafVar, Looper looper) {
        super(looper);
        this.zzcx = zzafVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzcx.zze(message);
    }
}
