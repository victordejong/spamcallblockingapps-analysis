package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apd.class */
final class apd implements Handler.Callback, Choreographer.FrameCallback {

    /* renamed from: b */
    private static final apd f8097b = new apd();

    /* renamed from: a */
    public volatile long f8098a;

    /* renamed from: e */
    private Choreographer f8101e;

    /* renamed from: f */
    private int f8102f;

    /* renamed from: d */
    private final HandlerThread f8100d = new HandlerThread("ChoreographerOwner:Handler");

    /* renamed from: c */
    private final zzddu f8099c = new zzddu(this.f8100d.getLooper(), this);

    private apd() {
        this.f8100d.start();
        this.f8099c.sendEmptyMessage(0);
    }

    /* renamed from: a */
    public static apd m4772a() {
        return f8097b;
    }

    /* renamed from: b */
    public final void m4771b() {
        this.f8099c.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public final void m4770c() {
        this.f8099c.sendEmptyMessage(2);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f8098a = j;
        this.f8101e.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.f8101e = Choreographer.getInstance();
            return true;
        } else if (i == 1) {
            this.f8102f++;
            if (this.f8102f != 1) {
                return true;
            }
            this.f8101e.postFrameCallback(this);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            this.f8102f--;
            if (this.f8102f != 0) {
                return true;
            }
            this.f8101e.removeFrameCallback(this);
            this.f8098a = 0L;
            return true;
        }
    }
}
