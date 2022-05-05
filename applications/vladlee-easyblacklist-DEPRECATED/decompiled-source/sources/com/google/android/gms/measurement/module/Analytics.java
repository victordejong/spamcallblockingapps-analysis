package com.google.android.gms.measurement.module;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics.class */
public class Analytics {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    public static final String FIAM_ORIGIN = "fiam";

    /* renamed from: a */
    private static volatile Analytics f17316a;

    /* renamed from: b */
    private final zzga f17317b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Event.class */
    public static final class Event extends zzgv {
        public static final String AD_REWARD = "_ar";
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Param.class */
    public static final class Param extends zzgy {
        public static final String FATAL = "fatal";
        public static final String TIMESTAMP = "timestamp";
        public static final String TYPE = "type";

        private Param() {
        }
    }

    private Analytics(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.f17317b = zzgaVar;
    }

    public static Analytics getInstance(Context context) {
        if (f17316a == null) {
            synchronized (Analytics.class) {
                try {
                    if (f17316a == null) {
                        f17316a = new Analytics(zzga.zza(context, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17316a;
    }
}
