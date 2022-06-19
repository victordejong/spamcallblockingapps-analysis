package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.p027r.ThreadFactoryC0976a;
import com.google.android.gms.tasks.AbstractC1646g;
import g.f.a.d.c.f.a;
import g.f.a.d.c.f.f;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.cloudmessaging.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/i.class */
public final class C0792i {

    /* renamed from: e */
    private static C0792i f3291e;

    /* renamed from: a */
    private final Context f3292a;

    /* renamed from: b */
    private final ScheduledExecutorService f3293b;

    /* renamed from: c */
    private ServiceConnectionC0793j f3294c = new ServiceConnectionC0793j(this);

    /* renamed from: d */
    private int f3295d = 1;

    private C0792i(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f3293b = scheduledExecutorService;
        this.f3292a = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m3721a() {
        int i;
        synchronized (this) {
            i = this.f3295d;
            this.f3295d = i + 1;
        }
        return i;
    }

    /* renamed from: b */
    public static /* synthetic */ Context m3720b(C0792i c0792i) {
        return c0792i.f3292a;
    }

    /* renamed from: c */
    public static C0792i m3719c(Context context) {
        C0792i c0792i;
        synchronized (C0792i.class) {
            try {
                if (f3291e == null) {
                    f3291e = new C0792i(context, a.a().a(1, new ThreadFactoryC0976a("MessengerIpcClient"), f.b));
                }
                c0792i = f3291e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0792i;
    }

    /* renamed from: e */
    private final <T> AbstractC1646g<T> m3717e(AbstractC0802t<T> abstractC0802t) {
        AbstractC1646g<T> m1449a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(abstractC0802t);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.f3294c.m3710e(abstractC0802t)) {
                ServiceConnectionC0793j serviceConnectionC0793j = new ServiceConnectionC0793j(this);
                this.f3294c = serviceConnectionC0793j;
                serviceConnectionC0793j.m3710e(abstractC0802t);
            }
            m1449a = abstractC0802t.f3313b.m1449a();
        }
        return m1449a;
    }

    /* renamed from: g */
    public static /* synthetic */ ScheduledExecutorService m3715g(C0792i c0792i) {
        return c0792i.f3293b;
    }

    /* renamed from: d */
    public final AbstractC1646g<Void> m3718d(int i, Bundle bundle) {
        return m3717e(new r(m3721a(), 2, bundle));
    }

    /* renamed from: f */
    public final AbstractC1646g<Bundle> m3716f(int i, Bundle bundle) {
        return m3717e(new v(m3721a(), 1, bundle));
    }
}
