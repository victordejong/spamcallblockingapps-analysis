package p012b.p076s.p078b.p079a.p080a1;

import android.text.TextUtils;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: b.s.b.a.a1.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/a.class */
public final class C1160a {
    /* renamed from: a */
    public static int m34523a(int i, int i2, int i3) {
        if (i >= i2 && i < i3) {
            return i;
        }
        throw new IndexOutOfBoundsException();
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m34522a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static String m34521a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m34520a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m34519a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: b */
    public static void m34518b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public static void m34517b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
