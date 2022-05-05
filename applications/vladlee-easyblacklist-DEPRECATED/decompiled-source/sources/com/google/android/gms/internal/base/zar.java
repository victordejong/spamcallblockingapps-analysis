package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zar.class */
public class zar extends Handler {

    /* renamed from: a */
    private static volatile zaq f15811a;

    public zar() {
    }

    public zar(Looper looper) {
        super(looper);
    }

    public zar(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        super.dispatchMessage(message);
    }
}
