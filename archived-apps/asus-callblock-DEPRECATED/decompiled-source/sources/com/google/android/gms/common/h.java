package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/h.class */
public final class h implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3966a = false;

    /* renamed from: b  reason: collision with root package name */
    public final BlockingQueue<IBinder> f3967b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f3967b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
