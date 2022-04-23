package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.StrictMode;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayc.class */
public final class zzayc {
    /* renamed from: a */
    private static <T> T m4214a(Callable<T> callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Deprecated
    public static <T> T zza(Context context, Callable<T> callable) {
        try {
            return (T) m4214a(callable);
        } catch (Throwable th) {
            zzayu.zzc("Unexpected exception.", th);
            zzapn.zzs(context).zza(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }

    public static <T> T zza(zzden<T> zzdenVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzdenVar.get();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
