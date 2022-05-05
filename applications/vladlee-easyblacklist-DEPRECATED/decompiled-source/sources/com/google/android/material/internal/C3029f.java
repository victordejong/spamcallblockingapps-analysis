package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;
import java.lang.reflect.Method;
/* renamed from: com.google.android.material.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/f.class */
public final class C3029f {

    /* renamed from: a */
    private static Method f18454a;

    /* renamed from: b */
    private static boolean f18455b;

    /* renamed from: a */
    public static boolean m1012a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return m1011b(drawableContainer, constantState);
    }

    /* renamed from: b */
    private static boolean m1011b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f18455b) {
            try {
                Method declaredMethod = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                f18454a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
            }
            f18455b = true;
        }
        Method method = f18454a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawableContainer, constantState);
            return true;
        } catch (Exception e2) {
            Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
            return false;
        }
    }
}
