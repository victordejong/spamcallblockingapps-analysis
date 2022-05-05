package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.ac */
/* loaded from: classes-dex2jar.jar:androidx/transition/ac.class */
final class C1191ac implements AbstractC1192ad {

    /* renamed from: a */
    private static Class<?> f5184a;

    /* renamed from: b */
    private static boolean f5185b;

    /* renamed from: c */
    private static Method f5186c;

    /* renamed from: d */
    private static boolean f5187d;

    /* renamed from: e */
    private static Method f5188e;

    /* renamed from: f */
    private static boolean f5189f;

    /* renamed from: g */
    private final View f5190g;

    private C1191ac(View view) {
        this.f5190g = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1192ad m6552a(View view, ViewGroup viewGroup, Matrix matrix) {
        if (!f5187d) {
            try {
                m6554a();
                Method declaredMethod = f5184a.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                f5186c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve addGhost method", e);
            }
            f5187d = true;
        }
        Method method = f5186c;
        if (method == null) {
            return null;
        }
        try {
            return new C1191ac((View) method.invoke(null, view, viewGroup, matrix));
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3.getCause());
        }
    }

    /* renamed from: a */
    private static void m6554a() {
        if (!f5185b) {
            try {
                f5184a = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e) {
                Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e);
            }
            f5185b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6553a(View view) {
        if (!f5189f) {
            try {
                m6554a();
                Method declaredMethod = f5184a.getDeclaredMethod("removeGhost", View.class);
                f5188e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e);
            }
            f5189f = true;
        }
        Method method = f5188e;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    @Override // androidx.transition.AbstractC1192ad
    /* renamed from: a */
    public final void mo6551a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.AbstractC1192ad
    public final void setVisibility(int i) {
        this.f5190g.setVisibility(i);
    }
}
