package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0222a;
import androidx.core.widget.C0244i;
import f.a.a;
import f.a.j;
import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: S */
    private static final Property<SwitchCompat, Float> f356S = new C0086a(Float.class, "thumbPos");

    /* renamed from: T */
    private static final int[] f357T = {16842912};

    /* renamed from: A */
    private VelocityTracker f358A;

    /* renamed from: B */
    private int f359B;

    /* renamed from: C */
    float f360C;

    /* renamed from: D */
    private int f361D;

    /* renamed from: E */
    private int f362E;

    /* renamed from: F */
    private int f363F;

    /* renamed from: G */
    private int f364G;

    /* renamed from: H */
    private int f365H;

    /* renamed from: I */
    private int f366I;

    /* renamed from: J */
    private int f367J;

    /* renamed from: K */
    private final TextPaint f368K;

    /* renamed from: L */
    private ColorStateList f369L;

    /* renamed from: M */
    private Layout f370M;

    /* renamed from: N */
    private Layout f371N;

    /* renamed from: O */
    private TransformationMethod f372O;

    /* renamed from: P */
    ObjectAnimator f373P;

    /* renamed from: Q */
    private final C0137x f374Q;

    /* renamed from: R */
    private final Rect f375R;

    /* renamed from: f */
    private Drawable f376f;

    /* renamed from: g */
    private ColorStateList f377g;

    /* renamed from: h */
    private PorterDuff.Mode f378h;

    /* renamed from: i */
    private boolean f379i;

    /* renamed from: j */
    private boolean f380j;

    /* renamed from: k */
    private Drawable f381k;

    /* renamed from: l */
    private ColorStateList f382l;

    /* renamed from: m */
    private PorterDuff.Mode f383m;

    /* renamed from: n */
    private boolean f384n;

    /* renamed from: o */
    private boolean f385o;

    /* renamed from: p */
    private int f386p;

    /* renamed from: q */
    private int f387q;

    /* renamed from: r */
    private int f388r;

    /* renamed from: s */
    private boolean f389s;

    /* renamed from: t */
    private CharSequence f390t;

    /* renamed from: u */
    private CharSequence f391u;

    /* renamed from: v */
    private boolean f392v;

    /* renamed from: w */
    private int f393w;

    /* renamed from: x */
    private int f394x;

    /* renamed from: y */
    private float f395y;

    /* renamed from: z */
    private float f396z;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    class C0086a extends Property<SwitchCompat, Float> {
        C0086a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f360C);
        }

        /* renamed from: b */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.K);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f377g = null;
        this.f378h = null;
        this.f379i = false;
        this.f380j = false;
        this.f382l = null;
        this.f383m = null;
        this.f384n = false;
        this.f385o = false;
        this.f358A = VelocityTracker.obtain();
        this.f375R = new Rect();
        C0128q0.m6489a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f368K = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = j.u2;
        C0135v0 m6445v = C0135v0.m6445v(context, attributeSet, iArr, i, 0);
        t.i0(this, context, iArr, attributeSet, m6445v.m6449r(), i, 0);
        Drawable m6460g = m6445v.m6460g(j.x2);
        this.f376f = m6460g;
        if (m6460g != null) {
            m6460g.setCallback(this);
        }
        Drawable m6460g2 = m6445v.m6460g(j.G2);
        this.f381k = m6460g2;
        if (m6460g2 != null) {
            m6460g2.setCallback(this);
        }
        this.f390t = m6445v.m6451p(j.v2);
        this.f391u = m6445v.m6451p(j.w2);
        this.f392v = m6445v.m6466a(j.y2, true);
        this.f386p = m6445v.m6461f(j.D2, 0);
        this.f387q = m6445v.m6461f(j.A2, 0);
        this.f388r = m6445v.m6461f(j.B2, 0);
        this.f389s = m6445v.m6466a(j.z2, false);
        ColorStateList m6464c = m6445v.m6464c(j.E2);
        if (m6464c != null) {
            this.f377g = m6464c;
            this.f379i = true;
        }
        PorterDuff.Mode m6608e = C0099d0.m6608e(m6445v.m6456k(j.F2, -1), null);
        if (this.f378h != m6608e) {
            this.f378h = m6608e;
            this.f380j = true;
        }
        if (this.f379i || this.f380j) {
            m6717b();
        }
        ColorStateList m6464c2 = m6445v.m6464c(j.H2);
        if (m6464c2 != null) {
            this.f382l = m6464c2;
            this.f384n = true;
        }
        PorterDuff.Mode m6608e2 = C0099d0.m6608e(m6445v.m6456k(j.I2, -1), null);
        if (this.f383m != m6608e2) {
            this.f383m = m6608e2;
            this.f385o = true;
        }
        if (this.f384n || this.f385o) {
            m6716c();
        }
        int m6453n = m6445v.m6453n(j.C2, 0);
        if (m6453n != 0) {
            m6710i(context, m6453n);
        }
        C0137x c0137x = new C0137x(this);
        this.f374Q = c0137x;
        c0137x.m6427m(attributeSet, i);
        m6445v.m6444w();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f394x = viewConfiguration.getScaledTouchSlop();
        this.f359B = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private void m6718a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f356S, z ? 1.0f : 0.0f);
        this.f373P = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f373P.setAutoCancel(true);
        }
        this.f373P.start();
    }

    /* renamed from: b */
    private void m6717b() {
        Drawable drawable = this.f376f;
        if (drawable != null) {
            if (!this.f379i && !this.f380j) {
                return;
            }
            Drawable mutate = C0222a.m5954r(drawable).mutate();
            this.f376f = mutate;
            if (this.f379i) {
                C0222a.m5957o(mutate, this.f377g);
            }
            if (this.f380j) {
                C0222a.m5956p(this.f376f, this.f378h);
            }
            if (!this.f376f.isStateful()) {
                return;
            }
            this.f376f.setState(getDrawableState());
        }
    }

    /* renamed from: c */
    private void m6716c() {
        Drawable drawable = this.f381k;
        if (drawable != null) {
            if (!this.f384n && !this.f385o) {
                return;
            }
            Drawable mutate = C0222a.m5954r(drawable).mutate();
            this.f381k = mutate;
            if (this.f384n) {
                C0222a.m5957o(mutate, this.f382l);
            }
            if (this.f385o) {
                C0222a.m5956p(this.f381k, this.f383m);
            }
            if (!this.f381k.isStateful()) {
                return;
            }
            this.f381k.setState(getDrawableState());
        }
    }

    /* renamed from: d */
    private void m6715d() {
        ObjectAnimator objectAnimator = this.f373P;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    /* renamed from: e */
    private void m6714e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: f */
    private static float m6713f(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    /* renamed from: g */
    private boolean m6712g(float f, float f2) {
        int i;
        if (this.f376f == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f376f.getPadding(this.f375R);
        int i2 = this.f365H;
        int i3 = (this.f364G + thumbOffset) - this.f394x;
        int i4 = this.f363F;
        Rect rect = this.f375R;
        int i5 = rect.left;
        int i6 = rect.right;
        int i7 = this.f367J;
        boolean z = false;
        if (f > i3) {
            z = false;
            if (f < i4 + i3 + i5 + i6 + i) {
                z = false;
                if (f2 > i2 - i) {
                    z = false;
                    if (f2 < i7 + i) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    private boolean getTargetCheckedState() {
        return this.f360C > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0096b1.m6638b(this) ? 1.0f - this.f360C : this.f360C) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f381k;
        if (drawable != null) {
            Rect rect = this.f375R;
            drawable.getPadding(rect);
            Drawable drawable2 = this.f376f;
            Rect m6609d = drawable2 != null ? C0099d0.m6609d(drawable2) : C0099d0.f462c;
            return ((((this.f361D - this.f363F) - rect.left) - rect.right) - m6609d.left) - m6609d.right;
        }
        return 0;
    }

    /* renamed from: h */
    private Layout m6711h(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f372O;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f368K;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* renamed from: k */
    private void m6708k(int i, int i2) {
        m6709j(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: l */
    private void m6707l(MotionEvent motionEvent) {
        this.f393w = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f358A.computeCurrentVelocity(1000);
            float xVelocity = this.f358A.getXVelocity();
            if (Math.abs(xVelocity) <= this.f359B) {
                z = getTargetCheckedState();
            } else if (!C0096b1.m6638b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m6714e(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Rect rect = this.f375R;
        int i6 = this.f364G;
        int i7 = this.f365H;
        int i8 = this.f366I;
        int i9 = this.f367J;
        int thumbOffset = getThumbOffset() + i6;
        Drawable drawable = this.f376f;
        Rect m6609d = drawable != null ? C0099d0.m6609d(drawable) : C0099d0.f462c;
        Drawable drawable2 = this.f381k;
        int i10 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = rect.left;
            int i12 = thumbOffset + i11;
            if (m6609d != null) {
                int i13 = m6609d.left;
                i3 = i6;
                if (i13 > i11) {
                    i3 = i6 + (i13 - i11);
                }
                int i14 = m6609d.top;
                int i15 = rect.top;
                i4 = i14 > i15 ? (i14 - i15) + i7 : i7;
                int i16 = m6609d.right;
                int i17 = rect.right;
                i2 = i8;
                if (i16 > i17) {
                    i2 = i8 - (i16 - i17);
                }
                int i18 = m6609d.bottom;
                int i19 = rect.bottom;
                i6 = i3;
                i8 = i2;
                i5 = i4;
                if (i18 > i19) {
                    i = i9 - (i18 - i19);
                    this.f381k.setBounds(i3, i4, i2, i);
                    i10 = i12;
                }
            } else {
                i5 = i7;
            }
            i4 = i5;
            i = i9;
            i2 = i8;
            i3 = i6;
            this.f381k.setBounds(i3, i4, i2, i);
            i10 = i12;
        }
        Drawable drawable3 = this.f376f;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i20 = i10 - rect.left;
            int i21 = i10 + this.f363F + rect.right;
            this.f376f.setBounds(i20, i7, i21, i9);
            Drawable background = getBackground();
            if (background != null) {
                C0222a.m5960l(background, i20, i7, i21, i9);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f376f;
        if (drawable != null) {
            C0222a.m5961k(drawable, f, f2);
        }
        Drawable drawable2 = this.f381k;
        if (drawable2 != null) {
            C0222a.m5961k(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f376f;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f381k;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!C0096b1.m6638b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f361D;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f388r;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0096b1.m6638b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f361D;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f388r;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f392v;
    }

    public boolean getSplitTrack() {
        return this.f389s;
    }

    public int getSwitchMinWidth() {
        return this.f387q;
    }

    public int getSwitchPadding() {
        return this.f388r;
    }

    public CharSequence getTextOff() {
        return this.f391u;
    }

    public CharSequence getTextOn() {
        return this.f390t;
    }

    public Drawable getThumbDrawable() {
        return this.f376f;
    }

    public int getThumbTextPadding() {
        return this.f386p;
    }

    public ColorStateList getThumbTintList() {
        return this.f377g;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f378h;
    }

    public Drawable getTrackDrawable() {
        return this.f381k;
    }

    public ColorStateList getTrackTintList() {
        return this.f382l;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f383m;
    }

    /* renamed from: i */
    public void m6710i(Context context, int i) {
        C0135v0 m6447t = C0135v0.m6447t(context, i, j.J2);
        ColorStateList m6464c = m6447t.m6464c(j.N2);
        if (m6464c != null) {
            this.f369L = m6464c;
        } else {
            this.f369L = getTextColors();
        }
        int m6461f = m6447t.m6461f(j.K2, 0);
        if (m6461f != 0) {
            float f = m6461f;
            if (f != this.f368K.getTextSize()) {
                this.f368K.setTextSize(f);
                requestLayout();
            }
        }
        m6708k(m6447t.m6456k(j.L2, -1), m6447t.m6456k(j.M2, -1));
        if (m6447t.m6466a(j.U2, false)) {
            this.f372O = new f.a.n.a(getContext());
        } else {
            this.f372O = null;
        }
        m6447t.m6444w();
    }

    /* renamed from: j */
    public void m6709j(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i <= 0) {
            this.f368K.setFakeBoldText(false);
            this.f368K.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
            return;
        }
        Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
        setSwitchTypeface(defaultFromStyle);
        int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
        TextPaint textPaint = this.f368K;
        if ((style & 1) != 0) {
            z = true;
        }
        textPaint.setFakeBoldText(z);
        TextPaint textPaint2 = this.f368K;
        if ((style & 2) != 0) {
            f = -0.25f;
        }
        textPaint2.setTextSkewX(f);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f376f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f381k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f373P;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f373P.end();
        this.f373P = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f357T);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f375R;
        Drawable drawable = this.f381k;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f365H;
        int i3 = this.f367J;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f376f;
        if (drawable != null) {
            if (!this.f389s || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect m6609d = C0099d0.m6609d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += m6609d.left;
                rect.right -= m6609d.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.f370M : this.f371N;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f369L;
            if (colorStateList != null) {
                this.f368K.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f368K.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                i = bounds.left + bounds.right;
            } else {
                i = getWidth();
            }
            canvas.translate((i / 2) - (layout.getWidth() / 2), (((i2 + i4) + (i3 - i5)) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        CharSequence charSequence = isChecked() ? this.f390t : this.f391u;
        if (!TextUtils.isEmpty(charSequence)) {
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z, i, i2, i3, i4);
        int i11 = 0;
        if (this.f376f != null) {
            Rect rect = this.f375R;
            Drawable drawable = this.f381k;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect m6609d = C0099d0.m6609d(this.f376f);
            i5 = Math.max(0, m6609d.left - rect.left);
            i11 = Math.max(0, m6609d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0096b1.m6638b(this)) {
            i6 = getPaddingLeft() + i5;
            i7 = ((this.f361D + i6) - i5) - i11;
        } else {
            int width = (getWidth() - getPaddingRight()) - i11;
            i7 = width;
            i6 = (width - this.f361D) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i10 = this.f362E;
            i9 = paddingTop - (i10 / 2);
        } else if (gravity == 80) {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f362E;
            this.f364G = i6;
            this.f365H = i9;
            this.f367J = i8;
            this.f366I = i7;
        } else {
            i9 = getPaddingTop();
            i10 = this.f362E;
        }
        i8 = i10 + i9;
        this.f364G = i6;
        this.f365H = i9;
        this.f367J = i8;
        this.f366I = i7;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f392v) {
            if (this.f370M == null) {
                this.f370M = m6711h(this.f390t);
            }
            if (this.f371N == null) {
                this.f371N = m6711h(this.f391u);
            }
        }
        Rect rect = this.f375R;
        Drawable drawable = this.f376f;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f376f.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f376f.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f363F = Math.max(this.f392v ? Math.max(this.f370M.getWidth(), this.f371N.getWidth()) + (this.f386p * 2) : 0, i4);
        Drawable drawable2 = this.f381k;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f381k.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f376f;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect m6609d = C0099d0.m6609d(drawable3);
            i9 = Math.max(i6, m6609d.left);
            i8 = Math.max(i7, m6609d.right);
        }
        int max = Math.max(this.f387q, (this.f363F * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f361D = max;
        this.f362E = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f390t : this.f391u;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L44;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (getWindowToken() != null && t.Q(this)) {
            m6718a(isChecked);
            return;
        }
        m6715d();
        setThumbPosition(isChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0244i.m5865s(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f392v != z) {
            this.f392v = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f389s = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f387q = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f388r = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f368K.getTypeface() == null || this.f368K.getTypeface().equals(typeface)) && (this.f368K.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f368K.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        this.f391u = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f390t = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f376f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f376f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f) {
        this.f360C = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(f.a.k.a.a.d(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f386p = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f377g = colorStateList;
        this.f379i = true;
        m6717b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f378h = mode;
        this.f380j = true;
        m6717b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f381k;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f381k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(f.a.k.a.a.d(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f382l = colorStateList;
        this.f384n = true;
        m6716c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f383m = mode;
        this.f385o = true;
        m6716c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f376f || drawable == this.f381k;
    }
}
