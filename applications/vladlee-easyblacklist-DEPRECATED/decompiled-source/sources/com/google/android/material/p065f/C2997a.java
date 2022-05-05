package com.google.android.material.p065f;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.core.graphics.C0752a;
/* renamed from: com.google.android.material.f.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/f/a.class */
public final class C2997a {

    /* renamed from: a */
    public static final boolean f18212a;

    /* renamed from: b */
    private static final int[] f18213b;

    /* renamed from: c */
    private static final int[] f18214c;

    /* renamed from: d */
    private static final int[] f18215d;

    /* renamed from: e */
    private static final int[] f18216e;

    /* renamed from: f */
    private static final int[] f18217f;

    /* renamed from: g */
    private static final int[] f18218g;

    /* renamed from: h */
    private static final int[] f18219h;

    /* renamed from: i */
    private static final int[] f18220i;

    /* renamed from: j */
    private static final int[] f18221j;

    static {
        f18212a = Build.VERSION.SDK_INT >= 21;
        f18213b = new int[]{16842919};
        f18214c = new int[]{16843623, 16842908};
        f18215d = new int[]{16842908};
        f18216e = new int[]{16843623};
        f18217f = new int[]{16842913, 16842919};
        f18218g = new int[]{16842913, 16843623, 16842908};
        f18219h = new int[]{16842913, 16842908};
        f18220i = new int[]{16842913, 16843623};
        f18221j = new int[]{16842913};
    }

    /* renamed from: a */
    private static int m1181a(int i) {
        return C0752a.m8281b(i, Math.min(Color.alpha(i) * 2, 255));
    }

    /* renamed from: a */
    private static int m1179a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f18212a) {
            i = m1181a(colorForState);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    /* renamed from: a */
    public static ColorStateList m1180a(ColorStateList colorStateList) {
        if (f18212a) {
            int[] iArr = f18221j;
            int a = m1179a(colorStateList, f18217f);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{a, m1179a(colorStateList, f18213b)});
        }
        int[] iArr2 = f18217f;
        int a2 = m1179a(colorStateList, iArr2);
        int[] iArr3 = f18218g;
        int a3 = m1179a(colorStateList, iArr3);
        int[] iArr4 = f18219h;
        int a4 = m1179a(colorStateList, iArr4);
        int[] iArr5 = f18220i;
        int a5 = m1179a(colorStateList, iArr5);
        int[] iArr6 = f18221j;
        int[] iArr7 = f18213b;
        int a6 = m1179a(colorStateList, iArr7);
        int[] iArr8 = f18214c;
        int a7 = m1179a(colorStateList, iArr8);
        int[] iArr9 = f18215d;
        int a8 = m1179a(colorStateList, iArr9);
        int[] iArr10 = f18216e;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{a2, a3, a4, a5, 0, a6, a7, a8, m1179a(colorStateList, iArr10), 0});
    }
}
