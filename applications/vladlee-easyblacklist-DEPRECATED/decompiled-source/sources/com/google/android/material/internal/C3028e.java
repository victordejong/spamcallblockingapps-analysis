package com.google.android.material.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
/* renamed from: com.google.android.material.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/e.class */
public final class C3028e {

    /* renamed from: a */
    private static final ThreadLocal<Matrix> f18452a = new ThreadLocal<>();

    /* renamed from: b */
    private static final ThreadLocal<RectF> f18453b = new ThreadLocal<>();

    /* renamed from: a */
    public static void m1014a(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        Matrix matrix = f18452a.get();
        if (matrix == null) {
            matrix = new Matrix();
            f18452a.set(matrix);
        } else {
            matrix.reset();
        }
        m1013a(viewGroup, view, matrix);
        RectF rectF = f18453b.get();
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = new RectF();
            f18453b.set(rectF2);
        }
        rectF2.set(rect);
        matrix.mapRect(rectF2);
        rect.set((int) (rectF2.left + 0.5f), (int) (rectF2.top + 0.5f), (int) (rectF2.right + 0.5f), (int) (rectF2.bottom + 0.5f));
    }

    /* renamed from: a */
    private static void m1013a(ViewParent viewParent, View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if ((parent instanceof View) && parent != viewParent) {
            View view2 = (View) parent;
            m1013a(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (!view.getMatrix().isIdentity()) {
            matrix.preConcat(view.getMatrix());
        }
    }
}
