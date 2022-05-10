package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.StrictMode;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbay.class */
public final class zzbay {
    @Deprecated
    /* renamed from: a */
    public static <T> T m15929a(Context context, Callable<T> callable) {
        try {
            return (T) m15927a(callable);
        } catch (Throwable th) {
            zzbbq.m15855b("Unexpected exception.", th);
            zzasf.m16390a(context).mo16385a(th, "StrictModeUtil.runWithLaxStrictMode");
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m15928a(zzdwe<T> zzdweVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzdweVar.get();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: a */
    public static <T> T m15927a(Callable<T> callable) throws Exception {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
