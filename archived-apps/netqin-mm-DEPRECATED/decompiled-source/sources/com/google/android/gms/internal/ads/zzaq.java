package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import p131c.p161d.p170b.p224d.p252g.p253a.C3865o3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaq.class */
public class zzaq {

    /* renamed from: a */
    public static String f24249a = "Volley";

    /* renamed from: b */
    public static boolean f24250b = Log.isLoggable("Volley", 2);

    /* renamed from: c */
    public static final String f24251c = zzaq.class.getName();

    /* renamed from: com.google.android.gms.internal.ads.zzaq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaq$a.class */
    public static final class C7243a {

        /* renamed from: c */
        public static final boolean f24252c = zzaq.f24250b;

        /* renamed from: a */
        public final List<C3865o3> f24253a = new ArrayList();

        /* renamed from: b */
        public boolean f24254b = false;

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
        public final void m16456a(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 219
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaq.C7243a.m16456a(java.lang.String):void");
        }

        /* renamed from: a */
        public final void m16455a(String str, long j) {
            synchronized (this) {
                if (!this.f24254b) {
                    this.f24253a.add(new C3865o3(str, j, SystemClock.elapsedRealtime()));
                } else {
                    throw new IllegalStateException("Marker added to finished log");
                }
            }
        }

        public final void finalize() throws Throwable {
            if (!this.f24254b) {
                m16456a("Request on the loose");
                zzaq.m16459b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public static void m16461a(String str, Object... objArr) {
        Log.d(f24249a, m16457d(str, objArr));
    }

    /* renamed from: a */
    public static void m16460a(Throwable th, String str, Object... objArr) {
        Log.e(f24249a, m16457d(str, objArr), th);
    }

    /* renamed from: b */
    public static void m16459b(String str, Object... objArr) {
        Log.e(f24249a, m16457d(str, objArr));
    }

    /* renamed from: c */
    public static void m16458c(String str, Object... objArr) {
        if (f24250b) {
            Log.v(f24249a, m16457d(str, objArr));
        }
    }

    /* renamed from: d */
    public static String m16457d(String str, Object... objArr) {
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
            } else if (!stackTrace[i].getClassName().equals(f24251c)) {
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
}
