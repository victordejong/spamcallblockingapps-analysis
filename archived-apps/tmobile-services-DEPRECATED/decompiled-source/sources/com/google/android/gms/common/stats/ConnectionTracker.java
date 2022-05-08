package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.Collections;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/ConnectionTracker.class */
public class ConnectionTracker {

    /* renamed from: a */
    private static final Object f7619a = new Object();

    /* renamed from: b */
    private static volatile ConnectionTracker f7620b;

    private ConnectionTracker() {
        List list = Collections.EMPTY_LIST;
    }

    @KeepForSdk
    /* renamed from: b */
    public static ConnectionTracker m14372b() {
        if (f7620b == null) {
            synchronized (f7619a) {
                if (f7620b == null) {
                    f7620b = new ConnectionTracker();
                }
            }
        }
        return f7620b;
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m14373a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m14370d(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    @KeepForSdk
    @SuppressLint({"UntrackedBindService"})
    /* renamed from: c */
    public void m14371c(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    /* renamed from: d */
    public final boolean m14370d(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        ComponentName component = intent.getComponent();
        if (!(component == null ? false : ClientLibraryUtils.m14341b(context, component.getPackageName()))) {
            return context.bindService(intent, serviceConnection, i);
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }
}
