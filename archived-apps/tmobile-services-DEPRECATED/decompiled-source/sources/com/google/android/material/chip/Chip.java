package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.android.material.C1027R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip.class */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable {
    @Nullable

    /* renamed from: i */
    private ChipDrawable f10369i;
    @Nullable

    /* renamed from: j */
    private InsetDrawable f10370j;
    @Nullable

    /* renamed from: k */
    private RippleDrawable f10371k;
    @Nullable

    /* renamed from: l */
    private View.OnClickListener f10372l;
    @Nullable

    /* renamed from: m */
    private CompoundButton.OnCheckedChangeListener f10373m;

    /* renamed from: n */
    private boolean f10374n;

    /* renamed from: o */
    private boolean f10375o;

    /* renamed from: p */
    private boolean f10376p;

    /* renamed from: q */
    private boolean f10377q;

    /* renamed from: r */
    private boolean f10378r;

    /* renamed from: s */
    private int f10379s;
    @Dimension

    /* renamed from: t */
    private int f10380t;
    @NonNull

    /* renamed from: u */
    private final ChipTouchHelper f10381u;

    /* renamed from: v */
    private final Rect f10382v;

    /* renamed from: w */
    private final RectF f10383w;

    /* renamed from: x */
    private final TextAppearanceFontCallback f10384x;

    /* renamed from: y */
    private static final int f10367y = C1027R.style.Widget_MaterialComponents_Chip_Action;

    /* renamed from: z */
    private static final Rect f10368z = new Rect();

    /* renamed from: A */
    private static final int[] f10365A = {16842913};

    /* renamed from: B */
    private static final int[] f10366B = {16842911};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/chip/Chip$ChipTouchHelper.class */
    public class ChipTouchHelper extends ExploreByTouchHelper {
        ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: B */
        protected void mo10200B(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.m19030a0(Chip.this.m10209r());
            accessibilityNodeInfoCompat.m19024d0(Chip.this.isClickable());
            if (Chip.this.m10209r() || Chip.this.isClickable()) {
                accessibilityNodeInfoCompat.m19026c0(Chip.this.m10209r() ? "android.widget.CompoundButton" : "android.widget.Button");
            } else {
                accessibilityNodeInfoCompat.m19026c0("android.view.View");
            }
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.m19057D0(text);
            } else {
                accessibilityNodeInfoCompat.m19018g0(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: C */
        protected void mo9087C(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String str = "";
            if (i == 1) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.m19018g0(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = C1027R.string.mtrl_chip_close_icon_content_description;
                    if (!TextUtils.isEmpty(text)) {
                        str = text;
                    }
                    accessibilityNodeInfoCompat.m19018g0(context.getString(i2, str).trim());
                }
                accessibilityNodeInfoCompat.m19034X(Chip.this.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3332g);
                accessibilityNodeInfoCompat.m19014i0(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.m19018g0("");
            accessibilityNodeInfoCompat.m19034X(Chip.f10368z);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: D */
        protected void mo10199D(int i, boolean z) {
            if (i == 1) {
                Chip.this.f10377q = z;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: o */
        protected int mo9085o(float f, float f2) {
            return (!Chip.this.m10213n() || !Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 0 : 1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: p */
        protected void mo9084p(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.m10213n() && Chip.this.m10208s() && Chip.this.f10372l != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        /* renamed from: y */
        protected boolean mo9083y(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            if (i == 0) {
                return Chip.this.performClick();
            }
            if (i == 1) {
                return Chip.this.m10207t();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10367y), attributeSet, i);
        this.f10382v = new Rect();
        this.f10383w = new RectF();
        this.f10384x = new TextAppearanceFontCallback() { // from class: com.google.android.material.chip.Chip.1
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            /* renamed from: a */
            public void mo9374a(int i2) {
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            /* renamed from: b */
            public void mo9373b(@NonNull Typeface typeface, boolean z) {
                Chip chip = Chip.this;
                chip.setText(chip.f10369i.m10160M2() ? Chip.this.f10369i.m10111i1() : Chip.this.getText());
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }
        };
        Context context2 = getContext();
        m10226C(attributeSet);
        ChipDrawable y0 = ChipDrawable.m10068y0(context2, attributeSet, i, f10367y);
        m10212o(context2, attributeSet, i);
        setChipDrawable(y0);
        y0.m9329V(ViewCompat.m19168v(this));
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.Chip, i, f10367y, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(MaterialResources.m9394a(context2, h, C1027R.styleable.Chip_android_textColor));
        }
        boolean hasValue = h.hasValue(C1027R.styleable.Chip_shapeAppearance);
        h.recycle();
        this.f10381u = new ChipTouchHelper(this);
        m10203x();
        if (!hasValue) {
            m10211p();
        }
        setChecked(this.f10374n);
        setText(y0.m10111i1());
        setEllipsize(y0.m10123c1());
        m10227B();
        if (!this.f10369i.m10160M2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        m10228A();
        if (m10205v()) {
            setMinHeight(this.f10380t);
        }
        this.f10379s = ViewCompat.m19244A(this);
    }

    /* renamed from: A */
    private void m10228A() {
        ChipDrawable chipDrawable;
        if (!TextUtils.isEmpty(getText()) && (chipDrawable = this.f10369i) != null) {
            int M0 = (int) (chipDrawable.m10162M0() + this.f10369i.m10107k1() + this.f10369i.m10083t0());
            int R0 = (int) (this.f10369i.m10147R0() + this.f10369i.m10105l1() + this.f10369i.m10095p0());
            int i = M0;
            int i2 = R0;
            if (this.f10370j != null) {
                Rect rect = new Rect();
                this.f10370j.getPadding(rect);
                i2 = R0 + rect.left;
                i = M0 + rect.right;
            }
            ViewCompat.m19241B0(this, i2, getPaddingTop(), i, getPaddingBottom());
        }
    }

    /* renamed from: B */
    private void m10227B() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.m9380i(getContext(), paint, this.f10384x);
        }
    }

    /* renamed from: C */
    private void m10226C(@Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            } else if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f10383w.setEmpty();
        if (m10213n()) {
            this.f10369i.m10125b1(this.f10383w);
        }
        return this.f10383w;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f10382v.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f10382v;
    }

    @Nullable
    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10109j1() : null;
    }

    /* renamed from: i */
    private void m10218i(@NonNull ChipDrawable chipDrawable) {
        chipDrawable.m10090q2(this);
    }

    @NonNull
    /* renamed from: j */
    private int[] m10217j() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        int i3 = i2;
        if (this.f10377q) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (this.f10376p) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        if (this.f10375o) {
            i5 = i4 + 1;
        }
        int i6 = i5;
        if (isChecked()) {
            i6 = i5 + 1;
        }
        int[] iArr = new int[i6];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        }
        int i7 = i;
        if (this.f10377q) {
            iArr[i] = 16842908;
            i7 = i + 1;
        }
        int i8 = i7;
        if (this.f10376p) {
            iArr[i7] = 16843623;
            i8 = i7 + 1;
        }
        int i9 = i8;
        if (this.f10375o) {
            iArr[i8] = 16842919;
            i9 = i8 + 1;
        }
        if (isChecked()) {
            iArr[i9] = 16842913;
        }
        return iArr;
    }

    /* renamed from: l */
    private void m10215l() {
        if (getBackgroundDrawable() == this.f10370j && this.f10369i.getCallback() == null) {
            this.f10369i.setCallback(this.f10370j);
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: m */
    private boolean m10214m(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 10) {
            return false;
        }
        try {
            Field declaredField = ExploreByTouchHelper.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            if (((Integer) declaredField.get(this.f10381u)).intValue() == Integer.MIN_VALUE) {
                return false;
            }
            Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("K", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f10381u, Integer.MIN_VALUE);
            return true;
        } catch (IllegalAccessException e) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e);
            return false;
        } catch (NoSuchFieldException e2) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e2);
            return false;
        } catch (NoSuchMethodException e3) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e3);
            return false;
        } catch (InvocationTargetException e4) {
            Log.e("Chip", "Unable to send Accessibility Exit event", e4);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public boolean m10213n() {
        ChipDrawable chipDrawable = this.f10369i;
        return (chipDrawable == null || chipDrawable.m10139U0() == null) ? false : true;
    }

    /* renamed from: o */
    private void m10212o(Context context, @Nullable AttributeSet attributeSet, int i) {
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, C1027R.styleable.Chip, i, f10367y, new int[0]);
        this.f10378r = h.getBoolean(C1027R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.f10380t = (int) Math.ceil(h.getDimension(C1027R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(ViewUtils.m9433c(getContext(), 48))));
        h.recycle();
    }

    /* renamed from: p */
    private void m10211p() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.chip.Chip.2
                @Override // android.view.ViewOutlineProvider
                @TargetApi(21)
                public void getOutline(View view, @NonNull Outline outline) {
                    if (Chip.this.f10369i != null) {
                        Chip.this.f10369i.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
    }

    /* renamed from: q */
    private void m10210q(int i, int i2, int i3, int i4) {
        this.f10370j = new InsetDrawable((Drawable) this.f10369i, i, i2, i3, i4);
    }

    private void setCloseIconHovered(boolean z) {
        if (this.f10376p != z) {
            this.f10376p = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.f10375o != z) {
            this.f10375o = z;
            refreshDrawableState();
        }
    }

    /* renamed from: u */
    private void m10206u() {
        if (this.f10370j != null) {
            this.f10370j = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            m10202y();
        }
    }

    /* renamed from: w */
    private void m10204w(@Nullable ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.m10090q2(null);
        }
    }

    /* renamed from: x */
    private void m10203x() {
        if (!m10213n() || !m10208s() || this.f10372l == null) {
            ViewCompat.m19183n0(this, null);
        } else {
            ViewCompat.m19183n0(this, this.f10381u);
        }
    }

    /* renamed from: y */
    private void m10202y() {
        if (RippleUtils.f11008a) {
            m10201z();
            return;
        }
        this.f10369i.m10163L2(true);
        ViewCompat.m19177q0(this, getBackgroundDrawable());
        m10228A();
        m10215l();
    }

    /* renamed from: z */
    private void m10201z() {
        this.f10371k = new RippleDrawable(RippleUtils.m9367d(this.f10369i.m10115g1()), getBackgroundDrawable(), null);
        this.f10369i.m10163L2(false);
        ViewCompat.m19177q0(this, this.f10371k);
        m10228A();
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    /* renamed from: a */
    public void mo10062a() {
        m10216k(this.f10380t);
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return m10214m(motionEvent) || this.f10381u.m18773i(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f10381u.m18772j(keyEvent) || this.f10381u.m18768n() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.f10369i;
        if ((chipDrawable == null || !chipDrawable.m10091q1()) ? false : this.f10369i.m10102m2(m10217j())) {
            invalidate();
        }
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f10370j;
        Drawable drawable = insetDrawable;
        if (insetDrawable == null) {
            drawable = this.f10369i;
        }
        return drawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10174I0() : null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10171J0() : null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10168K0() : null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.f10369i;
        float f = 0.0f;
        if (chipDrawable != null) {
            f = Math.max(0.0f, chipDrawable.m10165L0());
        }
        return f;
    }

    public Drawable getChipDrawable() {
        return this.f10369i;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10162M0() : 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10159N0() : null;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10156O0() : 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10153P0() : null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10150Q0() : 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10147R0() : 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10144S0() : null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10141T0() : 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10139U0() : null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10137V0() : null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10135W0() : 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10133X0() : 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10131Y0() : 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10127a1() : null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10123c1() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f10381u.m18768n() == 1 || this.f10381u.m18771k() == 1) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10121d1() : null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10119e1() : 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10117f1() : 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10115g1() : null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f10369i.getShapeAppearanceModel();
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10113h1() : null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10107k1() : 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null ? chipDrawable.m10105l1() : 0.0f;
    }

    /* renamed from: k */
    public boolean m10216k(@Dimension int i) {
        this.f10380t = i;
        int i2 = 0;
        if (m10205v()) {
            int max = Math.max(0, i - this.f10369i.getIntrinsicHeight());
            int max2 = Math.max(0, i - this.f10369i.getIntrinsicWidth());
            if (max2 > 0 || max > 0) {
                int i3 = max2 > 0 ? max2 / 2 : 0;
                if (max > 0) {
                    i2 = max / 2;
                }
                if (this.f10370j != null) {
                    Rect rect = new Rect();
                    this.f10370j.getPadding(rect);
                    if (rect.top == i2 && rect.bottom == i2 && rect.left == i3 && rect.right == i3) {
                        m10202y();
                        return true;
                    }
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    if (getMinHeight() != i) {
                        setMinHeight(i);
                    }
                    if (getMinWidth() != i) {
                        setMinWidth(i);
                    }
                } else {
                    setMinHeight(i);
                    setMinWidth(i);
                }
                m10210q(i3, i2, i3, i2);
                m10202y();
                return true;
            } else if (this.f10370j != null) {
                m10206u();
                return false;
            } else {
                m10202y();
                return false;
            }
        } else if (this.f10370j != null) {
            m10206u();
            return false;
        } else {
            m10202y();
            return false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9281f(this, this.f10369i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f10365A);
        }
        if (m10209r()) {
            CheckBox.mergeDrawableStates(onCreateDrawableState, f10366B);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        this.f10381u.m18760x(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (m10209r() || isClickable()) {
            accessibilityNodeInfo.setClassName(m10209r() ? "android.widget.CompoundButton" : "android.widget.Button");
        } else {
            accessibilityNodeInfo.setClassName("android.view.View");
        }
        accessibilityNodeInfo.setCheckable(m10209r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(chipGroup.m9550b(this), 1, chipGroup.mo9549c() ? chipGroup.m10052n(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), CloseCodes.PROTOCOL_ERROR);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f10379s != i) {
            this.f10379s = i;
            m10228A();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L_0x006a;
     */
    @Override // android.widget.TextView, android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r5
            int r0 = r0.getActionMasked()
            r6 = r0
            r0 = r4
            android.graphics.RectF r0 = r0.getCloseIconTouchBounds()
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.contains(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005c
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x0041
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x002e
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L_0x0052
            goto L_0x006a
        L_0x002e:
            r0 = r4
            boolean r0 = r0.f10375o
            if (r0 == 0) goto L_0x006a
            r0 = r7
            if (r0 != 0) goto L_0x0065
            r0 = r4
            r1 = 0
            r0.setCloseIconPressed(r1)
            goto L_0x0065
        L_0x0041:
            r0 = r4
            boolean r0 = r0.f10375o
            if (r0 == 0) goto L_0x0052
            r0 = r4
            boolean r0 = r0.m10207t()
            r0 = 1
            r6 = r0
            goto L_0x0054
        L_0x0052:
            r0 = 0
            r6 = r0
        L_0x0054:
            r0 = r4
            r1 = 0
            r0.setCloseIconPressed(r1)
            goto L_0x006c
        L_0x005c:
            r0 = r7
            if (r0 == 0) goto L_0x006a
            r0 = r4
            r1 = 1
            r0.setCloseIconPressed(r1)
        L_0x0065:
            r0 = 1
            r6 = r0
            goto L_0x006c
        L_0x006a:
            r0 = 0
            r6 = r0
        L_0x006c:
            r0 = r6
            if (r0 != 0) goto L_0x0078
            r0 = r4
            r1 = r5
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L_0x007b
        L_0x0078:
            r0 = 1
            r8 = r0
        L_0x007b:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: r */
    public boolean m10209r() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null && chipDrawable.m10094p1();
    }

    /* renamed from: s */
    public boolean m10208s() {
        ChipDrawable chipDrawable = this.f10369i;
        return chipDrawable != null && chipDrawable.m10088r1();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f10371k) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f10371k) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10067y1(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10064z1(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable == null) {
            this.f10374n = z;
        } else if (chipDrawable.m10094p1()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z && (onCheckedChangeListener = this.f10373m) != null) {
                onCheckedChangeListener.onCheckedChanged(this, z);
            }
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10197A1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10194B1(i);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10191C1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10188D1(i);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10185E1(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10182F1(z);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10179G1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10176H1(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10173I1(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10170J1(i);
        }
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.f10369i;
        if (chipDrawable2 != chipDrawable) {
            m10204w(chipDrawable2);
            this.f10369i = chipDrawable;
            chipDrawable.m10193B2(false);
            m10218i(this.f10369i);
            m10216k(this.f10380t);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10167K1(f);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10164L1(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10161M1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10158N1(i);
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10155O1(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10152P1(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10149Q1(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10146R1(i);
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10143S1(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10140T1(z);
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10138U1(f);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10136V1(i);
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10134W1(f);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10132X1(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10130Y1(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10128Z1(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10126a2(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10124b2(i);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10120d2(drawable);
        }
        m10203x();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10118e2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10116f2(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10114g2(i);
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10112h2(i);
        }
        m10203x();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10110i2(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10108j2(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10106k2(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10104l2(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10099n2(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10096o2(i);
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10093p2(z);
        }
        m10203x();
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m9329V(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f10369i != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                ChipDrawable chipDrawable = this.f10369i;
                if (chipDrawable != null) {
                    chipDrawable.m10087r2(truncateAt);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.f10378r = z;
        m10216k(this.f10380t);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10084s2(motionSpec);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10081t2(i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10078u2(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10075v2(i);
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10072w2(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10069x2(i);
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.f10369i != null && Build.VERSION.SDK_INT >= 17) {
            super.setLayoutDirection(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@AbstractC0040Px int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10066y2(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f10373m = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f10372l = onClickListener;
        m10203x();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10063z2(colorStateList);
        }
        if (!this.f10369i.m10100n1()) {
            m10201z();
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10196A2(i);
            if (!this.f10369i.m10100n1()) {
                m10201z();
            }
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10369i.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10190C2(motionSpec);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10187D2(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.f10369i != null) {
            CharSequence charSequence2 = charSequence;
            if (charSequence == null) {
                charSequence2 = "";
            }
            super.setText(this.f10369i.m10160M2() ? null : charSequence2, bufferType);
            ChipDrawable chipDrawable = this.f10369i;
            if (chipDrawable != null) {
                chipDrawable.m10184E2(charSequence2);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10178G2(i);
        }
        m10227B();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10178G2(i);
        }
        m10227B();
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10181F2(textAppearance);
        }
        m10227B();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10175H2(f);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10172I2(i);
        }
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10169J2(f);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.f10369i;
        if (chipDrawable != null) {
            chipDrawable.m10166K2(i);
        }
    }

    @CallSuper
    /* renamed from: t */
    public boolean m10207t() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f10372l;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        this.f10381u.m18783J(1, 1);
        return z;
    }

    /* renamed from: v */
    public boolean m10205v() {
        return this.f10378r;
    }
}
