package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/ConnectionTracker.class */
public class ConnectionTracker {

    /* renamed from: b */
    private static volatile ConnectionTracker f6932b;

    /* renamed from: d */
    private final List<String> f6934d = Collections.EMPTY_LIST;

    /* renamed from: e */
    private final List<String> f6935e = Collections.EMPTY_LIST;

    /* renamed from: f */
    private final List<String> f6936f = Collections.EMPTY_LIST;

    /* renamed from: g */
    private final List<String> f6937g = Collections.EMPTY_LIST;

    /* renamed from: a */
    private static final Object f6931a = new Object();

    /* renamed from: c */
    private static boolean f6933c = false;

    private ConnectionTracker() {
    }

    public static ConnectionTracker getInstance() {
        if (f6932b == null) {
            synchronized (f6931a) {
                if (f6932b == null) {
                    f6932b = new ConnectionTracker();
                }
            }
        }
        return f6932b;
    }

    public boolean bindService(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public void unbindService(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    public final boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        ComponentName component = intent.getComponent();
        if (!(component == null ? false : ClientLibraryUtils.zzc(context, component.getPackageName()))) {
            return context.bindService(intent, serviceConnection, i);
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }
}
