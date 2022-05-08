package com.mixpanel.android.util;

import android.content.Context;
import android.graphics.Color;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/ViewUtils.class */
public class ViewUtils {
    public static float dpToPx(float f, Context context) {
        return f * (context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    public static int mixColors(int i, int i2) {
        return Color.rgb((Color.red(i) / 2) + (Color.red(i2) / 2), (Color.green(i) / 2) + (Color.green(i2) / 2), (Color.blue(i) / 2) + (Color.blue(i2) / 2));
    }
}
