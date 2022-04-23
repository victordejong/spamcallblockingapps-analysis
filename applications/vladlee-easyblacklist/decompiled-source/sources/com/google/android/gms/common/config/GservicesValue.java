package com.google.android.gms.common.config;

import android.content.Context;
import android.os.Binder;
import android.os.StrictMode;
import android.util.Log;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/config/GservicesValue.class */
public abstract class GservicesValue<T> {

    /* renamed from: c */
    private static final Object f6586c = new Object();

    /* renamed from: d */
    private static AbstractC1638a f6587d = null;

    /* renamed from: e */
    private static int f6588e = 0;

    /* renamed from: f */
    private static Context f6589f;

    /* renamed from: g */
    private static HashSet<String> f6590g;

    /* renamed from: a */
    protected final String f6591a;

    /* renamed from: b */
    protected final T f6592b;

    /* renamed from: h */
    private T f6593h = null;

    /* renamed from: com.google.android.gms.common.config.GservicesValue$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/config/GservicesValue$a.class */
    private interface AbstractC1638a {
        /* renamed from: a */
        Boolean m5769a();

        /* renamed from: b */
        Long m5768b();

        /* renamed from: c */
        Integer m5767c();

        /* renamed from: d */
        Float m5766d();

        /* renamed from: e */
        String m5765e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GservicesValue(String str, T t) {
        this.f6591a = str;
        this.f6592b = t;
    }

    public static boolean isInitialized() {
        synchronized (f6586c) {
        }
        return false;
    }

    public static GservicesValue<Float> value(String str, Float f) {
        return new C1642d(str, f);
    }

    public static GservicesValue<Integer> value(String str, Integer num) {
        return new C1641c(str, num);
    }

    public static GservicesValue<Long> value(String str, Long l) {
        return new C1640b(str, l);
    }

    public static GservicesValue<String> value(String str, String str2) {
        return new C1643e(str, str2);
    }

    public static GservicesValue<Boolean> value(String str, boolean z) {
        return new C1639a(str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    protected abstract T mo5764a();

    public final T get() {
        T t = this.f6593h;
        if (t != null) {
            return t;
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        synchronized (f6586c) {
        }
        synchronized (f6586c) {
            f6590g = null;
            f6589f = null;
        }
        try {
            try {
                T a = mo5764a();
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return a;
            } catch (SecurityException e) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                T a2 = mo5764a();
                Binder.restoreCallingIdentity(clearCallingIdentity);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return a2;
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    @Deprecated
    public final T getBinderSafe() {
        return get();
    }

    public void override(T t) {
        Log.w("GservicesValue", "GservicesValue.override(): test should probably call initForTests() first");
        this.f6593h = t;
        synchronized (f6586c) {
        }
    }

    public void resetOverride() {
        this.f6593h = null;
    }
}
