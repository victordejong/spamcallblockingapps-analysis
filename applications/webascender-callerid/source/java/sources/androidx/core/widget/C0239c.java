package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: androidx.core.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/c.class */
public final class C0239c {

    /* renamed from: a */
    private static Field f1376a;

    /* renamed from: b */
    private static boolean f1377b;

    /* renamed from: a */
    public static Drawable m5897a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f1377b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f1376a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f1377b = true;
        }
        Field field = f1376a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f1376a = null;
            return null;
        }
    }

    /* renamed from: b */
    public static ColorStateList m5896b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (!(compoundButton instanceof AbstractC0246j)) {
            return null;
        }
        return ((AbstractC0246j) compoundButton).getSupportButtonTintList();
    }

    /* renamed from: c */
    public static void m5895c(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof AbstractC0246j)) {
        } else {
            ((AbstractC0246j) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m5894d(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof AbstractC0246j)) {
        } else {
            ((AbstractC0246j) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
