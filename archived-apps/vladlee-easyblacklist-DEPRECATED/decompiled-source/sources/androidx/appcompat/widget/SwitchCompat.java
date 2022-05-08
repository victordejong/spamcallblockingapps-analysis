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
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.appcompat.C0247a;
import androidx.appcompat.p025d.C0341a;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0786k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: A */
    private int f2073A;

    /* renamed from: B */
    private int f2074B;

    /* renamed from: C */
    private int f2075C;

    /* renamed from: D */
    private int f2076D;

    /* renamed from: E */
    private int f2077E;

    /* renamed from: F */
    private int f2078F;

    /* renamed from: G */
    private int f2079G;

    /* renamed from: H */
    private final TextPaint f2080H;

    /* renamed from: I */
    private ColorStateList f2081I;

    /* renamed from: J */
    private Layout f2082J;

    /* renamed from: K */
    private Layout f2083K;

    /* renamed from: L */
    private TransformationMethod f2084L;

    /* renamed from: M */
    private final C0431ad f2085M;

    /* renamed from: N */
    private final Rect f2086N;

    /* renamed from: a */
    float f2087a;

    /* renamed from: b */
    ObjectAnimator f2088b;

    /* renamed from: d */
    private Drawable f2089d;

    /* renamed from: e */
    private ColorStateList f2090e;

    /* renamed from: f */
    private PorterDuff.Mode f2091f;

    /* renamed from: g */
    private boolean f2092g;

    /* renamed from: h */
    private boolean f2093h;

    /* renamed from: i */
    private Drawable f2094i;

    /* renamed from: j */
    private ColorStateList f2095j;

    /* renamed from: k */
    private PorterDuff.Mode f2096k;

    /* renamed from: l */
    private boolean f2097l;

    /* renamed from: m */
    private boolean f2098m;

    /* renamed from: n */
    private int f2099n;

    /* renamed from: o */
    private int f2100o;

    /* renamed from: p */
    private int f2101p;

    /* renamed from: q */
    private boolean f2102q;

    /* renamed from: r */
    private CharSequence f2103r;

    /* renamed from: s */
    private CharSequence f2104s;

    /* renamed from: t */
    private boolean f2105t;

    /* renamed from: u */
    private int f2106u;

    /* renamed from: v */
    private int f2107v;

    /* renamed from: w */
    private float f2108w;

    /* renamed from: x */
    private float f2109x;

    /* renamed from: y */
    private VelocityTracker f2110y;

    /* renamed from: z */
    private int f2111z;

    /* renamed from: c */
    private static final Property<SwitchCompat, Float> f2072c = new C0479bh(Float.class, "thumbPos");

    /* renamed from: O */
    private static final int[] f2071O = {16842912};

    public SwitchCompat(Context context) {
        this(context, null);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f556N);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0341a aVar = null;
        this.f2090e = null;
        this.f2091f = null;
        this.f2092g = false;
        this.f2093h = false;
        this.f2095j = null;
        this.f2096k = null;
        this.f2097l = false;
        this.f2098m = false;
        this.f2110y = VelocityTracker.obtain();
        this.f2086N = new Rect();
        boolean z = true;
        this.f2080H = new TextPaint(1);
        this.f2080H.density = getResources().getDisplayMetrics().density;
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f891cS, i, 0);
        this.f2089d = a.m9099a(C0247a.C0257j.f894cV);
        Drawable drawable = this.f2089d;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.f2094i = a.m9099a(C0247a.C0257j.f956de);
        Drawable drawable2 = this.f2094i;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        this.f2103r = a.m9089c(C0247a.C0257j.f892cT);
        this.f2104s = a.m9089c(C0247a.C0257j.f893cU);
        this.f2105t = a.m9095a(C0247a.C0257j.f895cW, true);
        this.f2099n = a.m9086d(C0247a.C0257j.f953db, 0);
        this.f2100o = a.m9086d(C0247a.C0257j.f897cY, 0);
        this.f2101p = a.m9086d(C0247a.C0257j.f898cZ, 0);
        this.f2102q = a.m9095a(C0247a.C0257j.f896cX, false);
        ColorStateList f = a.m9083f(C0247a.C0257j.f954dc);
        if (f != null) {
            this.f2090e = f;
            this.f2092g = true;
        }
        PorterDuff.Mode a2 = C0437ah.m9172a(a.m9097a(C0247a.C0257j.f955dd, -1), null);
        if (this.f2091f != a2) {
            this.f2091f = a2;
            this.f2093h = true;
        }
        if ((this.f2092g || this.f2093h) && this.f2089d != null && (this.f2092g || this.f2093h)) {
            this.f2089d = C0758a.m8241f(this.f2089d).mutate();
            if (this.f2092g) {
                C0758a.m8251a(this.f2089d, this.f2090e);
            }
            if (this.f2093h) {
                C0758a.m8248a(this.f2089d, this.f2091f);
            }
            if (this.f2089d.isStateful()) {
                this.f2089d.setState(getDrawableState());
            }
        }
        ColorStateList f2 = a.m9083f(C0247a.C0257j.f957df);
        if (f2 != null) {
            this.f2095j = f2;
            this.f2097l = true;
        }
        PorterDuff.Mode a3 = C0437ah.m9172a(a.m9097a(C0247a.C0257j.f958dg, -1), null);
        if (this.f2096k != a3) {
            this.f2096k = a3;
            this.f2098m = true;
        }
        if ((this.f2097l || this.f2098m) && this.f2094i != null && (this.f2097l || this.f2098m)) {
            this.f2094i = C0758a.m8241f(this.f2094i).mutate();
            if (this.f2097l) {
                C0758a.m8251a(this.f2094i, this.f2095j);
            }
            if (this.f2098m) {
                C0758a.m8248a(this.f2094i, this.f2096k);
            }
            if (this.f2094i.isStateful()) {
                this.f2094i.setState(getDrawableState());
            }
        }
        int f3 = a.m9082f(C0247a.C0257j.f952da, 0);
        if (f3 != 0) {
            C0484bm a4 = C0484bm.m9094a(context, f3, C0247a.C0257j.f959dh);
            ColorStateList f4 = a4.m9083f(C0247a.C0257j.f963dl);
            this.f2081I = f4 == null ? getTextColors() : f4;
            int d = a4.m9086d(C0247a.C0257j.f960di, 0);
            if (d != 0) {
                float f5 = d;
                if (f5 != this.f2080H.getTextSize()) {
                    this.f2080H.setTextSize(f5);
                    requestLayout();
                }
            }
            int a5 = a4.m9097a(C0247a.C0257j.f961dj, -1);
            int a6 = a4.m9097a(C0247a.C0257j.f962dk, -1);
            Typeface typeface = a5 != 1 ? a5 != 2 ? a5 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            float f6 = 0.0f;
            if (a6 > 0) {
                Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(a6) : Typeface.create(typeface, a6);
                m9313a(defaultFromStyle);
                int style = a6 & ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1));
                this.f2080H.setFakeBoldText((style & 1) == 0 ? false : z);
                this.f2080H.setTextSkewX((style & 2) != 0 ? -0.25f : f6);
            } else {
                this.f2080H.setFakeBoldText(false);
                this.f2080H.setTextSkewX(0.0f);
                m9313a(typeface);
            }
            this.f2084L = a4.m9095a(C0247a.C0257j.f974dw, false) ? new C0341a(getContext()) : aVar;
            a4.m9100a();
        }
        this.f2085M = new C0431ad(this);
        this.f2085M.m9224a(attributeSet, i);
        a.m9100a();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2107v = viewConfiguration.getScaledTouchSlop();
        this.f2111z = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    private void m9313a(Typeface typeface) {
        if ((this.f2080H.getTypeface() != null && !this.f2080H.getTypeface().equals(typeface)) || (this.f2080H.getTypeface() == null && typeface != null)) {
            this.f2080H.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    /* renamed from: a */
    private boolean m9315a() {
        return this.f2087a > 0.5f;
    }

    /* renamed from: b */
    private int m9311b() {
        return (int) (((C0499ca.m9031a(this) ? 1.0f - this.f2087a : this.f2087a) * m9309c()) + 0.5f);
    }

    /* renamed from: c */
    private int m9309c() {
        Drawable drawable = this.f2094i;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f2086N;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f2089d;
        Rect a = drawable2 != null ? C0437ah.m9171a(drawable2) : C0437ah.f2210a;
        return ((((this.f2073A - this.f2075C) - rect.left) - rect.right) - a.left) - a.right;
    }

    /* renamed from: c */
    private Layout m9308c(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f2084L;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f2080H;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9314a(float f) {
        this.f2087a = f;
        invalidate();
    }

    /* renamed from: a */
    public final void m9312a(CharSequence charSequence) {
        this.f2103r = charSequence;
        requestLayout();
    }

    /* renamed from: b */
    public final void m9310b(CharSequence charSequence) {
        this.f2104s = charSequence;
        requestLayout();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.f2086N;
        int i3 = this.f2076D;
        int i4 = this.f2077E;
        int i5 = this.f2078F;
        int i6 = this.f2079G;
        int b = m9311b() + i3;
        Drawable drawable = this.f2089d;
        Rect a = drawable != null ? C0437ah.m9171a(drawable) : C0437ah.f2210a;
        Drawable drawable2 = this.f2094i;
        int i7 = b;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i7 = b + rect.left;
            if (a != null) {
                int i8 = i3;
                if (a.left > rect.left) {
                    i8 = i3 + (a.left - rect.left);
                }
                i = a.top > rect.top ? (a.top - rect.top) + i4 : i4;
                i5 = i5;
                if (a.right > rect.right) {
                    i5 -= a.right - rect.right;
                }
                i3 = i8;
                i5 = i5;
                i = i;
                if (a.bottom > rect.bottom) {
                    i2 = i6 - (a.bottom - rect.bottom);
                    i3 = i8;
                    this.f2094i.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.f2094i.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f2089d;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i9 = i7 - rect.left;
            int i10 = i7 + this.f2075C + rect.right;
            this.f2089d.setBounds(i9, i4, i10, i6);
            Drawable background = getBackground();
            if (background != null) {
                C0758a.m8252a(background, i9, i4, i10, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f2089d;
        if (drawable != null) {
            C0758a.m8254a(drawable, f, f2);
        }
        Drawable drawable2 = this.f2094i;
        if (drawable2 != null) {
            C0758a.m8254a(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2089d;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f2094i;
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
        if (!C0499ca.m9031a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f2073A;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f2101p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0499ca.m9031a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f2073A;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f2101p;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2089d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f2094i;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f2088b;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.f2088b.end();
            this.f2088b = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f2071O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f2086N;
        Drawable drawable = this.f2094i;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f2077E;
        int i3 = this.f2079G;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f2089d;
        if (drawable != null) {
            if (!this.f2102q || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect a = C0437ah.m9171a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += a.left;
                rect.right -= a.right;
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
        Layout layout = m9315a() ? this.f2082J : this.f2083K;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f2081I;
            if (colorStateList != null) {
                this.f2080H.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f2080H.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.f2103r : this.f2104s;
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
        if (this.f2089d != null) {
            Rect rect = this.f2086N;
            Drawable drawable = this.f2094i;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect a = C0437ah.m9171a(this.f2089d);
            i5 = Math.max(0, a.left - rect.left);
            i11 = Math.max(0, a.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0499ca.m9031a(this)) {
            int paddingLeft = getPaddingLeft() + i5;
            i6 = ((this.f2073A + paddingLeft) - i5) - i11;
            i7 = paddingLeft;
        } else {
            i6 = (getWidth() - getPaddingRight()) - i11;
            i7 = (i6 - this.f2073A) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i10 = this.f2074B;
            i9 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i10 / 2);
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i10 = this.f2074B;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f2074B;
            this.f2076D = i7;
            this.f2077E = i9;
            this.f2079G = i8;
            this.f2078F = i6;
        }
        i8 = i10 + i9;
        this.f2076D = i7;
        this.f2077E = i9;
        this.f2079G = i8;
        this.f2078F = i6;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.f2105t) {
            if (this.f2082J == null) {
                this.f2082J = m9308c(this.f2103r);
            }
            if (this.f2083K == null) {
                this.f2083K = m9308c(this.f2104s);
            }
        }
        Rect rect = this.f2086N;
        Drawable drawable = this.f2089d;
        int i5 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f2089d.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f2089d.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f2075C = Math.max(this.f2105t ? Math.max(this.f2082J.getWidth(), this.f2083K.getWidth()) + (this.f2099n * 2) : 0, i4);
        Drawable drawable2 = this.f2094i;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f2094i.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f2089d;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect a = C0437ah.m9171a(drawable3);
            i9 = Math.max(i6, a.left);
            i8 = Math.max(i7, a.right);
        }
        int max = Math.max(this.f2100o, (this.f2075C * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f2073A = max;
        this.f2074B = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f2103r : this.f2104s;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r0 != 3) goto L_0x0284;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        float f = 1.0f;
        if (getWindowToken() == null || !C0741t.m8373B(this)) {
            ObjectAnimator objectAnimator = this.f2088b;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            if (!isChecked) {
                f = 0.0f;
            }
            m9314a(f);
            return;
        }
        if (!isChecked) {
            f = 0.0f;
        }
        this.f2088b = ObjectAnimator.ofFloat(this, f2072c, f);
        this.f2088b.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f2088b.setAutoCancel(true);
        }
        this.f2088b.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0786k.m8132a(this, callback));
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2089d || drawable == this.f2094i;
    }
}
