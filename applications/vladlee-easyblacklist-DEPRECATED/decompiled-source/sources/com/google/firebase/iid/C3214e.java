package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.firebase_messaging.zza;
import com.google.android.gms.internal.firebase_messaging.zzf;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.firebase.iid.e */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/e.class */
public final class C3214e {

    /* renamed from: a */
    private static C3214e f19105a;

    /* renamed from: b */
    private final Context f19106b;

    /* renamed from: c */
    private final ScheduledExecutorService f19107c;

    /* renamed from: d */
    private ServiceConnectionC3216g f19108d = new ServiceConnectionC3216g(this, (byte) 0);

    /* renamed from: e */
    private int f19109e = 1;

    private C3214e(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f19107c = scheduledExecutorService;
        this.f19106b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m485a() {
        int i;
        synchronized (this) {
            i = this.f19109e;
            this.f19109e = i + 1;
        }
        return i;
    }

    /* renamed from: a */
    private final <T> Task<T> m481a(AbstractC3221l<T> lVar) {
        Task<T> task;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(lVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.f19108d.m475a(lVar)) {
                this.f19108d = new ServiceConnectionC3216g(this, (byte) 0);
                this.f19108d.m475a(lVar);
            }
            task = lVar.f19124b.getTask();
        }
        return task;
    }

    /* renamed from: a */
    public static C3214e m484a(Context context) {
        C3214e eVar;
        synchronized (C3214e.class) {
            try {
                if (f19105a == null) {
                    f19105a = new C3214e(context, zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), zzf.zze));
                }
                eVar = f19105a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public final Task<Bundle> m483a(Bundle bundle) {
        return m481a(new C3222m(m485a(), bundle));
    }
}
