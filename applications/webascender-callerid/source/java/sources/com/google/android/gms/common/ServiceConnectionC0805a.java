package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
public class ServiceConnectionC0805a implements ServiceConnection {

    /* renamed from: a */
    private boolean f3321a = false;

    /* renamed from: b */
    private final BlockingQueue<IBinder> f3322b = new LinkedBlockingQueue();

    /* renamed from: a */
    public IBinder m3699a(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        C0931r.m3309j("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f3321a) {
            this.f3321a = true;
            IBinder poll = this.f3322b.poll(j, timeUnit);
            if (poll == null) {
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            return poll;
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3322b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
