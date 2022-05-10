package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
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
import p012b.p016b.C0574a;
import p012b.p016b.C0583j;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p023o.C0620a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0706l;
import p012b.p016b.p026q.C0708l0;
import p012b.p016b.p026q.C0716p;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p056q.C1032i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat.class */
public class SwitchCompat extends CompoundButton {

    /* renamed from: N */
    public static final Property<SwitchCompat, Float> f747N = new C0168a(Float.class, "thumbPos");

    /* renamed from: O */
    public static final int[] f748O = {16842912};

    /* renamed from: A */
    public int f749A;

    /* renamed from: B */
    public int f750B;

    /* renamed from: C */
    public int f751C;

    /* renamed from: D */
    public int f752D;

    /* renamed from: E */
    public int f753E;

    /* renamed from: F */
    public final TextPaint f754F;

    /* renamed from: G */
    public ColorStateList f755G;

    /* renamed from: H */
    public Layout f756H;

    /* renamed from: I */
    public Layout f757I;

    /* renamed from: J */
    public TransformationMethod f758J;

    /* renamed from: K */
    public ObjectAnimator f759K;

    /* renamed from: L */
    public final C0706l f760L;

    /* renamed from: M */
    public final Rect f761M;

    /* renamed from: a */
    public Drawable f762a;

    /* renamed from: b */
    public ColorStateList f763b;

    /* renamed from: c */
    public PorterDuff.Mode f764c;

    /* renamed from: d */
    public boolean f765d;

    /* renamed from: e */
    public boolean f766e;

    /* renamed from: f */
    public Drawable f767f;

    /* renamed from: g */
    public ColorStateList f768g;

    /* renamed from: h */
    public PorterDuff.Mode f769h;

    /* renamed from: i */
    public boolean f770i;

    /* renamed from: j */
    public boolean f771j;

    /* renamed from: k */
    public int f772k;

    /* renamed from: l */
    public int f773l;

    /* renamed from: m */
    public int f774m;

    /* renamed from: n */
    public boolean f775n;

    /* renamed from: o */
    public CharSequence f776o;

    /* renamed from: p */
    public CharSequence f777p;

    /* renamed from: q */
    public boolean f778q;

    /* renamed from: r */
    public int f779r;

    /* renamed from: s */
    public int f780s;

    /* renamed from: t */
    public float f781t;

    /* renamed from: u */
    public float f782u;

    /* renamed from: v */
    public VelocityTracker f783v;

    /* renamed from: w */
    public int f784w;

    /* renamed from: x */
    public float f785x;

    /* renamed from: y */
    public int f786y;

    /* renamed from: z */
    public int f787z;

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SwitchCompat$a.class */
    public class C0168a extends Property<SwitchCompat, Float> {
        public C0168a(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f785x);
        }

