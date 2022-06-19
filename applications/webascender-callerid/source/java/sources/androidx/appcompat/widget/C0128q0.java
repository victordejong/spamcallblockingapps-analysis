package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import f.a.j;
import f.h.e.a;
/* renamed from: androidx.appcompat.widget.q0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/q0.class */
public class C0128q0 {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f567a = new ThreadLocal<>();

    /* renamed from: b */
    static final int[] f568b = {-16842910};

    /* renamed from: c */
    static final int[] f569c = {16842908};

    /* renamed from: d */
    static final int[] f570d = {16842919};

    /* renamed from: e */
    static final int[] f571e = {16842912};

    /* renamed from: f */
    static final int[] f572f = new int[0];

    /* renamed from: g */
    private static final int[] f573g = new int[1];

    /* renamed from: a */
    public static void m6489a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(j.u0);
        try {
            if (!obtainStyledAttributes.hasValue(j.z0)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static int m6488b(Context context, int i) {
        ColorStateList m6485e = m6485e(context, i);
        if (m6485e == null || !m6485e.isStateful()) {
            TypedValue m6484f = m6484f();
            context.getTheme().resolveAttribute(16842803, m6484f, true);
            return m6486d(context, i, m6484f.getFloat());
        }
        return m6485e.getColorForState(f568b, m6485e.getDefaultColor());
    }

    /* renamed from: c */
    public static int m6487c(Context context, int i) {
        int[] iArr = f573g;
        iArr[0] = i;
        C0135v0 m6446u = C0135v0.m6446u(context, null, iArr);
        try {
            return m6446u.m6465b(0, 0);
        } finally {
            m6446u.m6444w();
        }
    }

    /* renamed from: d */
    static int m6486d(Context context, int i, float f) {
        int m6487c = m6487c(context, i);
        return a.d(m6487c, Math.round(Color.alpha(m6487c) * f));
    }

    /* renamed from: e */
    public static ColorStateList m6485e(Context context, int i) {
        int[] iArr = f573g;
        iArr[0] = i;
        C0135v0 m6446u = C0135v0.m6446u(context, null, iArr);
        try {
            return m6446u.m6464c(0);
        } finally {
            m6446u.m6444w();
        }
    }

    /* renamed from: f */
    private static TypedValue m6484f() {
        ThreadLocal<TypedValue> threadLocal = f567a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }
}
