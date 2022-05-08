package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/TransitionUtils.class */
class TransitionUtils {

    /* renamed from: a */
    private static final RectF f11764a = new RectF();

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/TransitionUtils$CanvasOperation.class */
    interface CanvasOperation {
        /* renamed from: a */
        void mo8554a(Canvas canvas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/TransitionUtils$CornerSizeBinaryOperator.class */
    public interface CornerSizeBinaryOperator {
        @NonNull
        /* renamed from: a */
        CornerSize mo8553a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2);
    }

    private TransitionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static float m8570a(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ShapeAppearanceModel m8569b(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.m9254x(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.1
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            @NonNull
            /* renamed from: a */
            public CornerSize mo8457a(@NonNull CornerSize cornerSize) {
                if (!(cornerSize instanceof RelativeCornerSize)) {
                    cornerSize = new RelativeCornerSize(cornerSize.mo9279a(rectF) / rectF.height());
                }
                return cornerSize;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Shader m8568c(@ColorInt int i) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i, i, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: d */
    public static <T> T m8567d(@Nullable T t, @NonNull T t2) {
        if (t == null) {
            t = t2;
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static View m8566e(View view, @IdRes int i) {
        String resourceName = view.getResources().getResourceName(i);
        while (view != null) {
            if (view.getId() != i) {
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static View m8565f(View view, @IdRes int i) {
        View findViewById = view.findViewById(i);
        return findViewById != null ? findViewById : m8566e(view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static RectF m8564g(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new RectF(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static RectF m8563h(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: i */
    private static boolean m8562i(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.m9260r().mo9279a(rectF) == 0.0f && shapeAppearanceModel.m9258t().mo9279a(rectF) == 0.0f && shapeAppearanceModel.m9266l().mo9279a(rectF) == 0.0f && shapeAppearanceModel.m9268j().mo9279a(rectF) == 0.0f) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static float m8561j(float f, float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3) {
        return f + (f3 * (f2 - f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static float m8560k(float f, float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5) {
        return f5 < f3 ? f : f5 > f4 ? f2 : m8561j(f, f2, (f5 - f3) / (f4 - f3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static int m8559l(int i, int i2, @FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2, @FloatRange(from = 0.0d, to = 1.0d) float f3) {
        return f3 < f ? i : f3 > f2 ? i2 : (int) m8561j(i, i2, (f3 - f) / (f2 - f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static ShapeAppearanceModel m8558m(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, final RectF rectF, final RectF rectF2, @FloatRange(from = 0.0d, to = 1.0d) final float f, @FloatRange(from = 0.0d, to = 1.0d) final float f2, @FloatRange(from = 0.0d, to = 1.0d) final float f3) {
        return f3 < f ? shapeAppearanceModel : f3 > f2 ? shapeAppearanceModel2 : m8555p(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.2
            @Override // com.google.android.material.transition.TransitionUtils.CornerSizeBinaryOperator
            @NonNull
            /* renamed from: a */
            public CornerSize mo8553a(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.m8560k(cornerSize.mo9279a(rectF), cornerSize2.mo9279a(rectF2), f, f2, f3));
            }
        });
    }

    /* renamed from: n */
    private static int m8557n(Canvas canvas, Rect rect, int i) {
        f11764a.set(rect);
        if (Build.VERSION.SDK_INT >= 21) {
            return canvas.saveLayerAlpha(f11764a, i);
        }
        RectF rectF = f11764a;
        return canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i, 31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static void m8556o(Canvas canvas, Rect rect, float f, float f2, float f3, int i, CanvasOperation canvasOperation) {
        if (i > 0) {
            int save = canvas.save();
            canvas.translate(f, f2);
            canvas.scale(f3, f3);
            if (i < 255) {
                m8557n(canvas, rect, i);
            }
            canvasOperation.mo8554a(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: p */
    static ShapeAppearanceModel m8555p(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        ShapeAppearanceModel.Builder v = (m8562i(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).m9256v();
        v.m9249E(cornerSizeBinaryOperator.mo8553a(shapeAppearanceModel.m9260r(), shapeAppearanceModel2.m9260r()));
        v.m9245I(cornerSizeBinaryOperator.mo8553a(shapeAppearanceModel.m9258t(), shapeAppearanceModel2.m9258t()));
        v.m9223v(cornerSizeBinaryOperator.mo8553a(shapeAppearanceModel.m9268j(), shapeAppearanceModel2.m9268j()));
        v.m9219z(cornerSizeBinaryOperator.mo8553a(shapeAppearanceModel.m9266l(), shapeAppearanceModel2.m9266l()));
        return v.m9232m();
    }
}
