package com.google.android.material.ripple;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/ripple/RippleUtils.class */
public class RippleUtils {

    /* renamed from: a */
    public static final boolean f11008a;

    /* renamed from: b */
    private static final int[] f11009b;

    /* renamed from: c */
    private static final int[] f11010c;

    /* renamed from: d */
    private static final int[] f11011d;

    /* renamed from: e */
    private static final int[] f11012e;

    /* renamed from: f */
    private static final int[] f11013f;

    /* renamed from: g */
    private static final int[] f11014g;

    /* renamed from: h */
    private static final int[] f11015h;

    /* renamed from: i */
    private static final int[] f11016i;

    /* renamed from: j */
    private static final int[] f11017j;

    /* renamed from: k */
    private static final int[] f11018k;
    @VisibleForTesting

    /* renamed from: l */
    static final String f11019l;

    static {
        f11008a = Build.VERSION.SDK_INT >= 21;
        f11009b = new int[]{16842919};
        f11010c = new int[]{16843623, 16842908};
        f11011d = new int[]{16842908};
        f11012e = new int[]{16843623};
        f11013f = new int[]{16842913, 16842919};
        f11014g = new int[]{16842913, 16843623, 16842908};
        f11015h = new int[]{16842913, 16842908};
        f11016i = new int[]{16842913, 16843623};
        f11017j = new int[]{16842913};
        f11018k = new int[]{16842910, 16842919};
        f11019l = RippleUtils.class.getSimpleName();
    }

    private RippleUtils() {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    @NonNull
    /* renamed from: a */
    public static ColorStateList m9370a(@Nullable ColorStateList colorStateList) {
        if (f11008a) {
            int[] iArr = f11017j;
            int c = m9368c(colorStateList, f11013f);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{c, m9368c(colorStateList, f11009b)});
        }
        int[] iArr2 = f11013f;
        int c2 = m9368c(colorStateList, iArr2);
        int[] iArr3 = f11014g;
        int c3 = m9368c(colorStateList, iArr3);
        int[] iArr4 = f11015h;
        int c4 = m9368c(colorStateList, iArr4);
        int[] iArr5 = f11016i;
        int c5 = m9368c(colorStateList, iArr5);
        int[] iArr6 = f11017j;
        int[] iArr7 = f11009b;
        int c6 = m9368c(colorStateList, iArr7);
        int[] iArr8 = f11010c;
        int c7 = m9368c(colorStateList, iArr8);
        int[] iArr9 = f11011d;
        int c8 = m9368c(colorStateList, iArr9);
        int[] iArr10 = f11012e;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{c2, c3, c4, c5, 0, c6, c7, c8, m9368c(colorStateList, iArr10), 0});
    }

    @ColorInt
    @TargetApi(21)
    /* renamed from: b */
    private static int m9369b(@ColorInt int i) {
        return ColorUtils.m19584d(i, Math.min(Color.alpha(i) * 2, 255));
    }

    @ColorInt
    /* renamed from: c */
    private static int m9368c(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f11008a) {
            i = m9369b(colorForState);
        }
        return i;
    }

    @NonNull
    /* renamed from: d */
    public static ColorStateList m9367d(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f11018k, 0)) != 0) {
            Log.w(f11019l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    /* renamed from: e */
    public static boolean m9366e(@NonNull int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else {
                if (!(i == 16842908 || i == 16842919)) {
                    z = z;
                    if (i != 16843623) {
                    }
                }
                z2 = true;
                z = z;
            }
        }
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }
}
