package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayu.class */
public class zzayu {
    /* renamed from: a */
    private static String m4196a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String str2 = str;
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
            sb.append(str);
            sb.append(" @");
            sb.append(lineNumber);
            str2 = sb.toString();
        }
        return str2;
    }

    public static boolean isLoggable(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }

    public static void zzb(String str, Throwable th) {
        if (isLoggable(3)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (isLoggable(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzd(String str, Throwable th) {
        if (isLoggable(5)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zze(String str, Throwable th) {
        if (isLoggable(5)) {
            String a = m4196a(str);
            if (th != null) {
                zzd(a, th);
            } else {
                zzez(a);
            }
        }
    }

    public static void zzea(String str) {
        if (isLoggable(3)) {
            Log.d(AdRequest.LOGTAG, str);
        }
    }

    public static void zzex(String str) {
        if (isLoggable(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void zzey(String str) {
        if (isLoggable(4)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void zzez(String str) {
        if (isLoggable(5)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }

    public static void zzfb(String str) {
        zze(str, null);
    }
}
