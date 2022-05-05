package androidx.coordinatorlayout.widget;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: androidx.coordinatorlayout.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/d.class */
public final class C0589d {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f2683a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f2684b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m8771a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        Matrix matrix = f2683a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f2683a.set(matrix);
        } else {
            matrix.reset();
        }
        m8770a(viewGroup, view, matrix);
        RectF rectF = f2684b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f2684b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m8770a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m8770a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
