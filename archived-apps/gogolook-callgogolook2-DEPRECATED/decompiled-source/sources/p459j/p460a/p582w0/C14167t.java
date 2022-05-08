package p459j.p460a.p582w0;

import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
/* renamed from: j.a.w0.t */
/* loaded from: classes3-dex2jar.jar:j/a/w0/t.class */
public final class C14167t {
    @ColorInt

    /* renamed from: a */
    public static int f31683a;
    @ColorInt

    /* renamed from: b */
    public static int f31684b;
    @ColorInt

    /* renamed from: c */
    public static int f31685c = m2312d();
    @ColorInt

    /* renamed from: d */
    public static int f31686d;
    @ColorInt

    /* renamed from: e */
    public static int f31687e;
    @ColorInt

    /* renamed from: f */
    public static int f31688f;

    static {
        new C14167t();
    }

    /* renamed from: a */
    public static final int m2316a() {
        return f31685c;
    }

    @ColorInt
    /* renamed from: a */
    public static final int m2315a(@ColorRes int i) {
        return ContextCompat.getColor(MyApplication.m29013o(), i);
    }

    /* renamed from: b */
    public static final int m2314b() {
        if (f31687e <= 0) {
            f31687e = m2315a(2131100044);
        }
        return f31687e;
    }

    /* renamed from: c */
    public static final int m2313c() {
        if (f31688f <= 0) {
            f31688f = m2315a(2131100087);
        }
        return f31688f;
    }

    /* renamed from: d */
    public static final int m2312d() {
        if (f31684b <= 0) {
            f31684b = m2315a(2131100116);
        }
        return f31684b;
    }

    /* renamed from: e */
    public static final int m2311e() {
        if (f31686d <= 0) {
            f31686d = m2315a(2131100120);
        }
        return f31686d;
    }

    /* renamed from: f */
    public static final int m2310f() {
        if (f31683a <= 0) {
            f31683a = m2315a(2131100157);
        }
        return f31683a;
    }
}
