package androidx.appcompat.widget;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import androidx.core.graphics.drawable.AbstractC0224c;
import androidx.core.graphics.drawable.C0222a;
import f.a.l.a.c;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.d0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0.class */
public class C0099d0 {

    /* renamed from: a */
    private static final int[] f460a = {16842912};

    /* renamed from: b */
    private static final int[] f461b = new int[0];

    /* renamed from: c */
    public static final Rect f462c = new Rect();

    /* renamed from: d */
    private static Class<?> f463d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f463d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m6612a(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15 || !(drawable instanceof InsetDrawable)) {
            if (i < 15 && (drawable instanceof GradientDrawable)) {
                return false;
            }
            if (i < 17 && (drawable instanceof LayerDrawable)) {
                return false;
            }
            if (!(drawable instanceof DrawableContainer)) {
                if (drawable instanceof AbstractC0224c) {
                    return m6612a(((AbstractC0224c) drawable).m5952b());
                }
                if (drawable instanceof c) {
                    return m6612a(((c) drawable).a());
                }
                if (!(drawable instanceof ScaleDrawable)) {
                    return true;
                }
                return m6612a(((ScaleDrawable) drawable).getDrawable());
            }
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
                return true;
            }
            for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                if (!m6612a(drawable2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public static void m6611b(Drawable drawable) {
        if (Build.VERSION.SDK_INT != 21 || !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return;
        }
        m6610c(drawable);
    }

    /* renamed from: c */
    private static void m6610c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f460a);
        } else {
            drawable.setState(f461b);
        }
        drawable.setState(state);
    }

    /* renamed from: d */
    public static Rect m6609d(Drawable drawable) {
        Field[] fields;
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (f463d != null) {
            try {
                Drawable m5955q = C0222a.m5955q(drawable);
                Object invoke = m5955q.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(m5955q, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f463d.getFields()) {
                        String name = field.getName();
                        boolean z = true;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    z = false;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    z = true;
                                    break;
                                }
                                break;
                        }
                        if (!z) {
                            rect2.left = field.getInt(invoke);
                        } else if (z) {
                            rect2.top = field.getInt(invoke);
                        } else if (z) {
                            rect2.right = field.getInt(invoke);
                        } else if (z) {
                            rect2.bottom = field.getInt(invoke);
                        }
                    }
                    return rect2;
                }
            } catch (Exception e) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f462c;
    }

    /* renamed from: e */
    public static PorterDuff.Mode m6608e(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
