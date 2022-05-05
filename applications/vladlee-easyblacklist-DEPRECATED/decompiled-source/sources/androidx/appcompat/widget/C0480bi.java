package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.graphics.C0752a;
/* renamed from: androidx.appcompat.widget.bi */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bi.class */
final class C0480bi {

    /* renamed from: i */
    private static final ThreadLocal<TypedValue> f2325i = new ThreadLocal<>();

    /* renamed from: a */
    static final int[] f2317a = {-16842910};

    /* renamed from: b */
    static final int[] f2318b = {16842908};

    /* renamed from: c */
    static final int[] f2319c = {16843518};

    /* renamed from: d */
    static final int[] f2320d = {16842919};

    /* renamed from: e */
    static final int[] f2321e = {16842912};

    /* renamed from: f */
    static final int[] f2322f = {16842913};

    /* renamed from: g */
    static final int[] f2323g = {-16842919, -16842908};

    /* renamed from: h */
    static final int[] f2324h = new int[0];

    /* renamed from: j */
    private static final int[] f2326j = new int[1];

    /* renamed from: a */
    public static int m9105a(Context context, int i) {
        int[] iArr = f2326j;
        iArr[0] = i;
        C0484bm a = C0484bm.m9093a(context, (AttributeSet) null, iArr);
        try {
            return a.m9085e(0);
        } finally {
            a.m9100a();
        }
    }

    /* renamed from: b */
    public static ColorStateList m9104b(Context context, int i) {
        int[] iArr = f2326j;
        iArr[0] = i;
        C0484bm a = C0484bm.m9093a(context, (AttributeSet) null, iArr);
        try {
            return a.m9083f(0);
        } finally {
            a.m9100a();
        }
    }

    /* renamed from: c */
    public static int m9103c(Context context, int i) {
        ColorStateList b = m9104b(context, i);
        if (b != null && b.isStateful()) {
            return b.getColorForState(f2317a, b.getDefaultColor());
        }
        TypedValue typedValue = f2325i.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f2325i.set(typedValue2);
        }
        context.getTheme().resolveAttribute(16842803, typedValue2, true);
        float f = typedValue2.getFloat();
        int a = m9105a(context, i);
        return C0752a.m8281b(a, Math.round(Color.alpha(a) * f));
    }
}
