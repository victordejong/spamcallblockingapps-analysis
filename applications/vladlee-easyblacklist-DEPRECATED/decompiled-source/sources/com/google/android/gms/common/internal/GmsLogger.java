package com.google.android.gms.common.internal;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsLogger.class */
public final class GmsLogger {

    /* renamed from: a */
    private static final int f6784a = 15;

    /* renamed from: b */
    private static final String f6785b = null;

    /* renamed from: c */
    private final String f6786c;

    /* renamed from: d */
    private final String f6787d;

    public GmsLogger(String str) {
        this(str, null);
    }

    public GmsLogger(String str, String str2) {
        Preconditions.checkNotNull(str, "log tag cannot be null");
        Preconditions.checkArgument(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f6786c = str;
        if (str2 == null || str2.length() <= 0) {
            this.f6787d = null;
        } else {
            this.f6787d = str2;
        }
    }

    /* renamed from: a */
    private final String m5697a(String str) {
        String str2 = this.f6787d;
        return str2 == null ? str : str2.concat(str);
    }

    /* renamed from: a */
    private final String m5696a(String str, Object... objArr) {
        String format = String.format(str, objArr);
        String str2 = this.f6787d;
        return str2 == null ? format : str2.concat(format);
    }

    public final boolean canLog(int i) {
        return Log.isLoggable(this.f6786c, i);
    }

    public final boolean canLogPii() {
        return false;
    }

    /* renamed from: d */
    public final void m5695d(String str, String str2) {
        if (canLog(3)) {
            Log.d(str, m5697a(str2));
        }
    }

    /* renamed from: d */
    public final void m5694d(String str, String str2, Throwable th) {
        if (canLog(3)) {
            Log.d(str, m5697a(str2), th);
        }
    }

    /* renamed from: e */
    public final void m5693e(String str, String str2) {
        if (canLog(6)) {
            Log.e(str, m5697a(str2));
        }
    }

    /* renamed from: e */
    public final void m5692e(String str, String str2, Throwable th) {
        if (canLog(6)) {
            Log.e(str, m5697a(str2), th);
        }
    }

    public final void efmt(String str, String str2, Object... objArr) {
        if (canLog(6)) {
            Log.e(str, m5696a(str2, objArr));
        }
    }

    /* renamed from: i */
    public final void m5691i(String str, String str2) {
        if (canLog(4)) {
            Log.i(str, m5697a(str2));
        }
    }

    /* renamed from: i */
    public final void m5690i(String str, String str2, Throwable th) {
        if (canLog(4)) {
            Log.i(str, m5697a(str2), th);
        }
    }

    public final void pii(String str, String str2) {
        if (canLogPii()) {
            String valueOf = String.valueOf(str);
            Log.i(" PII_LOG".length() != 0 ? valueOf.concat(" PII_LOG") : new String(valueOf), m5697a(str2));
        }
    }

    public final void pii(String str, String str2, Throwable th) {
        if (canLogPii()) {
            String valueOf = String.valueOf(str);
            Log.i(" PII_LOG".length() != 0 ? valueOf.concat(" PII_LOG") : new String(valueOf), m5697a(str2), th);
        }
    }

    /* renamed from: v */
    public final void m5689v(String str, String str2) {
        if (canLog(2)) {
            Log.v(str, m5697a(str2));
        }
    }

    /* renamed from: v */
    public final void m5688v(String str, String str2, Throwable th) {
        if (canLog(2)) {
            Log.v(str, m5697a(str2), th);
        }
    }

    /* renamed from: w */
    public final void m5687w(String str, String str2) {
        if (canLog(5)) {
            Log.w(str, m5697a(str2));
        }
    }

    /* renamed from: w */
    public final void m5686w(String str, String str2, Throwable th) {
        if (canLog(5)) {
            Log.w(str, m5697a(str2), th);
        }
    }

    public final void wfmt(String str, String str2, Object... objArr) {
        if (canLog(5)) {
            Log.w(this.f6786c, m5696a(str2, objArr));
        }
    }

    public final void wtf(String str, String str2, Throwable th) {
        if (canLog(7)) {
            Log.e(str, m5697a(str2), th);
            Log.wtf(str, m5697a(str2), th);
        }
    }
}
