package com.mikepenz.aboutlibraries.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p001v4.content.ContextCompat;
import android.util.TypedValue;
import android.view.View;
@SuppressLint({"InlinedApi"})
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/UIUtils.class */
public class UIUtils {
    public static float convertDpToPixel(float f, Context context) {
        return f * (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static float convertPixelsToDp(float f, Context context) {
        return f / (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static int getThemeAttributeDimensionSize(Context context, int i) {
        Throwable th;
        TypedArray typedArray = null;
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
            try {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
                if (obtainStyledAttributes != null) {
                    obtainStyledAttributes.recycle();
                }
                return dimensionPixelSize;
            } catch (Throwable th2) {
                th = th2;
                typedArray = obtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static int getThemeColor(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.data;
        }
        return 0;
    }

    public static int getThemeColorFromAttrOrRes(Context context, int i, int i2) {
        int themeColor = getThemeColor(context, i);
        int i3 = themeColor;
        if (themeColor == 0) {
            i3 = ContextCompat.getColor(context, i2);
        }
        return i3;
    }

    public static void setBackground(View view, int i) {
        setBackground(view, ContextCompat.getDrawable(view.getContext(), i));
    }

    @SuppressLint({"NewApi"})
    public static void setBackground(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(drawable);
        } else {
            view.setBackground(drawable);
        }
    }
}
