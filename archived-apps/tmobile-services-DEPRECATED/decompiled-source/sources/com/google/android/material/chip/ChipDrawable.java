package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C1027R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipDrawable.class */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {

    /* renamed from: N0 */
    private static final int[] f10388N0 = {16842910};

    /* renamed from: O0 */
    private static final ShapeDrawable f10389O0 = new ShapeDrawable(new OvalShape());
    @Nullable

    /* renamed from: B0 */
    private ColorFilter f10391B0;
    @Nullable

    /* renamed from: C0 */
    private PorterDuffColorFilter f10392C0;
    @Nullable

    /* renamed from: D */
    private ColorStateList f10393D;
    @Nullable

    /* renamed from: D0 */
    private ColorStateList f10394D0;
    @Nullable

    /* renamed from: E */
    private ColorStateList f10395E;

    /* renamed from: F */
    private float f10397F;

    /* renamed from: F0 */
    private int[] f10398F0;

    /* renamed from: G0 */
    private boolean f10400G0;
    @Nullable

    /* renamed from: H */
    private ColorStateList f10401H;
    @Nullable

    /* renamed from: H0 */
    private ColorStateList f10402H0;

    /* renamed from: I */
    private float f10403I;
    @Nullable

    /* renamed from: J */
    private ColorStateList f10405J;

    /* renamed from: J0 */
    private TextUtils.TruncateAt f10406J0;

    /* renamed from: K0 */
    private boolean f10408K0;

    /* renamed from: L */
    private boolean f10409L;

    /* renamed from: L0 */
    private int f10410L0;
    @Nullable

    /* renamed from: M */
    private Drawable f10411M;

    /* renamed from: M0 */
    private boolean f10412M0;
    @Nullable

    /* renamed from: N */
    private ColorStateList f10413N;

    /* renamed from: O */
    private float f10414O;

    /* renamed from: P */
    private boolean f10415P;

    /* renamed from: Q */
    private boolean f10416Q;
    @Nullable

    /* renamed from: R */
    private Drawable f10417R;
    @Nullable

    /* renamed from: S */
    private Drawable f10418S;
    @Nullable

    /* renamed from: T */
    private ColorStateList f10419T;

    /* renamed from: U */
    private float f10420U;
    @Nullable

    /* renamed from: V */
    private CharSequence f10421V;

    /* renamed from: W */
    private boolean f10422W;

    /* renamed from: X */
    private boolean f10423X;
    @Nullable

    /* renamed from: Y */
    private Drawable f10424Y;
    @Nullable

    /* renamed from: Z */
    private ColorStateList f10425Z;
    @Nullable

    /* renamed from: a0 */
    private MotionSpec f10426a0;
    @Nullable

    /* renamed from: b0 */
    private MotionSpec f10427b0;

    /* renamed from: c0 */
    private float f10428c0;

    /* renamed from: d0 */
    private float f10429d0;

    /* renamed from: e0 */
    private float f10430e0;

    /* renamed from: f0 */
    private float f10431f0;

    /* renamed from: g0 */
    private float f10432g0;

    /* renamed from: h0 */
    private float f10433h0;

    /* renamed from: i0 */
    private float f10434i0;

    /* renamed from: j0 */
    private float f10435j0;
    @NonNull

    /* renamed from: k0 */
    private final Context f10436k0;
    @NonNull

    /* renamed from: r0 */
    private final TextDrawableHelper f10443r0;
    @ColorInt

    /* renamed from: s0 */
    private int f10444s0;
    @ColorInt

    /* renamed from: t0 */
    private int f10445t0;
    @ColorInt

    /* renamed from: u0 */
    private int f10446u0;
    @ColorInt

    /* renamed from: v0 */
    private int f10447v0;
    @ColorInt

    /* renamed from: w0 */
    private int f10448w0;
    @ColorInt

    /* renamed from: x0 */
    private int f10449x0;

    /* renamed from: y0 */
    private boolean f10450y0;
    @ColorInt

    /* renamed from: z0 */
    private int f10451z0;

    /* renamed from: G */
    private float f10399G = -1.0f;

    /* renamed from: l0 */
    private final Paint f10437l0 = new Paint(1);

    /* renamed from: n0 */
    private final Paint.FontMetrics f10439n0 = new Paint.FontMetrics();

    /* renamed from: o0 */
    private final RectF f10440o0 = new RectF();

    /* renamed from: p0 */
    private final PointF f10441p0 = new PointF();

    /* renamed from: q0 */
    private final Path f10442q0 = new Path();

    /* renamed from: A0 */
    private int f10390A0 = 255;
    @Nullable

    /* renamed from: E0 */
    private PorterDuff.Mode f10396E0 = PorterDuff.Mode.SRC_IN;
    @NonNull

    /* renamed from: I0 */
    private WeakReference<Delegate> f10404I0 = new WeakReference<>(null);
    @Nullable

    /* renamed from: K */
    private CharSequence f10407K = "";
    @Nullable

    /* renamed from: m0 */
    private final Paint f10438m0 = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/ChipDrawable$Delegate.class */
    public interface Delegate {
        /* renamed from: a */
        void mo10062a();
    }

    private ChipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        m9338M(context);
        this.f10436k0 = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f10443r0 = textDrawableHelper;
        textDrawableHelper.m9459e().density = context.getResources().getDisplayMetrics().density;
        if (0 != 0) {
            Paint.Style style = Paint.Style.STROKE;
            throw new NullPointerException();
        }
        setState(f10388N0);
        m10102m2(f10388N0);
        this.f10408K0 = true;
        if (RippleUtils.f11008a) {
            f10389O0.setTint(-1);
        }
    }

    /* renamed from: A0 */
    private void m10198A0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (!this.f10412M0) {
            this.f10437l0.setColor(this.f10445t0);
            this.f10437l0.setStyle(Paint.Style.FILL);
            this.f10437l0.setColorFilter(m10103m1());
            this.f10440o0.set(rect);
            canvas.drawRoundRect(this.f10440o0, m10165L0(), m10165L0(), this.f10437l0);
        }
    }

    /* renamed from: B0 */
    private void m10195B0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m10154O2()) {
            m10098o0(rect, this.f10440o0);
            RectF rectF = this.f10440o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f10411M.setBounds(0, 0, (int) this.f10440o0.width(), (int) this.f10440o0.height());
            this.f10411M.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: C0 */
    private void m10192C0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f10403I > 0.0f && !this.f10412M0) {
            this.f10437l0.setColor(this.f10447v0);
            this.f10437l0.setStyle(Paint.Style.STROKE);
            if (!this.f10412M0) {
                this.f10437l0.setColorFilter(m10103m1());
            }
            RectF rectF = this.f10440o0;
            float f = rect.left;
            float f2 = this.f10403I;
            rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
            float f3 = this.f10399G - (this.f10403I / 2.0f);
            canvas.drawRoundRect(this.f10440o0, f3, f3, this.f10437l0);
        }
    }

    /* renamed from: D0 */
    private void m10189D0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (!this.f10412M0) {
            this.f10437l0.setColor(this.f10444s0);
            this.f10437l0.setStyle(Paint.Style.FILL);
            this.f10440o0.set(rect);
            canvas.drawRoundRect(this.f10440o0, m10165L0(), m10165L0(), this.f10437l0);
        }
    }

    /* renamed from: E0 */
    private void m10186E0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m10151P2()) {
            m10089r0(rect, this.f10440o0);
            RectF rectF = this.f10440o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f10417R.setBounds(0, 0, (int) this.f10440o0.width(), (int) this.f10440o0.height());
            if (RippleUtils.f11008a) {
                this.f10418S.setBounds(this.f10417R.getBounds());
                this.f10418S.jumpToCurrentState();
                this.f10418S.draw(canvas);
            } else {
                this.f10417R.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: F0 */
    private void m10183F0(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.f10437l0.setColor(this.f10448w0);
        this.f10437l0.setStyle(Paint.Style.FILL);
        this.f10440o0.set(rect);
        if (!this.f10412M0) {
            canvas.drawRoundRect(this.f10440o0, m10165L0(), m10165L0(), this.f10437l0);
            return;
        }
        m9311h(new RectF(rect), this.f10442q0);
        super.m9297p(canvas, this.f10437l0, this.f10442q0, m9292u());
    }

    /* renamed from: G0 */
    private void m10180G0(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.f10438m0;
        if (paint != null) {
            paint.setColor(ColorUtils.m19584d(-16777216, 127));
            canvas.drawRect(rect, this.f10438m0);
            if (m10154O2() || m10157N2()) {
                m10098o0(rect, this.f10440o0);
                canvas.drawRect(this.f10440o0, this.f10438m0);
            }
            if (this.f10407K != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f10438m0);
            }
            if (m10151P2()) {
                m10089r0(rect, this.f10440o0);
                canvas.drawRect(this.f10440o0, this.f10438m0);
            }
            this.f10438m0.setColor(ColorUtils.m19584d(-65536, 127));
            m10092q0(rect, this.f10440o0);
            canvas.drawRect(this.f10440o0, this.f10438m0);
            this.f10438m0.setColor(ColorUtils.m19584d(-16711936, 127));
            m10086s0(rect, this.f10440o0);
            canvas.drawRect(this.f10440o0, this.f10438m0);
        }
    }

    /* renamed from: H0 */
    private void m10177H0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f10407K != null) {
            Paint.Align w0 = m10074w0(rect, this.f10441p0);
            m10080u0(rect, this.f10440o0);
            if (this.f10443r0.m9460d() != null) {
                this.f10443r0.m9459e().drawableState = getState();
                this.f10443r0.m9454j(this.f10436k0);
            }
            this.f10443r0.m9459e().setTextAlign(w0);
            int i = 0;
            boolean z = Math.round(this.f10443r0.m9458f(m10111i1().toString())) > Math.round(this.f10440o0.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.f10440o0);
            }
            CharSequence charSequence = this.f10407K;
            CharSequence charSequence2 = charSequence;
            if (z) {
                charSequence2 = charSequence;
                if (this.f10406J0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence, this.f10443r0.m9459e(), this.f10440o0.width(), this.f10406J0);
                }
            }
            int length = charSequence2.length();
            PointF pointF = this.f10441p0;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.f10443r0.m9459e());
            if (z) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: N2 */
    private boolean m10157N2() {
        return this.f10423X && this.f10424Y != null && this.f10450y0;
    }

    /* renamed from: O2 */
    private boolean m10154O2() {
        return this.f10409L && this.f10411M != null;
    }

    /* renamed from: P2 */
    private boolean m10151P2() {
        return this.f10416Q && this.f10417R != null;
    }

    /* renamed from: Q2 */
    private void m10148Q2(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* renamed from: R2 */
    private void m10145R2() {
        this.f10402H0 = this.f10400G0 ? RippleUtils.m9367d(this.f10405J) : null;
    }

    @TargetApi(21)
    /* renamed from: S2 */
    private void m10142S2() {
        this.f10418S = new RippleDrawable(RippleUtils.m9367d(m10115g1()), this.f10417R, f10389O0);
    }

    /* renamed from: c2 */
    private void m10122c2(@Nullable ColorStateList colorStateList) {
        if (this.f10393D != colorStateList) {
            this.f10393D = colorStateList;
            onStateChange(getState());
        }
    }

    @Nullable
    /* renamed from: m1 */
    private ColorFilter m10103m1() {
        ColorFilter colorFilter = this.f10391B0;
        if (colorFilter == null) {
            colorFilter = this.f10392C0;
        }
        return colorFilter;
    }

    /* renamed from: n0 */
    private void m10101n0(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            DrawableCompat.m19500m(drawable, DrawableCompat.m19507f(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.f10417R) {
                if (drawable.isStateful()) {
                    drawable.setState(m10129Z0());
                }
                DrawableCompat.m19498o(drawable, this.f10419T);
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
            Drawable drawable2 = this.f10411M;
            if (drawable == drawable2 && this.f10415P) {
                DrawableCompat.m19498o(drawable2, this.f10413N);
            }
        }
    }

    /* renamed from: o0 */
    private void m10098o0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m10154O2() || m10157N2()) {
            float f = this.f10428c0 + this.f10429d0;
            if (DrawableCompat.m19507f(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + this.f10414O;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - this.f10414O;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.f10414O;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* renamed from: o1 */
    private static boolean m10097o1(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q0 */
    private void m10092q0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (m10151P2()) {
            float f = this.f10435j0 + this.f10434i0 + this.f10420U + this.f10433h0 + this.f10432g0;
            if (DrawableCompat.m19507f(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    /* renamed from: r0 */
    private void m10089r0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m10151P2()) {
            float f = this.f10435j0 + this.f10434i0;
            if (DrawableCompat.m19507f(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.f10420U;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.f10420U;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.f10420U;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* renamed from: s0 */
    private void m10086s0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m10151P2()) {
            float f = this.f10435j0 + this.f10434i0 + this.f10420U + this.f10433h0 + this.f10432g0;
            if (DrawableCompat.m19507f(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: s1 */
    private static boolean m10085s1(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: t1 */
    private static boolean m10082t1(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: u0 */
    private void m10080u0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.f10407K != null) {
            float p0 = this.f10428c0 + m10095p0() + this.f10431f0;
            float t0 = this.f10435j0 + m10083t0() + this.f10432g0;
            if (DrawableCompat.m19507f(this) == 0) {
                rectF.left = rect.left + p0;
                rectF.right = rect.right - t0;
            } else {
                rectF.left = rect.left + t0;
                rectF.right = rect.right - p0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: u1 */
    private static boolean m10079u1(@Nullable TextAppearance textAppearance) {
        ColorStateList colorStateList;
        return (textAppearance == null || (colorStateList = textAppearance.f10986b) == null || !colorStateList.isStateful()) ? false : true;
    }

    /* renamed from: v0 */
    private float m10077v0() {
        this.f10443r0.m9459e().getFontMetrics(this.f10439n0);
        Paint.FontMetrics fontMetrics = this.f10439n0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: v1 */
    private void m10076v1(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray h = ThemeEnforcement.m9445h(this.f10436k0, attributeSet, C1027R.styleable.Chip, i, i2, new int[0]);
        this.f10412M0 = h.hasValue(C1027R.styleable.Chip_shapeAppearance);
        m10122c2(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_chipSurfaceColor));
        m10179G1(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_chipBackgroundColor));
        m10138U1(h.getDimension(C1027R.styleable.Chip_chipMinHeight, 0.0f));
        if (h.hasValue(C1027R.styleable.Chip_chipCornerRadius)) {
            m10173I1(h.getDimension(C1027R.styleable.Chip_chipCornerRadius, 0.0f));
        }
        m10130Y1(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_chipStrokeColor));
        m10126a2(h.getDimension(C1027R.styleable.Chip_chipStrokeWidth, 0.0f));
        m10063z2(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_rippleColor));
        m10184E2(h.getText(C1027R.styleable.Chip_android_text));
        m10181F2(MaterialResources.m9389f(this.f10436k0, h, C1027R.styleable.Chip_android_textAppearance));
        int i3 = h.getInt(C1027R.styleable.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            m10087r2(TextUtils.TruncateAt.START);
        } else if (i3 == 2) {
            m10087r2(TextUtils.TruncateAt.MIDDLE);
        } else if (i3 == 3) {
            m10087r2(TextUtils.TruncateAt.END);
        }
        m10140T1(h.getBoolean(C1027R.styleable.Chip_chipIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") != null)) {
            m10140T1(h.getBoolean(C1027R.styleable.Chip_chipIconEnabled, false));
        }
        m10161M1(MaterialResources.m9391d(this.f10436k0, h, C1027R.styleable.Chip_chipIcon));
        if (h.hasValue(C1027R.styleable.Chip_chipIconTint)) {
            m10149Q1(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_chipIconTint));
        }
        m10155O1(h.getDimension(C1027R.styleable.Chip_chipIconSize, 0.0f));
        m10093p2(h.getBoolean(C1027R.styleable.Chip_closeIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") != null)) {
            m10093p2(h.getBoolean(C1027R.styleable.Chip_closeIconEnabled, false));
        }
        m10120d2(MaterialResources.m9391d(this.f10436k0, h, C1027R.styleable.Chip_closeIcon));
        m10099n2(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_closeIconTint));
        m10110i2(h.getDimension(C1027R.styleable.Chip_closeIconSize, 0.0f));
        m10067y1(h.getBoolean(C1027R.styleable.Chip_android_checkable, false));
        m10182F1(h.getBoolean(C1027R.styleable.Chip_checkedIconVisible, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") != null)) {
            m10182F1(h.getBoolean(C1027R.styleable.Chip_checkedIconEnabled, false));
        }
        m10197A1(MaterialResources.m9391d(this.f10436k0, h, C1027R.styleable.Chip_checkedIcon));
        if (h.hasValue(C1027R.styleable.Chip_checkedIconTint)) {
            m10191C1(MaterialResources.m9394a(this.f10436k0, h, C1027R.styleable.Chip_checkedIconTint));
        }
        m10190C2(MotionSpec.m10756c(this.f10436k0, h, C1027R.styleable.Chip_showMotionSpec));
        m10084s2(MotionSpec.m10756c(this.f10436k0, h, C1027R.styleable.Chip_hideMotionSpec));
        m10134W1(h.getDimension(C1027R.styleable.Chip_chipStartPadding, 0.0f));
        m10072w2(h.getDimension(C1027R.styleable.Chip_iconStartPadding, 0.0f));
        m10078u2(h.getDimension(C1027R.styleable.Chip_iconEndPadding, 0.0f));
        m10169J2(h.getDimension(C1027R.styleable.Chip_textStartPadding, 0.0f));
        m10175H2(h.getDimension(C1027R.styleable.Chip_textEndPadding, 0.0f));
        m10106k2(h.getDimension(C1027R.styleable.Chip_closeIconStartPadding, 0.0f));
        m10116f2(h.getDimension(C1027R.styleable.Chip_closeIconEndPadding, 0.0f));
        m10167K1(h.getDimension(C1027R.styleable.Chip_chipEndPadding, 0.0f));
        m10066y2(h.getDimensionPixelSize(C1027R.styleable.Chip_android_maxWidth, Api.BaseClientBuilder.API_PRIORITY_OTHER));
        h.recycle();
    }

    /* renamed from: x0 */
    private boolean m10071x0() {
        return this.f10423X && this.f10424Y != null && this.f10422W;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0297  */
    /* renamed from: x1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m10070x1(@androidx.annotation.NonNull int[] r7, @androidx.annotation.NonNull int[] r8) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipDrawable.m10070x1(int[], int[]):boolean");
    }

    @NonNull
    /* renamed from: y0 */
    public static ChipDrawable m10068y0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ChipDrawable chipDrawable = new ChipDrawable(context, attributeSet, i, i2);
        chipDrawable.m10076v1(attributeSet, i, i2);
        return chipDrawable;
    }

    /* renamed from: z0 */
    private void m10065z0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m10157N2()) {
            m10098o0(rect, this.f10440o0);
            RectF rectF = this.f10440o0;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f10424Y.setBounds(0, 0, (int) this.f10440o0.width(), (int) this.f10440o0.height());
            this.f10424Y.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: A1 */
    public void m10197A1(@Nullable Drawable drawable) {
        if (this.f10424Y != drawable) {
            float p0 = m10095p0();
            this.f10424Y = drawable;
            float p02 = m10095p0();
            m10148Q2(this.f10424Y);
            m10101n0(this.f10424Y);
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    /* renamed from: A2 */
    public void m10196A2(@ColorRes int i) {
        m10063z2(AppCompatResources.m22070c(this.f10436k0, i));
    }

    /* renamed from: B1 */
    public void m10194B1(@DrawableRes int i) {
        m10197A1(AppCompatResources.m22069d(this.f10436k0, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B2 */
    public void m10193B2(boolean z) {
        this.f10408K0 = z;
    }

    /* renamed from: C1 */
    public void m10191C1(@Nullable ColorStateList colorStateList) {
        if (this.f10425Z != colorStateList) {
            this.f10425Z = colorStateList;
            if (m10071x0()) {
                DrawableCompat.m19498o(this.f10424Y, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: C2 */
    public void m10190C2(@Nullable MotionSpec motionSpec) {
        this.f10426a0 = motionSpec;
    }

    /* renamed from: D1 */
    public void m10188D1(@ColorRes int i) {
        m10191C1(AppCompatResources.m22070c(this.f10436k0, i));
    }

    /* renamed from: D2 */
    public void m10187D2(@AnimatorRes int i) {
        m10190C2(MotionSpec.m10755d(this.f10436k0, i));
    }

    /* renamed from: E1 */
    public void m10185E1(@BoolRes int i) {
        m10182F1(this.f10436k0.getResources().getBoolean(i));
    }

    /* renamed from: E2 */
    public void m10184E2(@Nullable CharSequence charSequence) {
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        if (!TextUtils.equals(this.f10407K, charSequence2)) {
            this.f10407K = charSequence2;
            this.f10443r0.m9455i(true);
            invalidateSelf();
            m10073w1();
        }
    }

    /* renamed from: F1 */
    public void m10182F1(boolean z) {
        if (this.f10423X != z) {
            boolean N2 = m10157N2();
            this.f10423X = z;
            boolean N22 = m10157N2();
            if (N2 != N22) {
                if (N22) {
                    m10101n0(this.f10424Y);
                } else {
                    m10148Q2(this.f10424Y);
                }
                invalidateSelf();
                m10073w1();
            }
        }
    }

    /* renamed from: F2 */
    public void m10181F2(@Nullable TextAppearance textAppearance) {
        this.f10443r0.m9456h(textAppearance, this.f10436k0);
    }

    /* renamed from: G1 */
    public void m10179G1(@Nullable ColorStateList colorStateList) {
        if (this.f10395E != colorStateList) {
            this.f10395E = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: G2 */
    public void m10178G2(@StyleRes int i) {
        m10181F2(new TextAppearance(this.f10436k0, i));
    }

    /* renamed from: H1 */
    public void m10176H1(@ColorRes int i) {
        m10179G1(AppCompatResources.m22070c(this.f10436k0, i));
    }

    /* renamed from: H2 */
    public void m10175H2(float f) {
        if (this.f10432g0 != f) {
            this.f10432g0 = f;
            invalidateSelf();
            m10073w1();
        }
    }

    @Nullable
    /* renamed from: I0 */
    public Drawable m10174I0() {
        return this.f10424Y;
    }

    @Deprecated
    /* renamed from: I1 */
    public void m10173I1(float f) {
        if (this.f10399G != f) {
            this.f10399G = f;
            setShapeAppearanceModel(getShapeAppearanceModel().m9255w(f));
        }
    }

    /* renamed from: I2 */
    public void m10172I2(@DimenRes int i) {
        m10175H2(this.f10436k0.getResources().getDimension(i));
    }

    @Nullable
    /* renamed from: J0 */
    public ColorStateList m10171J0() {
        return this.f10425Z;
    }

    @Deprecated
    /* renamed from: J1 */
    public void m10170J1(@DimenRes int i) {
        m10173I1(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: J2 */
    public void m10169J2(float f) {
        if (this.f10431f0 != f) {
            this.f10431f0 = f;
            invalidateSelf();
            m10073w1();
        }
    }

    @Nullable
    /* renamed from: K0 */
    public ColorStateList m10168K0() {
        return this.f10395E;
    }

    /* renamed from: K1 */
    public void m10167K1(float f) {
        if (this.f10435j0 != f) {
            this.f10435j0 = f;
            invalidateSelf();
            m10073w1();
        }
    }

    /* renamed from: K2 */
    public void m10166K2(@DimenRes int i) {
        m10169J2(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: L0 */
    public float m10165L0() {
        return this.f10412M0 ? m9345F() : this.f10399G;
    }

    /* renamed from: L1 */
    public void m10164L1(@DimenRes int i) {
        m10167K1(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: L2 */
    public void m10163L2(boolean z) {
        if (this.f10400G0 != z) {
            this.f10400G0 = z;
            m10145R2();
            onStateChange(getState());
        }
    }

    /* renamed from: M0 */
    public float m10162M0() {
        return this.f10435j0;
    }

    /* renamed from: M1 */
    public void m10161M1(@Nullable Drawable drawable) {
        Drawable N0 = m10159N0();
        if (N0 != drawable) {
            float p0 = m10095p0();
            this.f10411M = drawable != null ? DrawableCompat.m19495r(drawable).mutate() : null;
            float p02 = m10095p0();
            m10148Q2(N0);
            if (m10154O2()) {
                m10101n0(this.f10411M);
            }
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M2 */
    public boolean m10160M2() {
        return this.f10408K0;
    }

    @Nullable
    /* renamed from: N0 */
    public Drawable m10159N0() {
        Drawable drawable = this.f10411M;
        return drawable != null ? DrawableCompat.m19496q(drawable) : null;
    }

    /* renamed from: N1 */
    public void m10158N1(@DrawableRes int i) {
        m10161M1(AppCompatResources.m22069d(this.f10436k0, i));
    }

    /* renamed from: O0 */
    public float m10156O0() {
        return this.f10414O;
    }

    /* renamed from: O1 */
    public void m10155O1(float f) {
        if (this.f10414O != f) {
            float p0 = m10095p0();
            this.f10414O = f;
            float p02 = m10095p0();
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    @Nullable
    /* renamed from: P0 */
    public ColorStateList m10153P0() {
        return this.f10413N;
    }

    /* renamed from: P1 */
    public void m10152P1(@DimenRes int i) {
        m10155O1(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: Q0 */
    public float m10150Q0() {
        return this.f10397F;
    }

    /* renamed from: Q1 */
    public void m10149Q1(@Nullable ColorStateList colorStateList) {
        this.f10415P = true;
        if (this.f10413N != colorStateList) {
            this.f10413N = colorStateList;
            if (m10154O2()) {
                DrawableCompat.m19498o(this.f10411M, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: R0 */
    public float m10147R0() {
        return this.f10428c0;
    }

    /* renamed from: R1 */
    public void m10146R1(@ColorRes int i) {
        m10149Q1(AppCompatResources.m22070c(this.f10436k0, i));
    }

    @Nullable
    /* renamed from: S0 */
    public ColorStateList m10144S0() {
        return this.f10401H;
    }

    /* renamed from: S1 */
    public void m10143S1(@BoolRes int i) {
        m10140T1(this.f10436k0.getResources().getBoolean(i));
    }

    /* renamed from: T0 */
    public float m10141T0() {
        return this.f10403I;
    }

    /* renamed from: T1 */
    public void m10140T1(boolean z) {
        if (this.f10409L != z) {
            boolean O2 = m10154O2();
            this.f10409L = z;
            boolean O22 = m10154O2();
            if (O2 != O22) {
                if (O22) {
                    m10101n0(this.f10411M);
                } else {
                    m10148Q2(this.f10411M);
                }
                invalidateSelf();
                m10073w1();
            }
        }
    }

    @Nullable
    /* renamed from: U0 */
    public Drawable m10139U0() {
        Drawable drawable = this.f10417R;
        return drawable != null ? DrawableCompat.m19496q(drawable) : null;
    }

    /* renamed from: U1 */
    public void m10138U1(float f) {
        if (this.f10397F != f) {
            this.f10397F = f;
            invalidateSelf();
            m10073w1();
        }
    }

    @Nullable
    /* renamed from: V0 */
    public CharSequence m10137V0() {
        return this.f10421V;
    }

    /* renamed from: V1 */
    public void m10136V1(@DimenRes int i) {
        m10138U1(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: W0 */
    public float m10135W0() {
        return this.f10434i0;
    }

    /* renamed from: W1 */
    public void m10134W1(float f) {
        if (this.f10428c0 != f) {
            this.f10428c0 = f;
            invalidateSelf();
            m10073w1();
        }
    }

    /* renamed from: X0 */
    public float m10133X0() {
        return this.f10420U;
    }

    /* renamed from: X1 */
    public void m10132X1(@DimenRes int i) {
        m10134W1(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: Y0 */
    public float m10131Y0() {
        return this.f10433h0;
    }

    /* renamed from: Y1 */
    public void m10130Y1(@Nullable ColorStateList colorStateList) {
        if (this.f10401H != colorStateList) {
            this.f10401H = colorStateList;
            if (this.f10412M0) {
                m9308i0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    @NonNull
    /* renamed from: Z0 */
    public int[] m10129Z0() {
        return this.f10398F0;
    }

    /* renamed from: Z1 */
    public void m10128Z1(@ColorRes int i) {
        m10130Y1(AppCompatResources.m22070c(this.f10436k0, i));
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    /* renamed from: a */
    public void mo8696a() {
        m10073w1();
        invalidateSelf();
    }

    @Nullable
    /* renamed from: a1 */
    public ColorStateList m10127a1() {
        return this.f10419T;
    }

    /* renamed from: a2 */
    public void m10126a2(float f) {
        if (this.f10403I != f) {
            this.f10403I = f;
            this.f10437l0.setStrokeWidth(f);
            if (this.f10412M0) {
                super.m9306j0(f);
            }
            invalidateSelf();
        }
    }

    /* renamed from: b1 */
    public void m10125b1(@NonNull RectF rectF) {
        m10086s0(getBounds(), rectF);
    }

    /* renamed from: b2 */
    public void m10124b2(@DimenRes int i) {
        m10126a2(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: c1 */
    public TextUtils.TruncateAt m10123c1() {
        return this.f10406J0;
    }

    @Nullable
    /* renamed from: d1 */
    public MotionSpec m10121d1() {
        return this.f10427b0;
    }

    /* renamed from: d2 */
    public void m10120d2(@Nullable Drawable drawable) {
        Drawable U0 = m10139U0();
        if (U0 != drawable) {
            float t0 = m10083t0();
            this.f10417R = drawable != null ? DrawableCompat.m19495r(drawable).mutate() : null;
            if (RippleUtils.f11008a) {
                m10142S2();
            }
            float t02 = m10083t0();
            m10148Q2(U0);
            if (m10151P2()) {
                m10101n0(this.f10417R);
            }
            invalidateSelf();
            if (t0 != t02) {
                m10073w1();
            }
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && getAlpha() != 0) {
            int i = 0;
            int i2 = this.f10390A0;
            if (i2 < 255) {
                i = CanvasCompat.m10287a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i2);
            }
            m10189D0(canvas, bounds);
            m10198A0(canvas, bounds);
            if (this.f10412M0) {
                super.draw(canvas);
            }
            m10192C0(canvas, bounds);
            m10183F0(canvas, bounds);
            m10195B0(canvas, bounds);
            m10065z0(canvas, bounds);
            if (this.f10408K0) {
                m10177H0(canvas, bounds);
            }
            m10186E0(canvas, bounds);
            m10180G0(canvas, bounds);
            if (this.f10390A0 < 255) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: e1 */
    public float m10119e1() {
        return this.f10430e0;
    }

    /* renamed from: e2 */
    public void m10118e2(@Nullable CharSequence charSequence) {
        if (this.f10421V != charSequence) {
            this.f10421V = BidiFormatter.m19398c().m19393h(charSequence);
            invalidateSelf();
        }
    }

    /* renamed from: f1 */
    public float m10117f1() {
        return this.f10429d0;
    }

    /* renamed from: f2 */
    public void m10116f2(float f) {
        if (this.f10434i0 != f) {
            this.f10434i0 = f;
            invalidateSelf();
            if (m10151P2()) {
                m10073w1();
            }
        }
    }

    @Nullable
    /* renamed from: g1 */
    public ColorStateList m10115g1() {
        return this.f10405J;
    }

    /* renamed from: g2 */
    public void m10114g2(@DimenRes int i) {
        m10116f2(this.f10436k0.getResources().getDimension(i));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10390A0;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f10391B0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f10397F;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f10428c0 + m10095p0() + this.f10431f0 + this.f10443r0.m9458f(m10111i1().toString()) + this.f10432g0 + m10083t0() + this.f10435j0), this.f10410L0);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f10412M0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.f10399G);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f10399G);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    @Nullable
    /* renamed from: h1 */
    public MotionSpec m10113h1() {
        return this.f10426a0;
    }

    /* renamed from: h2 */
    public void m10112h2(@DrawableRes int i) {
        m10120d2(AppCompatResources.m22069d(this.f10436k0, i));
    }

    @Nullable
    /* renamed from: i1 */
    public CharSequence m10111i1() {
        return this.f10407K;
    }

    /* renamed from: i2 */
    public void m10110i2(float f) {
        if (this.f10420U != f) {
            this.f10420U = f;
            invalidateSelf();
            if (m10151P2()) {
                m10073w1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m10085s1(this.f10393D) || m10085s1(this.f10395E) || m10085s1(this.f10401H) || (this.f10400G0 && m10085s1(this.f10402H0)) || m10079u1(this.f10443r0.m9460d()) || m10071x0() || m10082t1(this.f10411M) || m10082t1(this.f10424Y) || m10085s1(this.f10394D0);
    }

    @Nullable
    /* renamed from: j1 */
    public TextAppearance m10109j1() {
        return this.f10443r0.m9460d();
    }

    /* renamed from: j2 */
    public void m10108j2(@DimenRes int i) {
        m10110i2(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: k1 */
    public float m10107k1() {
        return this.f10432g0;
    }

    /* renamed from: k2 */
    public void m10106k2(float f) {
        if (this.f10433h0 != f) {
            this.f10433h0 = f;
            invalidateSelf();
            if (m10151P2()) {
                m10073w1();
            }
        }
    }

    /* renamed from: l1 */
    public float m10105l1() {
        return this.f10431f0;
    }

    /* renamed from: l2 */
    public void m10104l2(@DimenRes int i) {
        m10106k2(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: m2 */
    public boolean m10102m2(@NonNull int[] iArr) {
        if (Arrays.equals(this.f10398F0, iArr)) {
            return false;
        }
        this.f10398F0 = iArr;
        if (m10151P2()) {
            return m10070x1(getState(), iArr);
        }
        return false;
    }

    /* renamed from: n1 */
    public boolean m10100n1() {
        return this.f10400G0;
    }

    /* renamed from: n2 */
    public void m10099n2(@Nullable ColorStateList colorStateList) {
        if (this.f10419T != colorStateList) {
            this.f10419T = colorStateList;
            if (m10151P2()) {
                DrawableCompat.m19498o(this.f10417R, colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* renamed from: o2 */
    public void m10096o2(@ColorRes int i) {
        m10099n2(AppCompatResources.m22070c(this.f10436k0, i));
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        boolean z = onLayoutDirectionChanged;
        if (m10154O2()) {
            z = onLayoutDirectionChanged | DrawableCompat.m19500m(this.f10411M, i);
        }
        boolean z2 = z;
        if (m10157N2()) {
            z2 = z | DrawableCompat.m19500m(this.f10424Y, i);
        }
        boolean z3 = z2;
        if (m10151P2()) {
            z3 = z2 | DrawableCompat.m19500m(this.f10417R, i);
        }
        if (!z3) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        boolean z = onLevelChange;
        if (m10154O2()) {
            z = onLevelChange | this.f10411M.setLevel(i);
        }
        boolean z2 = z;
        if (m10157N2()) {
            z2 = z | this.f10424Y.setLevel(i);
        }
        boolean z3 = z2;
        if (m10151P2()) {
            z3 = z2 | this.f10417R.setLevel(i);
        }
        if (z3) {
            invalidateSelf();
        }
        return z3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.f10412M0) {
            super.onStateChange(iArr);
        }
        return m10070x1(iArr, m10129Z0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p0 */
    public float m10095p0() {
        if (m10154O2() || m10157N2()) {
            return this.f10429d0 + this.f10414O + this.f10430e0;
        }
        return 0.0f;
    }

    /* renamed from: p1 */
    public boolean m10094p1() {
        return this.f10422W;
    }

    /* renamed from: p2 */
    public void m10093p2(boolean z) {
        if (this.f10416Q != z) {
            boolean P2 = m10151P2();
            this.f10416Q = z;
            boolean P22 = m10151P2();
            if (P2 != P22) {
                if (P22) {
                    m10101n0(this.f10417R);
                } else {
                    m10148Q2(this.f10417R);
                }
                invalidateSelf();
                m10073w1();
            }
        }
    }

    /* renamed from: q1 */
    public boolean m10091q1() {
        return m10082t1(this.f10417R);
    }

    /* renamed from: q2 */
    public void m10090q2(@Nullable Delegate delegate) {
        this.f10404I0 = new WeakReference<>(delegate);
    }

    /* renamed from: r1 */
    public boolean m10088r1() {
        return this.f10416Q;
    }

    /* renamed from: r2 */
    public void m10087r2(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f10406J0 = truncateAt;
    }

    /* renamed from: s2 */
    public void m10084s2(@Nullable MotionSpec motionSpec) {
        this.f10427b0 = motionSpec;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f10390A0 != i) {
            this.f10390A0 = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f10391B0 != colorFilter) {
            this.f10391B0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f10394D0 != colorStateList) {
            this.f10394D0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f10396E0 != mode) {
            this.f10396E0 = mode;
            this.f10392C0 = DrawableUtils.m9796b(this, this.f10394D0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        boolean z3 = visible;
        if (m10154O2()) {
            z3 = visible | this.f10411M.setVisible(z, z2);
        }
        boolean z4 = z3;
        if (m10157N2()) {
            z4 = z3 | this.f10424Y.setVisible(z, z2);
        }
        boolean z5 = z4;
        if (m10151P2()) {
            z5 = z4 | this.f10417R.setVisible(z, z2);
        }
        if (z5) {
            invalidateSelf();
        }
        return z5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t0 */
    public float m10083t0() {
        if (m10151P2()) {
            return this.f10433h0 + this.f10420U + this.f10434i0;
        }
        return 0.0f;
    }

    /* renamed from: t2 */
    public void m10081t2(@AnimatorRes int i) {
        m10084s2(MotionSpec.m10755d(this.f10436k0, i));
    }

    /* renamed from: u2 */
    public void m10078u2(float f) {
        if (this.f10430e0 != f) {
            float p0 = m10095p0();
            this.f10430e0 = f;
            float p02 = m10095p0();
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v2 */
    public void m10075v2(@DimenRes int i) {
        m10078u2(this.f10436k0.getResources().getDimension(i));
    }

    @NonNull
    /* renamed from: w0 */
    Paint.Align m10074w0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f10407K != null) {
            float p0 = this.f10428c0 + m10095p0() + this.f10431f0;
            if (DrawableCompat.m19507f(this) == 0) {
                pointF.x = rect.left + p0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - p0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m10077v0();
        }
        return align;
    }

    /* renamed from: w1 */
    protected void m10073w1() {
        Delegate delegate = this.f10404I0.get();
        if (delegate != null) {
            delegate.mo10062a();
        }
    }

    /* renamed from: w2 */
    public void m10072w2(float f) {
        if (this.f10429d0 != f) {
            float p0 = m10095p0();
            this.f10429d0 = f;
            float p02 = m10095p0();
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    /* renamed from: x2 */
    public void m10069x2(@DimenRes int i) {
        m10072w2(this.f10436k0.getResources().getDimension(i));
    }

    /* renamed from: y1 */
    public void m10067y1(boolean z) {
        if (this.f10422W != z) {
            this.f10422W = z;
            float p0 = m10095p0();
            if (!z && this.f10450y0) {
                this.f10450y0 = false;
            }
            float p02 = m10095p0();
            invalidateSelf();
            if (p0 != p02) {
                m10073w1();
            }
        }
    }

    /* renamed from: y2 */
    public void m10066y2(@AbstractC0040Px int i) {
        this.f10410L0 = i;
    }

    /* renamed from: z1 */
    public void m10064z1(@BoolRes int i) {
        m10067y1(this.f10436k0.getResources().getBoolean(i));
    }

    /* renamed from: z2 */
    public void m10063z2(@Nullable ColorStateList colorStateList) {
        if (this.f10405J != colorStateList) {
            this.f10405J = colorStateList;
            m10145R2();
            onStateChange(getState());
        }
    }
}
