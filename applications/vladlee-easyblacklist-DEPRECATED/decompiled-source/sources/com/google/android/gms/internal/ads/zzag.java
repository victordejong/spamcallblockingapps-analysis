package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzag.class */
public class zzag {

    /* renamed from: a */
    private static String f10905a = "Volley";
    public static boolean DEBUG = Log.isLoggable("Volley", 2);

    /* renamed from: b */
    private static final String f10906b = zzag.class.getName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzag$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzag$a.class */
    public static final class C2429a {

        /* renamed from: a */
        public static final boolean f10907a = zzag.DEBUG;

        /* renamed from: b */
        private final List<C1723ad> f10908b = new ArrayList();

        /* renamed from: c */
        private boolean f10909c = false;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29 */
        /* JADX WARN: Type inference failed for: r0v41 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4409a(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 212
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzag.C2429a.m4409a(java.lang.String):void");
        }

        /* renamed from: a */
        public final void m4408a(String str, long j) {
            synchronized (this) {
                if (!this.f10909c) {
                    this.f10908b.add(new C1723ad(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        protected final void finalize() {
            if (!this.f10909c) {
                m4409a("Request on the loose");
                zzag.m4411e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    private static String m4413a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (!stackTrace[i].getClassName().equals(f10906b)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                StringBuilder sb = new StringBuilder(String.valueOf(substring2).length() + 1 + String.valueOf(methodName).length());
                sb.append(substring2);
                sb.append(".");
                sb.append(methodName);
                str2 = sb.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    /* renamed from: d */
    public static void m4412d(String str, Object... objArr) {
        Log.d(f10905a, m4413a(str, objArr));
    }

    /* renamed from: e */
    public static void m4411e(String str, Object... objArr) {
        Log.e(f10905a, m4413a(str, objArr));
    }

    /* renamed from: v */
    public static void m4410v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(f10905a, m4413a(str, objArr));
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(f10905a, m4413a(str, objArr), th);
    }
}
