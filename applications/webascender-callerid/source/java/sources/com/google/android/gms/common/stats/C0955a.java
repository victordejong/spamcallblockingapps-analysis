package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC0940u0;
import com.google.android.gms.common.util.C0964e;
import g.f.a.d.c.g.k;
import g.f.a.d.c.g.l;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.common.stats.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public class C0955a {

    /* renamed from: c */
    private static volatile C0955a f3586c;

    /* renamed from: a */
    private ConcurrentHashMap<ServiceConnection, ServiceConnection> f3588a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private static final Object f3585b = new Object();

    /* renamed from: d */
    private static l<Boolean> f3587d = k.a(e.f);

    private C0955a() {
    }

    /* renamed from: b */
    public static C0955a m3193b() {
        if (f3586c == null) {
            synchronized (f3585b) {
                if (f3586c == null) {
                    f3586c = new C0955a();
                }
            }
        }
        return f3586c;
    }

    /* renamed from: d */
    private static void m3191d(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException e) {
            Log.w("ConnectionTracker", "Exception thrown while unbinding", e);
        }
    }

    /* renamed from: e */
    static final /* synthetic */ boolean m3190e() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    private final boolean m3188g(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component == null ? false : C0964e.m3168b(context, component.getPackageName())) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        if (m3187h(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f3588a.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                boolean bindService = context.bindService(intent, serviceConnection, i);
                z2 = bindService;
                if (!bindService) {
                    this.f3588a.remove(serviceConnection, serviceConnection);
                    z2 = bindService;
                }
            } catch (Throwable th) {
                this.f3588a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = context.bindService(intent, serviceConnection, i);
        }
        return z2;
    }

    /* renamed from: h */
    private static boolean m3187h(ServiceConnection serviceConnection) {
        return ((Boolean) f3587d.zza()).booleanValue() && !(serviceConnection instanceof AbstractC0940u0);
    }

    /* renamed from: a */
    public boolean m3194a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m3189f(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* renamed from: c */
    public void m3192c(Context context, ServiceConnection serviceConnection) {
        if (!m3187h(serviceConnection) || !this.f3588a.containsKey(serviceConnection)) {
            m3191d(context, serviceConnection);
            return;
        }
        try {
            m3191d(context, this.f3588a.get(serviceConnection));
        } finally {
            this.f3588a.remove(serviceConnection);
        }
    }

    /* renamed from: f */
    public final boolean m3189f(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        return m3188g(context, str, intent, serviceConnection, i, true);
    }
}