        /* renamed from: a */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.switchStyle);
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f763b = null;
        this.f764c = null;
        this.f765d = false;
        this.f766e = false;
        this.f768g = null;
        this.f769h = null;
        this.f770i = false;
        this.f771j = false;
        this.f783v = VelocityTracker.obtain();
        this.f761M = new Rect();
        C0675a0.m36481a(this, getContext());
        this.f754F = new TextPaint(1);
        Resources resources = getResources();
        this.f754F.density = resources.getDisplayMetrics().density;
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.SwitchCompat, i, 0);
        C1002u.m35244a(this, context, C0583j.SwitchCompat, attributeSet, a.m36422a(), i, 0);
        Drawable b = a.m36412b(C0583j.SwitchCompat_android_thumb);
        this.f762a = b;
        if (b != null) {
            b.setCallback(this);
        }
        Drawable b2 = a.m36412b(C0583j.SwitchCompat_track);
        this.f767f = b2;
        if (b2 != null) {
            b2.setCallback(this);
        }
        this.f776o = a.m36406e(C0583j.SwitchCompat_android_textOn);
        this.f777p = a.m36406e(C0583j.SwitchCompat_android_textOff);
        this.f778q = a.m36417a(C0583j.SwitchCompat_showText, true);
        this.f772k = a.m36409c(C0583j.SwitchCompat_thumbTextPadding, 0);
        this.f773l = a.m36409c(C0583j.SwitchCompat_switchMinWidth, 0);
        this.f774m = a.m36409c(C0583j.SwitchCompat_switchPadding, 0);
        this.f775n = a.m36417a(C0583j.SwitchCompat_splitTrack, false);
        ColorStateList a2 = a.m36421a(C0583j.SwitchCompat_thumbTint);
        if (a2 != null) {
            this.f763b = a2;
            this.f765d = true;
        }
        PorterDuff.Mode a3 = C0716p.m36252a(a.m36407d(C0583j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f764c != a3) {
            this.f764c = a3;
            this.f766e = true;
        }
        if (this.f765d || this.f766e) {
            m38890a();
        }
        ColorStateList a4 = a.m36421a(C0583j.SwitchCompat_trackTint);
        if (a4 != null) {
            this.f768g = a4;
            this.f770i = true;
        }
        PorterDuff.Mode a5 = C0716p.m36252a(a.m36407d(C0583j.SwitchCompat_trackTintMode, -1), null);
        if (this.f769h != a5) {
            this.f769h = a5;
            this.f771j = true;
        }
        if (this.f770i || this.f771j) {
            m38881b();
        }
        int g = a.m36401g(C0583j.SwitchCompat_switchTextAppearance, 0);
        if (g != 0) {
            m38886a(context, g);
        }
        C0706l lVar = new C0706l(this);
        this.f760L = lVar;
        lVar.m36336a(attributeSet, i);
        a.m36413b();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f780s = viewConfiguration.getScaledTouchSlop();
        this.f784w = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    /* renamed from: a */
    public static float m38888a(float f, float f2, float f3) {
        if (f >= f2) {
            f2 = f;
            if (f > f3) {
                f2 = f3;
            }
        }
        return f2;
    }

    private boolean getTargetCheckedState() {
        return this.f785x > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((C0708l0.m36319a(this) ? 1.0f - this.f785x : this.f785x) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f767f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f761M;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f762a;
        Rect d = drawable2 != null ? C0716p.m36248d(drawable2) : C0716p.f3507c;
        return ((((this.f786y - this.f749A) - rect.left) - rect.right) - d.left) - d.right;
    }

    /* renamed from: a */
    public final Layout m38883a(CharSequence charSequence) {
        TransformationMethod transformationMethod = this.f758J;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, this);
        }
        TextPaint textPaint = this.f754F;
        return new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    /* renamed from: a */
    public final void m38890a() {
        if (this.f762a == null) {
            return;
        }
        if (this.f765d || this.f766e) {
            Drawable mutate = C0907a.m35514h(this.f762a).mutate();
            this.f762a = mutate;
            if (this.f765d) {
                C0907a.m35526a(mutate, this.f763b);
            }
            if (this.f766e) {
                C0907a.m35523a(this.f762a, this.f764c);
            }
            if (this.f762a.isStateful()) {
                this.f762a.setState(getDrawableState());
            }
        }
    }

    /* renamed from: a */
    public final void m38887a(int i, int i2) {
        m38885a(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: a */
    public void m38886a(Context context, int i) {
        C0691f0 a = C0691f0.m36416a(context, i, C0583j.TextAppearance);
        ColorStateList a2 = a.m36421a(C0583j.TextAppearance_android_textColor);
        if (a2 != null) {
            this.f755G = a2;
        } else {
            this.f755G = getTextColors();
        }
        int c = a.m36409c(C0583j.TextAppearance_android_textSize, 0);
        if (c != 0) {
            float f = c;
            if (f != this.f754F.getTextSize()) {
                this.f754F.setTextSize(f);
                requestLayout();
            }
        }
        m38887a(a.m36407d(C0583j.TextAppearance_android_typeface, -1), a.m36407d(C0583j.TextAppearance_android_textStyle, -1));
        if (a.m36417a(C0583j.TextAppearance_textAllCaps, false)) {
            this.f758J = new C0620a(getContext());
        } else {
            this.f758J = null;
        }
        a.m36413b();
    }

    /* renamed from: a */
    public void m38885a(Typeface typeface, int i) {
        float f = 0.0f;
        boolean z = false;
        if (i > 0) {
            Typeface defaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i) : Typeface.create(typeface, i);
            setSwitchTypeface(defaultFromStyle);
            int style = ((defaultFromStyle != null ? defaultFromStyle.getStyle() : 0) ^ (-1)) & i;
            TextPaint textPaint = this.f754F;
            if ((style & 1) != 0) {
                z = true;
            }
            textPaint.setFakeBoldText(z);
            TextPaint textPaint2 = this.f754F;
            if ((style & 2) != 0) {
                f = -0.25f;
            }
            textPaint2.setTextSkewX(f);
            return;
        }
        this.f754F.setFakeBoldText(false);
        this.f754F.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    /* renamed from: a */
    public final void m38884a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: a */
    public final void m38882a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f747N, z ? 1.0f : 0.0f);
        this.f759K = ofFloat;
        ofFloat.setDuration(250L);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f759K.setAutoCancel(true);
        }
        this.f759K.start();
    }

    /* renamed from: a */
    public final boolean m38889a(float f, float f2) {
        int i;
        if (this.f762a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f762a.getPadding(this.f761M);
        int i2 = this.f751C;
        int i3 = (this.f750B + thumbOffset) - this.f780s;
        int i4 = this.f749A;
        Rect rect = this.f761M;
        int i5 = rect.left;
        int i6 = rect.right;
        int i7 = this.f753E;
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

    /* renamed from: b */
    public final void m38881b() {
        if (this.f767f == null) {
            return;
        }
        if (this.f770i || this.f771j) {
            Drawable mutate = C0907a.m35514h(this.f767f).mutate();
            this.f767f = mutate;
            if (this.f770i) {
                C0907a.m35526a(mutate, this.f768g);
            }
            if (this.f771j) {
                C0907a.m35523a(this.f767f, this.f769h);
            }
            if (this.f767f.isStateful()) {
                this.f767f.setState(getDrawableState());
            }
        }
    }

    /* renamed from: b */
    public final void m38880b(MotionEvent motionEvent) {
        this.f779r = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f783v.computeCurrentVelocity(1000);
            float xVelocity = this.f783v.getXVelocity();
            if (Math.abs(xVelocity) <= this.f784w) {
                z = getTargetCheckedState();
            } else if (!C0708l0.m36319a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m38884a(motionEvent);
    }

    /* renamed from: c */
    public final void m38879c() {
        ObjectAnimator objectAnimator = this.f759K;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.f761M;
        int i3 = this.f750B;
        int i4 = this.f751C;
        int i5 = this.f752D;
        int i6 = this.f753E;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f762a;
        Rect d = drawable != null ? C0716p.m36248d(drawable) : C0716p.f3507c;
        Drawable drawable2 = this.f767f;
        int i7 = thumbOffset;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i8 = rect.left;
            i7 = thumbOffset + i8;
            if (d != null) {
                int i9 = d.left;
                int i10 = i3;
                if (i9 > i8) {
                    i10 = i3 + (i9 - i8);
                }
                int i11 = d.top;
                int i12 = rect.top;
                i2 = i11 > i12 ? (i11 - i12) + i4 : i4;
                int i13 = d.right;
                int i14 = rect.right;
                i5 = i5;
                if (i13 > i14) {
                    i5 -= i13 - i14;
                }
                int i15 = d.bottom;
                int i16 = rect.bottom;
                i3 = i10;
                i5 = i5;
                i2 = i2;
                if (i15 > i16) {
                    i = i6 - (i15 - i16);
                    i3 = i10;
                    this.f767f.setBounds(i3, i2, i5, i);
                }
            } else {
                i2 = i4;
            }
            i = i6;
            this.f767f.setBounds(i3, i2, i5, i);
        }
        Drawable drawable3 = this.f762a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i17 = i7 - rect.left;
            int i18 = i7 + this.f749A + rect.right;
            this.f762a.setBounds(i17, i4, i18, i6);
            Drawable background = getBackground();
            if (background != null) {
                C0907a.m35527a(background, i17, i4, i18, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f, f2);
        }
        Drawable drawable = this.f762a;
        if (drawable != null) {
            C0907a.m35529a(drawable, f, f2);
        }
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            C0907a.m35529a(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f762a;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f767f;
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
        if (!C0708l0.m36319a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f786y;
        int i = compoundPaddingLeft;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingLeft + this.f774m;
        }
        return i;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C0708l0.m36319a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f786y;
        int i = compoundPaddingRight;
        if (!TextUtils.isEmpty(getText())) {
            i = compoundPaddingRight + this.f774m;
        }
        return i;
    }

    public boolean getShowText() {
        return this.f778q;
    }

    public boolean getSplitTrack() {
        return this.f775n;
    }

    public int getSwitchMinWidth() {
        return this.f773l;
    }

    public int getSwitchPadding() {
        return this.f774m;
    }

    public CharSequence getTextOff() {
        return this.f777p;
    }

    public CharSequence getTextOn() {
        return this.f776o;
    }

    public Drawable getThumbDrawable() {
        return this.f762a;
    }

    public int getThumbTextPadding() {
        return this.f772k;
    }

    public ColorStateList getThumbTintList() {
        return this.f763b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f764c;
    }

    public Drawable getTrackDrawable() {
        return this.f767f;
    }

    public ColorStateList getTrackTintList() {
        return this.f768g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f769h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f762a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f759K;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.f759K.end();
            this.f759K = null;
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CompoundButton.mergeDrawableStates(onCreateDrawableState, f748O);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Rect rect = this.f761M;
        Drawable drawable = this.f767f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i2 = this.f751C;
        int i3 = this.f753E;
        int i4 = rect.top;
        int i5 = rect.bottom;
        Drawable drawable2 = this.f762a;
        if (drawable != null) {
            if (!this.f775n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect d = C0716p.m36248d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += d.left;
                rect.right -= d.right;
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
        Layout layout = getTargetCheckedState() ? this.f756H : this.f757I;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f755G;
            if (colorStateList != null) {
                this.f754F.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f754F.drawableState = drawableState;
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
        CharSequence charSequence = isChecked() ? this.f776o : this.f777p;
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        super.onLayout(z, i, i2, i3, i4);
        int i11 = 0;
        if (this.f762a != null) {
            Rect rect = this.f761M;
            Drawable drawable = this.f767f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect d = C0716p.m36248d(this.f762a);
            i5 = Math.max(0, d.left - rect.left);
            i11 = Math.max(0, d.right - rect.right);
        } else {
            i5 = 0;
        }
        if (C0708l0.m36319a(this)) {
            int paddingLeft = getPaddingLeft() + i5;
            i6 = ((this.f786y + paddingLeft) - i5) - i11;
            i7 = paddingLeft;
        } else {
            i6 = (getWidth() - getPaddingRight()) - i11;
            i7 = (i6 - this.f786y) + i5 + i11;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            i10 = this.f787z;
            i9 = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i10 / 2);
        } else if (gravity != 80) {
            i9 = getPaddingTop();
            i10 = this.f787z;
        } else {
            i8 = getHeight() - getPaddingBottom();
            i9 = i8 - this.f787z;
            this.f750B = i7;
            this.f751C = i9;
            this.f753E = i8;
            this.f752D = i6;
        }
        i8 = i10 + i9;
        this.f750B = i7;
        this.f751C = i9;
        this.f753E = i8;
        this.f752D = i6;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.f778q) {
            if (this.f756H == null) {
                this.f756H = m38883a(this.f776o);
            }
            if (this.f757I == null) {
                this.f757I = m38883a(this.f777p);
            }
        }
        Rect rect = this.f761M;
        Drawable drawable = this.f762a;
        int i5 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i4 = (this.f762a.getIntrinsicWidth() - rect.left) - rect.right;
            i3 = this.f762a.getIntrinsicHeight();
        } else {
            i4 = 0;
            i3 = 0;
        }
        this.f749A = Math.max(this.f778q ? Math.max(this.f756H.getWidth(), this.f757I.getWidth()) + (this.f772k * 2) : 0, i4);
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f767f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f762a;
        int i8 = i7;
        int i9 = i6;
        if (drawable3 != null) {
            Rect d = C0716p.m36248d(drawable3);
            i9 = Math.max(i6, d.left);
            i8 = Math.max(i7, d.right);
        }
        int max = Math.max(this.f773l, (this.f749A * 2) + i9 + i8);
        int max2 = Math.max(i5, i3);
        this.f786y = max;
        this.f787z = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f776o : this.f777p;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != 3) goto L_0x013e;
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
        if (getWindowToken() == null || !C1002u.m35196z(this)) {
            m38879c();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
            return;
        }
        m38882a(isChecked);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C1032i.m35098a(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.f778q != z) {
            this.f778q = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.f775n = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f773l = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f774m = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f754F.getTypeface() != null && !this.f754F.getTypeface().equals(typeface)) || (this.f754F.getTypeface() == null && typeface != null)) {
            this.f754F.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setTextOff(CharSequence charSequence) {
        this.f777p = charSequence;
        requestLayout();
    }

    public void setTextOn(CharSequence charSequence) {
        this.f776o = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f762a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f762a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f785x = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(C0601a.m36777c(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f772k = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f763b = colorStateList;
        this.f765d = true;
        m38890a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f764c = mode;
        this.f766e = true;
        m38890a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f767f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f767f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(C0601a.m36777c(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f768g = colorStateList;
        this.f770i = true;
        m38881b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f769h = mode;
        this.f771j = true;
        m38881b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f762a || drawable == this.f767f;
    }
}
