package com.google.android.gms.gass;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbm;
import com.google.android.gms.internal.ads.zzdem;
import com.google.android.gms.internal.ads.zzdrt;
import com.google.android.gms.internal.ads.zzsr;
import com.google.android.gms.internal.ads.zzsv;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/AdShield2Logger.class */
public class AdShield2Logger {
    public static final int EVENTID_CLICK_SIGNALS = 5000;
    public static final int EVENTID_ERROR_GET_PROGRAM = 4002;
    public static final int EVENTID_ERROR_LAST_CRASH = 4001;
    public static final int EVENTID_ERROR_RUN_VM_INIT = 4000;
    public static final int EVENTID_GASSDGCLIENT_CONNECTED_EXCEPTION = 2010;
    public static final int EVENTID_GASSDGCLIENT_EXCEPTION = 2009;
    public static final int EVENTID_LATENCY_CLOSE = 3001;
    public static final int EVENTID_LATENCY_GASSDGCLIENT_GET_PROGRAM = 3004;
    public static final int EVENTID_LATENCY_INIT_VM = 3000;
    public static final int EVENTID_LATENCY_REPORT_TOUCH = 3003;
    public static final int EVENTID_LATENCY_SNAPSHOT = 3002;
    public static final int EVENTID_LOAD_CLASS_EXCEPTION = 2008;
    public static final int EVENTID_QUERY_SIGNALS = 5001;
    public static final int EVENTID_VIEW_SIGNALS = 5002;
    public static final int EVENTID_VM_CLOSE_EXCEPTION = 2003;
    public static final int EVENTID_VM_CREATE_EXCEPTION = 2004;
    public static final int EVENTID_VM_INIT_EXCEPTION = 2001;
    public static final int EVENTID_VM_INIT_PROGRAM_EXCEPTION = 2002;
    public static final int EVENTID_VM_LAST_CRASH_EXCEPTION = 2006;
    public static final int EVENTID_VM_SNAP_EXCEPTION = 2007;
    public static final int EVENTID_VM_TOUCH_EXCEPTION = 2005;
    public static final int GASS_EVENTID_NO_PROGRAM = 5004;
    public static final int GASS_EVENTID_RETURN_PROGRAM = 5003;

    /* renamed from: a */
    private final Context f7060a;

    /* renamed from: b */
    private final Executor f7061b;

    /* renamed from: c */
    private final Task<zzsr> f7062c;

    private AdShield2Logger(Context context, Executor executor, Task<zzsr> task) {
        this.f7060a = context;
        this.f7061b = executor;
        this.f7062c = task;
    }

    /* renamed from: a */
    private final Task<Boolean> m5531a(final int i, long j, Exception exc, String str, Map<String, String> map) {
        final zzbm.zza.C3489zza zzc = zzbm.zza.zzs().zzi(this.f7060a.getPackageName()).zzc(j);
        if (exc != null) {
            zzc.zzj(zzdem.zza(exc)).zzk(exc.getClass().getName());
        }
        if (str != null) {
            zzc.zzm(str);
        }
        if (map != null) {
            for (String str2 : map.keySet()) {
                zzc.zza(zzbm.zza.zzb.zzu().zzs(str2).zzt(map.get(str2)));
            }
        }
        return this.f7062c.continueWith(this.f7061b, new Continuation(zzc, i) { // from class: com.google.android.gms.gass.a

            /* renamed from: a */
            private final zzbm.zza.C3489zza f7069a;

            /* renamed from: b */
            private final int f7070b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7069a = zzc;
                this.f7070b = i;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                zzbm.zza.C3489zza zzaVar = this.f7069a;
                int i2 = this.f7070b;
                if (!task.isSuccessful()) {
                    return Boolean.FALSE;
                }
                zzsv zzf = ((zzsr) task.getResult()).zzf(((zzbm.zza) ((zzdrt) zzaVar.zzbaf())).toByteArray());
                zzf.zzbr(i2);
                zzf.zzdn();
                return Boolean.TRUE;
            }
        });
    }

    public static AdShield2Logger createAdShield2Logger(final Context context, Executor executor) {
        return new AdShield2Logger(context, executor, Tasks.call(executor, new Callable(context) { // from class: com.google.android.gms.gass.b

            /* renamed from: a */
            private final Context f7071a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7071a = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzsr(this.f7071a, "GLAS", null);
            }
        }));
    }

    public Task<Boolean> logException(int i, long j, Exception exc) {
        return m5531a(i, j, exc, null, null);
    }

    public Task<Boolean> logLatency(int i, long j) {
        return m5531a(i, j, null, null, null);
    }

    public Task<Boolean> logSignals(int i, long j, String str, Map<String, String> map) {
        return m5531a(i, j, null, str, map);
    }
}
