package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.transition.TransitionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform.class */
public final class MaterialContainerTransform extends Transition {

    /* renamed from: l0 */
    private static final String f11673l0 = MaterialContainerTransform.class.getSimpleName();

    /* renamed from: m0 */
    private static final String[] f11674m0 = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};

    /* renamed from: n0 */
    private static final ProgressThresholdsGroup f11675n0 = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));

    /* renamed from: o0 */
    private static final ProgressThresholdsGroup f11676o0 = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));

    /* renamed from: p0 */
    private static final ProgressThresholdsGroup f11677p0 = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));

    /* renamed from: q0 */
    private static final ProgressThresholdsGroup f11678q0 = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));

    /* renamed from: O */
    private boolean f11679O = false;

    /* renamed from: P */
    private boolean f11680P = false;
    @IdRes

    /* renamed from: Q */
    private int f11681Q = 16908290;
    @IdRes

    /* renamed from: R */
    private int f11682R = -1;
    @IdRes

    /* renamed from: S */
    private int f11683S = -1;
    @ColorInt

    /* renamed from: T */
    private int f11684T = 0;
    @ColorInt

    /* renamed from: U */
    private int f11685U = 0;
    @ColorInt

    /* renamed from: V */
    private int f11686V = 0;
    @ColorInt

    /* renamed from: W */
    private int f11687W = 1375731712;

    /* renamed from: X */
    private int f11688X = 0;

    /* renamed from: Y */
    private int f11689Y = 0;

    /* renamed from: Z */
    private int f11690Z = 0;
    @Nullable

    /* renamed from: a0 */
    private View f11691a0;
    @Nullable

    /* renamed from: b0 */
    private View f11692b0;
    @Nullable

    /* renamed from: c0 */
    private ShapeAppearanceModel f11693c0;
    @Nullable

    /* renamed from: d0 */
    private ShapeAppearanceModel f11694d0;
    @Nullable

    /* renamed from: e0 */
    private ProgressThresholds f11695e0;
    @Nullable

    /* renamed from: f0 */
    private ProgressThresholds f11696f0;
    @Nullable

    /* renamed from: g0 */
    private ProgressThresholds f11697g0;
    @Nullable

    /* renamed from: h0 */
    private ProgressThresholds f11698h0;

    /* renamed from: i0 */
    private boolean f11699i0;

    /* renamed from: j0 */
    private float f11700j0;

    /* renamed from: k0 */
    private float f11701k0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$FadeMode.class */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$FitMode.class */
    public @interface FitMode {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$ProgressThresholds.class */
    public static class ProgressThresholds {
        @FloatRange

        /* renamed from: a */
        private final float f11708a;
        @FloatRange

        /* renamed from: b */
        private final float f11709b;

        public ProgressThresholds(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            this.f11708a = f;
            this.f11709b = f2;
        }

        @FloatRange
        /* renamed from: c */
        public float m8613c() {
            return this.f11709b;
        }

        @FloatRange
        /* renamed from: d */
        public float m8612d() {
            return this.f11708a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup.class */
    public static class ProgressThresholdsGroup {
        @NonNull

        /* renamed from: a */
        private final ProgressThresholds f11710a;
        @NonNull

        /* renamed from: b */
        private final ProgressThresholds f11711b;
        @NonNull

        /* renamed from: c */
        private final ProgressThresholds f11712c;
        @NonNull

        /* renamed from: d */
        private final ProgressThresholds f11713d;

        private ProgressThresholdsGroup(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.f11710a = progressThresholds;
            this.f11711b = progressThresholds2;
            this.f11712c = progressThresholds3;
            this.f11713d = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$TransitionDirection.class */
    public @interface TransitionDirection {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialContainerTransform$TransitionDrawable.class */
    private static final class TransitionDrawable extends Drawable {

        /* renamed from: A */
        private final ProgressThresholdsGroup f11714A;

        /* renamed from: B */
        private final FadeModeEvaluator f11715B;

        /* renamed from: C */
        private final FitModeEvaluator f11716C;

        /* renamed from: D */
        private final boolean f11717D;

        /* renamed from: E */
        private final Paint f11718E;

        /* renamed from: F */
        private final Path f11719F;

        /* renamed from: G */
        private FadeModeResult f11720G;

        /* renamed from: H */
        private FitModeResult f11721H;

        /* renamed from: I */
        private RectF f11722I;

        /* renamed from: J */
        private float f11723J;

        /* renamed from: K */
        private float f11724K;

        /* renamed from: L */
        private float f11725L;

        /* renamed from: a */
        private final View f11726a;

        /* renamed from: b */
        private final RectF f11727b;

        /* renamed from: c */
        private final ShapeAppearanceModel f11728c;

        /* renamed from: d */
        private final float f11729d;

        /* renamed from: e */
        private final View f11730e;

        /* renamed from: f */
        private final RectF f11731f;

        /* renamed from: g */
        private final ShapeAppearanceModel f11732g;

        /* renamed from: h */
        private final float f11733h;

        /* renamed from: i */
        private final Paint f11734i;

        /* renamed from: j */
        private final Paint f11735j;

        /* renamed from: k */
        private final Paint f11736k;

        /* renamed from: l */
        private final Paint f11737l;

        /* renamed from: m */
        private final Paint f11738m;

        /* renamed from: n */
        private final MaskEvaluator f11739n;

        /* renamed from: o */
        private final PathMeasure f11740o;

        /* renamed from: p */
        private final float f11741p;

        /* renamed from: q */
        private final float[] f11742q;

        /* renamed from: r */
        private final boolean f11743r;

        /* renamed from: s */
        private final float f11744s;

        /* renamed from: t */
        private final float f11745t;

        /* renamed from: u */
        private final boolean f11746u;

        /* renamed from: v */
        private final MaterialShapeDrawable f11747v;

        /* renamed from: w */
        private final RectF f11748w;

        /* renamed from: x */
        private final RectF f11749x;

        /* renamed from: y */
        private final RectF f11750y;

        /* renamed from: z */
        private final RectF f11751z;

        private TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup, boolean z3) {
            this.f11734i = new Paint();
            this.f11735j = new Paint();
            this.f11736k = new Paint();
            this.f11737l = new Paint();
            this.f11738m = new Paint();
            this.f11739n = new MaskEvaluator();
            this.f11742q = new float[2];
            this.f11747v = new MaterialShapeDrawable();
            this.f11718E = new Paint();
            this.f11719F = new Path();
            this.f11726a = view;
            this.f11727b = rectF;
            this.f11728c = shapeAppearanceModel;
            this.f11729d = f;
            this.f11730e = view2;
            this.f11731f = rectF2;
            this.f11732g = shapeAppearanceModel2;
            this.f11733h = f2;
            this.f11743r = z;
            this.f11746u = z2;
            this.f11715B = fadeModeEvaluator;
            this.f11716C = fitModeEvaluator;
            this.f11714A = progressThresholdsGroup;
            this.f11717D = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f11744s = displayMetrics.widthPixels;
            this.f11745t = displayMetrics.heightPixels;
            this.f11734i.setColor(i);
            this.f11735j.setColor(i2);
            this.f11736k.setColor(i3);
            this.f11747v.m9328W(ColorStateList.valueOf(0));
            this.f11747v.m9316e0(2);
            this.f11747v.m9322b0(false);
            this.f11747v.m9320c0(-7829368);
            this.f11748w = new RectF(rectF);
            this.f11749x = new RectF(this.f11748w);
            this.f11750y = new RectF(this.f11748w);
            this.f11751z = new RectF(this.f11750y);
            PointF m = m8595m(rectF);
            PointF m2 = m8595m(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.mo8631a(m.x, m.y, m2.x, m2.y), false);
            this.f11740o = pathMeasure;
            this.f11741p = pathMeasure.getLength();
            this.f11742q[0] = rectF.centerX();
            this.f11742q[1] = rectF.top;
            this.f11738m.setStyle(Paint.Style.FILL);
            this.f11738m.setShader(TransitionUtils.m8568c(i4));
            this.f11718E.setStyle(Paint.Style.STROKE);
            this.f11718E.setStrokeWidth(10.0f);
            m8592p(0.0f);
        }

        /* renamed from: d */
        private static float m8604d(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * 0.3f;
        }

        /* renamed from: e */
        private static float m8603e(RectF rectF, float f) {
            return (rectF.centerY() / f) * 1.5f;
        }

        /* renamed from: f */
        private void m8602f(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF m = m8595m(rectF);
            if (this.f11725L == 0.0f) {
                path.reset();
                path.moveTo(m.x, m.y);
                return;
            }
            path.lineTo(m.x, m.y);
            this.f11718E.setColor(i);
            canvas.drawPath(path, this.f11718E);
        }

        /* renamed from: g */
        private void m8601g(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.f11718E.setColor(i);
            canvas.drawRect(rectF, this.f11718E);
        }

        /* renamed from: h */
        private void m8600h(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.f11739n.m8632d(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                m8598j(canvas);
            } else {
                m8599i(canvas);
            }
            canvas.restore();
        }

        /* renamed from: i */
        private void m8599i(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.f11747v;
            RectF rectF = this.f11722I;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.f11747v.m9329V(this.f11723J);
            this.f11747v.m9314f0((int) this.f11724K);
            this.f11747v.setShapeAppearanceModel(this.f11739n.m8633c());
            this.f11747v.draw(canvas);
        }

        /* renamed from: j */
        private void m8598j(Canvas canvas) {
            ShapeAppearanceModel c = this.f11739n.m8633c();
            if (c.m9257u(this.f11722I)) {
                float a = c.m9260r().mo9279a(this.f11722I);
                canvas.drawRoundRect(this.f11722I, a, a, this.f11737l);
                return;
            }
            canvas.drawPath(this.f11739n.m8632d(), this.f11737l);
        }

        /* renamed from: k */
        private void m8597k(Canvas canvas) {
            m8594n(canvas, this.f11736k);
            Rect bounds = getBounds();
            RectF rectF = this.f11750y;
            TransitionUtils.m8556o(canvas, bounds, rectF.left, rectF.top, this.f11721H.f11663b, this.f11720G.f11647b, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.2
                @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
                /* renamed from: a */
                public void mo8554a(Canvas canvas2) {
                    TransitionDrawable.this.f11730e.draw(canvas2);
                }
            });
        }

        /* renamed from: l */
        private void m8596l(Canvas canvas) {
            m8594n(canvas, this.f11735j);
            Rect bounds = getBounds();
            RectF rectF = this.f11748w;
            TransitionUtils.m8556o(canvas, bounds, rectF.left, rectF.top, this.f11721H.f11662a, this.f11720G.f11646a, new TransitionUtils.CanvasOperation() { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.1
                @Override // com.google.android.material.transition.TransitionUtils.CanvasOperation
                /* renamed from: a */
                public void mo8554a(Canvas canvas2) {
                    TransitionDrawable.this.f11726a.draw(canvas2);
                }
            });
        }

        /* renamed from: m */
        private static PointF m8595m(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        /* renamed from: n */
        private void m8594n(Canvas canvas, Paint paint) {
            if (paint.getColor() != 0 && paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o */
        public void m8593o(float f) {
            if (this.f11725L != f) {
                m8592p(f);
            }
        }

        /* renamed from: p */
        private void m8592p(float f) {
            this.f11725L = f;
            this.f11738m.setAlpha((int) (this.f11743r ? TransitionUtils.m8561j(0.0f, 255.0f, f) : TransitionUtils.m8561j(255.0f, 0.0f, f)));
            this.f11740o.getPosTan(this.f11741p * f, this.f11742q, null);
            float[] fArr = this.f11742q;
            float f2 = fArr[0];
            float f3 = fArr[1];
            Float valueOf = Float.valueOf(this.f11714A.f11711b.f11708a);
            Preconditions.m19337d(valueOf);
            float floatValue = valueOf.floatValue();
            Float valueOf2 = Float.valueOf(this.f11714A.f11711b.f11709b);
            Preconditions.m19337d(valueOf2);
            FitModeResult a = this.f11716C.mo8638a(f, floatValue, valueOf2.floatValue(), this.f11727b.width(), this.f11727b.height(), this.f11731f.width(), this.f11731f.height());
            this.f11721H = a;
            RectF rectF = this.f11748w;
            float f4 = a.f11664c;
            rectF.set(f2 - (f4 / 2.0f), f3, (f4 / 2.0f) + f2, a.f11665d + f3);
            RectF rectF2 = this.f11750y;
            FitModeResult fitModeResult = this.f11721H;
            float f5 = fitModeResult.f11666e;
            rectF2.set(f2 - (f5 / 2.0f), f3, f2 + (f5 / 2.0f), fitModeResult.f11667f + f3);
            this.f11749x.set(this.f11748w);
            this.f11751z.set(this.f11750y);
            Float valueOf3 = Float.valueOf(this.f11714A.f11712c.f11708a);
            Preconditions.m19337d(valueOf3);
            float floatValue2 = valueOf3.floatValue();
            Float valueOf4 = Float.valueOf(this.f11714A.f11712c.f11709b);
            Preconditions.m19337d(valueOf4);
            float floatValue3 = valueOf4.floatValue();
            boolean b = this.f11716C.mo8637b(this.f11721H);
            RectF rectF3 = b ? this.f11749x : this.f11751z;
            float k = TransitionUtils.m8560k(0.0f, 1.0f, floatValue2, floatValue3, f);
            if (!b) {
                k = 1.0f - k;
            }
            this.f11716C.mo8636c(rectF3, k, this.f11721H);
            this.f11722I = new RectF(Math.min(this.f11749x.left, this.f11751z.left), Math.min(this.f11749x.top, this.f11751z.top), Math.max(this.f11749x.right, this.f11751z.right), Math.max(this.f11749x.bottom, this.f11751z.bottom));
            this.f11739n.m8634b(f, this.f11728c, this.f11732g, this.f11748w, this.f11749x, this.f11751z, this.f11714A.f11713d);
            this.f11723J = TransitionUtils.m8561j(this.f11729d, this.f11733h, f);
            float d = m8604d(this.f11722I, this.f11744s);
            float e = m8603e(this.f11722I, this.f11745t);
            float f6 = this.f11723J;
            float f7 = (int) (d * f6);
            float f8 = (int) (e * f6);
            this.f11724K = f8;
            this.f11737l.setShadowLayer(f6, f7, f8, 754974720);
            Float valueOf5 = Float.valueOf(this.f11714A.f11710a.f11708a);
            Preconditions.m19337d(valueOf5);
            float floatValue4 = valueOf5.floatValue();
            Float valueOf6 = Float.valueOf(this.f11714A.f11710a.f11709b);
            Preconditions.m19337d(valueOf6);
            this.f11720G = this.f11715B.mo8646a(f, floatValue4, valueOf6.floatValue());
            if (this.f11735j.getColor() != 0) {
                this.f11735j.setAlpha(this.f11720G.f11646a);
            }
            if (this.f11736k.getColor() != 0) {
                this.f11736k.setAlpha(this.f11720G.f11647b);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            if (this.f11738m.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.f11738m);
            }
            int save = this.f11717D ? canvas.save() : -1;
            if (this.f11746u && this.f11723J > 0.0f) {
                m8600h(canvas);
            }
            this.f11739n.m8635a(canvas);
            m8594n(canvas, this.f11734i);
            if (this.f11720G.f11648c) {
                m8596l(canvas);
                m8597k(canvas);
            } else {
                m8597k(canvas);
                m8596l(canvas);
            }
            if (this.f11717D) {
                canvas.restoreToCount(save);
                m8602f(canvas, this.f11748w, this.f11719F, -65281);
                m8601g(canvas, this.f11749x, -256);
                m8601g(canvas, this.f11748w, -16711936);
                m8601g(canvas, this.f11751z, -16711681);
                m8601g(canvas, this.f11750y, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }
    }

    public MaterialContainerTransform() {
        boolean z = false;
        this.f11699i0 = Build.VERSION.SDK_INT >= 28 ? true : z;
        this.f11700j0 = -1.0f;
        this.f11701k0 = -1.0f;
        mo16735h0(AnimationUtils.f9924b);
    }

    /* renamed from: q0 */
    private ProgressThresholdsGroup m8624q0(boolean z) {
        PathMotion z2 = m16754z();
        return ((z2 instanceof ArcMotion) || (z2 instanceof MaterialArcMotion)) ? m8618w0(z, f11677p0, f11678q0) : m8618w0(z, f11675n0, f11676o0);
    }

    /* renamed from: r0 */
    private static RectF m8623r0(View view, @Nullable View view2, float f, float f2) {
        if (view2 == null) {
            return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        }
        RectF g = TransitionUtils.m8564g(view2);
        g.offset(f, f2);
        return g;
    }

    /* renamed from: s0 */
    private static ShapeAppearanceModel m8622s0(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.m8569b(m8619v0(view, shapeAppearanceModel), rectF);
    }

    /* renamed from: t0 */
    private static void m8621t0(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (i != -1) {
            transitionValues.f5272b = TransitionUtils.m8565f(transitionValues.f5272b, i);
        } else if (view != null) {
            transitionValues.f5272b = view;
        } else if (transitionValues.f5272b.getTag(C1027R.C1030id.mtrl_motion_snapshot_view) instanceof View) {
            View view2 = (View) transitionValues.f5272b.getTag(C1027R.C1030id.mtrl_motion_snapshot_view);
            transitionValues.f5272b.setTag(C1027R.C1030id.mtrl_motion_snapshot_view, null);
            transitionValues.f5272b = view2;
        }
        View view3 = transitionValues.f5272b;
        if (ViewCompat.m19218S(view3) || view3.getWidth() != 0 || view3.getHeight() != 0) {
            RectF h = view3.getParent() == null ? TransitionUtils.m8563h(view3) : TransitionUtils.m8564g(view3);
            transitionValues.f5271a.put("materialContainerTransition:bounds", h);
            transitionValues.f5271a.put("materialContainerTransition:shapeAppearance", m8622s0(view3, h, shapeAppearanceModel));
        }
    }

    /* renamed from: u0 */
    private static float m8620u0(float f, View view) {
        if (f == -1.0f) {
            f = ViewCompat.m19168v(view);
        }
        return f;
    }

    /* renamed from: v0 */
    private static ShapeAppearanceModel m8619v0(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        if (view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(C1027R.C1030id.mtrl_motion_snapshot_view);
        }
        Context context = view.getContext();
        int x0 = m8617x0(context);
        return x0 != -1 ? ShapeAppearanceModel.m9276b(context, x0, 0).m9232m() : view instanceof Shapeable ? ((Shapeable) view).getShapeAppearanceModel() : ShapeAppearanceModel.m9277a().m9232m();
    }

    /* renamed from: w0 */
    private ProgressThresholdsGroup m8618w0(boolean z, ProgressThresholdsGroup progressThresholdsGroup, ProgressThresholdsGroup progressThresholdsGroup2) {
        if (!z) {
            progressThresholdsGroup = progressThresholdsGroup2;
        }
        return new ProgressThresholdsGroup((ProgressThresholds) TransitionUtils.m8567d(this.f11695e0, progressThresholdsGroup.f11710a), (ProgressThresholds) TransitionUtils.m8567d(this.f11696f0, progressThresholdsGroup.f11711b), (ProgressThresholds) TransitionUtils.m8567d(this.f11697g0, progressThresholdsGroup.f11712c), (ProgressThresholds) TransitionUtils.m8567d(this.f11698h0, progressThresholdsGroup.f11713d));
    }

    @StyleRes
    /* renamed from: x0 */
    private static int m8617x0(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{C1027R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: y0 */
    private boolean m8616y0(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.f11688X;
        boolean z = false;
        if (i == 0) {
            if (TransitionUtils.m8570a(rectF2) > TransitionUtils.m8570a(rectF)) {
                z = true;
            }
            return z;
        } else if (i == 1) {
            return true;
        } else {
            if (i == 2) {
                return false;
            }
            throw new IllegalArgumentException("Invalid transition direction: " + this.f11688X);
        }
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: J */
    public String[] mo8629J() {
        return f11674m0;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m8621t0(transitionValues, this.f11692b0, this.f11683S, this.f11694d0);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m8621t0(transitionValues, this.f11691a0, this.f11682R, this.f11693c0);
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View view;
        final View view2;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        RectF rectF = (RectF) transitionValues.f5271a.get("materialContainerTransition:bounds");
        ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.f5271a.get("materialContainerTransition:shapeAppearance");
        if (rectF == null || shapeAppearanceModel == null) {
            Log.w(f11673l0, "Skipping due to null start bounds. Ensure start view is laid out and measured.");
            return null;
        }
        RectF rectF2 = (RectF) transitionValues2.f5271a.get("materialContainerTransition:bounds");
        ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.f5271a.get("materialContainerTransition:shapeAppearance");
        if (rectF2 == null || shapeAppearanceModel2 == null) {
            Log.w(f11673l0, "Skipping due to null end bounds. Ensure end view is laid out and measured.");
            return null;
        }
        final View view3 = transitionValues.f5272b;
        final View view4 = transitionValues2.f5272b;
        View view5 = view4.getParent() != null ? view4 : view3;
        if (this.f11681Q == view5.getId()) {
            view2 = (View) view5.getParent();
            view = view5;
        } else {
            view2 = TransitionUtils.m8566e(view5, this.f11681Q);
            view = null;
        }
        RectF g = TransitionUtils.m8564g(view2);
        float f = -g.left;
        float f2 = -g.top;
        RectF r0 = m8623r0(view2, view, f, f2);
        rectF.offset(f, f2);
        rectF2.offset(f, f2);
        boolean y0 = m8616y0(rectF, rectF2);
        final TransitionDrawable transitionDrawable = new TransitionDrawable(m16754z(), view3, rectF, shapeAppearanceModel, m8620u0(this.f11700j0, view3), view4, rectF2, shapeAppearanceModel2, m8620u0(this.f11701k0, view4), this.f11684T, this.f11685U, this.f11686V, this.f11687W, y0, this.f11699i0, FadeModeEvaluators.m8647a(this.f11689Y, y0), FitModeEvaluators.m8640a(this.f11690Z, y0, rectF, rectF2), m8624q0(y0), this.f11679O);
        transitionDrawable.setBounds(Math.round(r0.left), Math.round(r0.top), Math.round(r0.right), Math.round(r0.bottom));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.google.android.material.transition.MaterialContainerTransform.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                transitionDrawable.m8593o(valueAnimator.getAnimatedFraction());
            }
        });
        mo16742a(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.MaterialContainerTransform.2
            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            /* renamed from: a */
            public void mo8575a(@NonNull Transition transition) {
                ViewUtils.m9430f(view2).mo9437a(transitionDrawable);
                view3.setAlpha(0.0f);
                view4.setAlpha(0.0f);
            }

            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            /* renamed from: c */
            public void mo8573c(@NonNull Transition transition) {
                MaterialContainerTransform.this.mo16743Z(this);
                if (!MaterialContainerTransform.this.f11680P) {
                    view3.setAlpha(1.0f);
                    view4.setAlpha(1.0f);
                    ViewUtils.m9430f(view2).mo9436b(transitionDrawable);
                }
            }
        });
        return ofFloat;
    }
}
