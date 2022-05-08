package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;
/* loaded from: classes-dex2jar.jar:com/google/android/material/color/MaterialColors.class */
public class MaterialColors {
    private MaterialColors() {
    }

    @ColorInt
    /* renamed from: a */
    public static int m10016a(@NonNull Context context, @AttrRes int i, @ColorInt int i2) {
        TypedValue a = MaterialAttributes.m9398a(context, i);
        return a != null ? a.data : i2;
    }

    @ColorInt
    /* renamed from: b */
    public static int m10015b(Context context, @AttrRes int i, String str) {
        return MaterialAttributes.m9396c(context, i, str);
    }

    @ColorInt
    /* renamed from: c */
    public static int m10014c(@NonNull View view, @AttrRes int i) {
        return MaterialAttributes.m9395d(view, i);
    }

    @ColorInt
    /* renamed from: d */
    public static int m10013d(@NonNull View view, @AttrRes int i, @ColorInt int i2) {
        return m10016a(view.getContext(), i, i2);
    }

    @ColorInt
    /* renamed from: e */
    public static int m10012e(@ColorInt int i, @ColorInt int i2) {
        return ColorUtils.m19586b(i2, i);
    }

    @ColorInt
    /* renamed from: f */
    public static int m10011f(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        return m10012e(i, ColorUtils.m19584d(i2, Math.round(Color.alpha(i2) * f)));
    }

    @ColorInt
    /* renamed from: g */
    public static int m10010g(@NonNull View view, @AttrRes int i, @AttrRes int i2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        return m10011f(m10014c(view, i), m10014c(view, i2), f);
    }
}
