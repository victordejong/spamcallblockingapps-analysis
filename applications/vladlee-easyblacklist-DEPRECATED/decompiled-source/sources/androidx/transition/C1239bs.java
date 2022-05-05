package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.bs */
/* loaded from: classes-dex2jar.jar:androidx/transition/bs.class */
public final class C1239bs {

    /* renamed from: a */
    static final Property<View, Float> f5276a;

    /* renamed from: b */
    static final Property<View, Rect> f5277b;

    /* renamed from: c */
    private static final C1245by f5278c;

    /* renamed from: d */
    private static Field f5279d;

    /* renamed from: e */
    private static boolean f5280e;

    static {
        f5278c = Build.VERSION.SDK_INT >= 22 ? new C1244bx() : Build.VERSION.SDK_INT >= 21 ? new C1243bw() : Build.VERSION.SDK_INT >= 19 ? new C1242bv() : new C1245by();
        f5276a = new C1240bt(Float.class, "translationAlpha");
        f5277b = new C1241bu(Rect.class, "clipBounds");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1238br m6524a(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C1237bq(view) : C1235bp.m6529c(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6523a(View view, float f) {
        f5278c.mo6512a(view, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6522a(View view, int i) {
        if (!f5280e) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f5279d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f5280e = true;
        }
        Field field = f5279d;
        if (field != null) {
            try {
                f5279d.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6521a(View view, int i, int i2, int i3, int i4) {
        f5278c.mo6511a(view, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6520a(View view, Matrix matrix) {
        f5278c.mo6510a(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC1251cd m6519b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new C1250cc(view) : new C1249cb(view.getWindowToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m6518b(View view, Matrix matrix) {
        f5278c.mo6508b(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static float m6517c(View view) {
        return f5278c.mo6513a(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m6516c(View view, Matrix matrix) {
        f5278c.mo6506c(view, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m6515d(View view) {
        f5278c.mo6509b(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m6514e(View view) {
        f5278c.mo6507c(view);
    }
}
