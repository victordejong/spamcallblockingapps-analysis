package com.google.android.gms.internal.measurement;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.checkerframework.checker.nullness.compatqual.NonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeb.class */
public final class zzeb {
    /* renamed from: a */
    public static int m12742a(int i, int i2) {
        String str;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            str = zzed.m12733b("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
        } else if (i2 < 0) {
            StringBuilder sb = new StringBuilder(26);
            sb.append("negative size: ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        } else {
            str = zzed.m12733b("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(str);
    }

    @NonNullDecl
    /* renamed from: b */
    public static <T> T m12741b(@NonNullDecl T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @NonNullDecl
    /* renamed from: c */
    public static <T> T m12740c(@NonNullDecl T t, @NullableDecl Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: d */
    private static String m12739d(int i, int i2, @NullableDecl String str) {
        if (i < 0) {
            return zzed.m12733b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzed.m12733b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: e */
    public static void m12738e(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m12739d(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m12739d(i2, i3, "end index") : zzed.m12733b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: f */
    public static void m12737f(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: g */
    public static int m12736g(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(m12739d(i, i2, FirebaseAnalytics.Param.INDEX));
    }

    /* renamed from: h */
    public static void m12735h(boolean z, @NullableDecl Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
