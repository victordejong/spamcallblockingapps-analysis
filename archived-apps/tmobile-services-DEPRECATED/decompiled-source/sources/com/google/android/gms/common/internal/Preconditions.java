package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.zzc;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Preconditions.class */
public final class Preconditions {
    private Preconditions() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    /* renamed from: a */
    public static void m14533a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public static void m14532b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    /* renamed from: c */
    public static void m14531c(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @KeepForSdk
    /* renamed from: d */
    public static void m14530d(Handler handler) {
        m14529e(handler, "Must be called on the handler thread");
    }

    @KeepForSdk
    /* renamed from: e */
    public static void m14529e(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    /* renamed from: f */
    public static void m14528f(String str) {
        if (!zzc.m14289a()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    /* renamed from: g */
    public static String m14527g(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    @KeepForSdk
    /* renamed from: h */
    public static String m14526h(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: i */
    public static void m14525i() {
        m14524j("Must not be called on the main application thread");
    }

    @KeepForSdk
    /* renamed from: j */
    public static void m14524j(String str) {
        if (zzc.m14289a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @KeepForSdk
    /* renamed from: k */
    public static <T> T m14523k(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    @NonNull
    @KeepForSdk
    /* renamed from: l */
    public static <T> T m14522l(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @KeepForSdk
    /* renamed from: m */
    public static int m14521m(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @KeepForSdk
    /* renamed from: n */
    public static void m14520n(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @KeepForSdk
    /* renamed from: o */
    public static void m14519o(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
