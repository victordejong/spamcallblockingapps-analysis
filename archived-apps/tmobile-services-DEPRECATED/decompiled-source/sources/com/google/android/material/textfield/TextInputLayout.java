package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: N0 */
    private static final int f11509N0 = C1027R.style.Widget_Design_TextInputLayout;
    @NonNull

    /* renamed from: A */
    private final TextView f11510A;
    @ColorInt

    /* renamed from: A0 */
    private int f11511A0;
    @Nullable

    /* renamed from: B */
    private CharSequence f11512B;

    /* renamed from: B0 */
    private ColorStateList f11513B0;
    @NonNull

    /* renamed from: C */
    private final TextView f11514C;
    @ColorInt

    /* renamed from: C0 */
    private int f11515C0;

    /* renamed from: D */
    private boolean f11516D;
    @ColorInt

    /* renamed from: D0 */
    private int f11517D0;

    /* renamed from: E */
    private CharSequence f11518E;
    @ColorInt

    /* renamed from: E0 */
    private int f11519E0;

    /* renamed from: F */
    private boolean f11520F;
    @ColorInt

    /* renamed from: F0 */
    private int f11521F0;
    @Nullable

    /* renamed from: G */
    private MaterialShapeDrawable f11522G;
    @ColorInt

    /* renamed from: G0 */
    private int f11523G0;
    @Nullable

    /* renamed from: H */
    private MaterialShapeDrawable f11524H;

    /* renamed from: H0 */
    private boolean f11525H0;
    @NonNull

    /* renamed from: I */
    private ShapeAppearanceModel f11526I;

    /* renamed from: I0 */
    final CollapsingTextHelper f11527I0;

    /* renamed from: J */
    private final int f11528J;

    /* renamed from: J0 */
    private boolean f11529J0;

    /* renamed from: K */
    private int f11530K;

    /* renamed from: K0 */
    private ValueAnimator f11531K0;

    /* renamed from: L */
    private final int f11532L;

    /* renamed from: L0 */
    private boolean f11533L0;

    /* renamed from: M */
    private int f11534M;

    /* renamed from: M0 */
    private boolean f11535M0;

    /* renamed from: N */
    private int f11536N;

    /* renamed from: O */
    private int f11537O;
    @ColorInt

    /* renamed from: P */
    private int f11538P;
    @ColorInt

    /* renamed from: Q */
    private int f11539Q;

    /* renamed from: R */
    private final Rect f11540R;

    /* renamed from: S */
    private final Rect f11541S;

    /* renamed from: T */
    private final RectF f11542T;

    /* renamed from: U */
    private Typeface f11543U;
    @NonNull

    /* renamed from: V */
    private final CheckableImageButton f11544V;

    /* renamed from: W */
    private ColorStateList f11545W;

    /* renamed from: a0 */
    private boolean f11546a0;

    /* renamed from: b0 */
    private PorterDuff.Mode f11547b0;

    /* renamed from: c0 */
    private boolean f11548c0;
    @Nullable

    /* renamed from: d0 */
    private Drawable f11549d0;

    /* renamed from: e0 */
    private int f11550e0;
    @NonNull

    /* renamed from: f */
    private final FrameLayout f11551f;

    /* renamed from: f0 */
    private View.OnLongClickListener f11552f0;
    @NonNull

    /* renamed from: g */
    private final LinearLayout f11553g;

    /* renamed from: g0 */
    private final LinkedHashSet<OnEditTextAttachedListener> f11554g0;
    @NonNull

    /* renamed from: h */
    private final LinearLayout f11555h;

    /* renamed from: h0 */
    private int f11556h0;
    @NonNull

    /* renamed from: i */
    private final FrameLayout f11557i;

    /* renamed from: i0 */
    private final SparseArray<EndIconDelegate> f11558i0;

    /* renamed from: j */
    EditText f11559j;
    @NonNull

    /* renamed from: j0 */
    private final CheckableImageButton f11560j0;

    /* renamed from: k */
    private CharSequence f11561k;

    /* renamed from: k0 */
    private final LinkedHashSet<OnEndIconChangedListener> f11562k0;

    /* renamed from: l */
    private final IndicatorViewController f11563l;

    /* renamed from: l0 */
    private ColorStateList f11564l0;

    /* renamed from: m */
    boolean f11565m;

    /* renamed from: m0 */
    private boolean f11566m0;

    /* renamed from: n */
    private int f11567n;

    /* renamed from: n0 */
    private PorterDuff.Mode f11568n0;

    /* renamed from: o */
    private boolean f11569o;

    /* renamed from: o0 */
    private boolean f11570o0;
    @Nullable

    /* renamed from: p */
    private TextView f11571p;
    @Nullable

    /* renamed from: p0 */
    private Drawable f11572p0;

    /* renamed from: q */
    private int f11573q;

    /* renamed from: q0 */
    private int f11574q0;

    /* renamed from: r */
    private int f11575r;

    /* renamed from: r0 */
    private Drawable f11576r0;

    /* renamed from: s */
    private CharSequence f11577s;

    /* renamed from: s0 */
    private View.OnLongClickListener f11578s0;

    /* renamed from: t */
    private boolean f11579t;

    /* renamed from: t0 */
    private View.OnLongClickListener f11580t0;

    /* renamed from: u */
    private TextView f11581u;
    @NonNull

    /* renamed from: u0 */
    private final CheckableImageButton f11582u0;
    @Nullable

    /* renamed from: v */
    private ColorStateList f11583v;

    /* renamed from: v0 */
    private ColorStateList f11584v0;

    /* renamed from: w */
    private int f11585w;

    /* renamed from: w0 */
    private ColorStateList f11586w0;
    @Nullable

    /* renamed from: x */
    private ColorStateList f11587x;

    /* renamed from: x0 */
    private ColorStateList f11588x0;
    @Nullable

    /* renamed from: y */
    private ColorStateList f11589y;
    @ColorInt

    /* renamed from: y0 */
    private int f11590y0;
    @Nullable

    /* renamed from: z */
    private CharSequence f11591z;
    @ColorInt

    /* renamed from: z0 */
    private int f11592z0;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$AccessibilityDelegate.class */
    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a */
        private final TextInputLayout f11597a;

        public AccessibilityDelegate(@NonNull TextInputLayout textInputLayout) {
            this.f11597a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f11597a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f11597a.getHint();
            CharSequence helperText = this.f11597a.getHelperText();
            CharSequence error = this.f11597a.getError();
            int counterMaxLength = this.f11597a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f11597a.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean isEmpty = TextUtils.isEmpty(hint);
            boolean z2 = !TextUtils.isEmpty(helperText);
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = isEmpty ^ true ? hint.toString() : "";
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence);
            sb.append(((z3 || z2) && !TextUtils.isEmpty(charSequence)) ? ", " : "");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append((Object) (z3 ? error : z2 ? helperText : ""));
            String sb4 = sb3.toString();
            if (z) {
                accessibilityNodeInfoCompat.m19057D0(text);
            } else if (!TextUtils.isEmpty(sb4)) {
                accessibilityNodeInfoCompat.m19057D0(sb4);
            }
            if (!TextUtils.isEmpty(sb4)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.m19004n0(sb4);
                } else {
                    CharSequence charSequence2 = sb4;
                    if (z) {
                        charSequence2 = ((Object) text) + ", " + sb4;
                    }
                    accessibilityNodeInfoCompat.m19057D0(charSequence2);
                }
                accessibilityNodeInfoCompat.m19063A0(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.m19000p0(counterMaxLength);
            if (z4) {
                if (!z3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.m19012j0(error);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$BoxBackgroundMode.class */
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$EndIconMode.class */
    public @interface EndIconMode {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener.class */
    public interface OnEditTextAttachedListener {
        /* renamed from: a */
        void mo8715a(@NonNull TextInputLayout textInputLayout);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener.class */
    public interface OnEndIconChangedListener {
        /* renamed from: a */
        void mo8714a(@NonNull TextInputLayout textInputLayout, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.textfield.TextInputLayout.SavedState.1
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        @Nullable

        /* renamed from: h */
        CharSequence f11598h;

        /* renamed from: i */
        boolean f11599i;

        SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11598h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f11599i = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f11598h) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f11598h, parcel, i);
            parcel.writeInt(this.f11599i ? 1 : 0);
        }
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.textInputStyle);
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f11509N0), attributeSet, i);
        this.f11563l = new IndicatorViewController(this);
        this.f11540R = new Rect();
        this.f11541S = new Rect();
        this.f11542T = new RectF();
        this.f11554g0 = new LinkedHashSet<>();
        this.f11556h0 = 0;
        this.f11558i0 = new SparseArray<>();
        this.f11562k0 = new LinkedHashSet<>();
        this.f11527I0 = new CollapsingTextHelper(this);
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f11551f = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(this.f11551f);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f11553g = linearLayout;
        linearLayout.setOrientation(0);
        this.f11553g.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        this.f11551f.addView(this.f11553g);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f11555h = linearLayout2;
        linearLayout2.setOrientation(0);
        this.f11555h.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        this.f11551f.addView(this.f11555h);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f11557i = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.f11527I0.m9574j0(AnimationUtils.f9923a);
        this.f11527I0.m9580g0(AnimationUtils.f9923a);
        this.f11527I0.m9602R(8388659);
        TintTypedArray i2 = ThemeEnforcement.m9444i(context2, attributeSet, C1027R.styleable.TextInputLayout, i, f11509N0, C1027R.styleable.TextInputLayout_counterTextAppearance, C1027R.styleable.TextInputLayout_counterOverflowTextAppearance, C1027R.styleable.TextInputLayout_errorTextAppearance, C1027R.styleable.TextInputLayout_helperTextTextAppearance, C1027R.styleable.TextInputLayout_hintTextAppearance);
        this.f11516D = i2.m21265a(C1027R.styleable.TextInputLayout_hintEnabled, true);
        setHint(i2.m21250p(C1027R.styleable.TextInputLayout_android_hint));
        this.f11529J0 = i2.m21265a(C1027R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f11526I = ShapeAppearanceModel.m9273e(context2, attributeSet, i, f11509N0).m9232m();
        this.f11528J = context2.getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f11532L = i2.m21261e(C1027R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f11536N = i2.m21260f(C1027R.styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f11537O = i2.m21260f(C1027R.styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f11534M = this.f11536N;
        float d = i2.m21262d(C1027R.styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float d2 = i2.m21262d(C1027R.styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float d3 = i2.m21262d(C1027R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float d4 = i2.m21262d(C1027R.styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        ShapeAppearanceModel.Builder v = this.f11526I.m9256v();
        if (d >= 0.0f) {
            v.m9250D(d);
        }
        if (d2 >= 0.0f) {
            v.m9246H(d2);
        }
        if (d3 >= 0.0f) {
            v.m9220y(d3);
        }
        if (d4 >= 0.0f) {
            v.m9224u(d4);
        }
        this.f11526I = v.m9232m();
        ColorStateList b = MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_boxBackgroundColor);
        if (b != null) {
            int defaultColor = b.getDefaultColor();
            this.f11515C0 = defaultColor;
            this.f11539Q = defaultColor;
            if (b.isStateful()) {
                this.f11517D0 = b.getColorForState(new int[]{-16842910}, -1);
                this.f11519E0 = b.getColorForState(new int[]{16842908, 16842910}, -1);
                this.f11521F0 = b.getColorForState(new int[]{16843623, 16842910}, -1);
            } else {
                this.f11519E0 = this.f11515C0;
                ColorStateList c = AppCompatResources.m22070c(context2, C1027R.C1028color.mtrl_filled_background_color);
                this.f11517D0 = c.getColorForState(new int[]{-16842910}, -1);
                this.f11521F0 = c.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.f11539Q = 0;
            this.f11515C0 = 0;
            this.f11517D0 = 0;
            this.f11519E0 = 0;
            this.f11521F0 = 0;
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList c2 = i2.m21263c(C1027R.styleable.TextInputLayout_android_textColorHint);
            this.f11588x0 = c2;
            this.f11586w0 = c2;
        }
        ColorStateList b2 = MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_boxStrokeColor);
        this.f11511A0 = i2.m21264b(C1027R.styleable.TextInputLayout_boxStrokeColor, 0);
        this.f11590y0 = ContextCompat.m19675d(context2, C1027R.C1028color.mtrl_textinput_default_box_stroke_color);
        this.f11523G0 = ContextCompat.m19675d(context2, C1027R.C1028color.mtrl_textinput_disabled_color);
        this.f11592z0 = ContextCompat.m19675d(context2, C1027R.C1028color.mtrl_textinput_hovered_box_stroke_color);
        if (b2 != null) {
            setBoxStrokeColorStateList(b2);
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_boxStrokeErrorColor));
        }
        if (i2.m21252n(C1027R.styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(i2.m21252n(C1027R.styleable.TextInputLayout_hintTextAppearance, 0));
        }
        int n = i2.m21252n(C1027R.styleable.TextInputLayout_errorTextAppearance, 0);
        CharSequence p = i2.m21250p(C1027R.styleable.TextInputLayout_errorContentDescription);
        boolean a = i2.m21265a(C1027R.styleable.TextInputLayout_errorEnabled, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1027R.layout.design_text_input_end_icon, (ViewGroup) this.f11555h, false);
        this.f11582u0 = checkableImageButton;
        checkableImageButton.setVisibility(8);
        if (i2.m21247s(C1027R.styleable.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(i2.m21259g(C1027R.styleable.TextInputLayout_errorIconDrawable));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_errorIconTint)) {
            setErrorIconTintList(MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_errorIconTint));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_errorIconTintMode)) {
            setErrorIconTintMode(ViewUtils.m9427i(i2.m21255k(C1027R.styleable.TextInputLayout_errorIconTintMode, -1), null));
        }
        this.f11582u0.setContentDescription(getResources().getText(C1027R.string.error_icon_content_description));
        ViewCompat.m19163x0(this.f11582u0, 2);
        this.f11582u0.setClickable(false);
        this.f11582u0.setPressable(false);
        this.f11582u0.setFocusable(false);
        int n2 = i2.m21252n(C1027R.styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean a2 = i2.m21265a(C1027R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence p2 = i2.m21250p(C1027R.styleable.TextInputLayout_helperText);
        int n3 = i2.m21252n(C1027R.styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence p3 = i2.m21250p(C1027R.styleable.TextInputLayout_placeholderText);
        int n4 = i2.m21252n(C1027R.styleable.TextInputLayout_prefixTextAppearance, 0);
        CharSequence p4 = i2.m21250p(C1027R.styleable.TextInputLayout_prefixText);
        int n5 = i2.m21252n(C1027R.styleable.TextInputLayout_suffixTextAppearance, 0);
        CharSequence p5 = i2.m21250p(C1027R.styleable.TextInputLayout_suffixText);
        boolean a3 = i2.m21265a(C1027R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(i2.m21255k(C1027R.styleable.TextInputLayout_counterMaxLength, -1));
        this.f11575r = i2.m21252n(C1027R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.f11573q = i2.m21252n(C1027R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1027R.layout.design_text_input_start_icon, (ViewGroup) this.f11553g, false);
        this.f11544V = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (i2.m21247s(C1027R.styleable.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(i2.m21259g(C1027R.styleable.TextInputLayout_startIconDrawable));
            if (i2.m21247s(C1027R.styleable.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(i2.m21250p(C1027R.styleable.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(i2.m21265a(C1027R.styleable.TextInputLayout_startIconCheckable, true));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_startIconTint)) {
            setStartIconTintList(MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_startIconTint));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_startIconTintMode)) {
            setStartIconTintMode(ViewUtils.m9427i(i2.m21255k(C1027R.styleable.TextInputLayout_startIconTintMode, -1), null));
        }
        setBoxBackgroundMode(i2.m21255k(C1027R.styleable.TextInputLayout_boxBackgroundMode, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1027R.layout.design_text_input_end_icon, (ViewGroup) this.f11557i, false);
        this.f11560j0 = checkableImageButton3;
        this.f11557i.addView(checkableImageButton3);
        this.f11560j0.setVisibility(8);
        this.f11558i0.append(-1, new CustomEndIconDelegate(this));
        this.f11558i0.append(0, new NoEndIconDelegate(this));
        this.f11558i0.append(1, new PasswordToggleEndIconDelegate(this));
        this.f11558i0.append(2, new ClearTextEndIconDelegate(this));
        this.f11558i0.append(3, new DropdownMenuEndIconDelegate(this));
        if (i2.m21247s(C1027R.styleable.TextInputLayout_endIconMode)) {
            setEndIconMode(i2.m21255k(C1027R.styleable.TextInputLayout_endIconMode, 0));
            if (i2.m21247s(C1027R.styleable.TextInputLayout_endIconDrawable)) {
                setEndIconDrawable(i2.m21259g(C1027R.styleable.TextInputLayout_endIconDrawable));
            }
            if (i2.m21247s(C1027R.styleable.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(i2.m21250p(C1027R.styleable.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(i2.m21265a(C1027R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (i2.m21247s(C1027R.styleable.TextInputLayout_passwordToggleEnabled)) {
            setEndIconMode(i2.m21265a(C1027R.styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconDrawable(i2.m21259g(C1027R.styleable.TextInputLayout_passwordToggleDrawable));
            setEndIconContentDescription(i2.m21250p(C1027R.styleable.TextInputLayout_passwordToggleContentDescription));
            if (i2.m21247s(C1027R.styleable.TextInputLayout_passwordToggleTint)) {
                setEndIconTintList(MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_passwordToggleTint));
            }
            if (i2.m21247s(C1027R.styleable.TextInputLayout_passwordToggleTintMode)) {
                setEndIconTintMode(ViewUtils.m9427i(i2.m21255k(C1027R.styleable.TextInputLayout_passwordToggleTintMode, -1), null));
            }
        }
        if (!i2.m21247s(C1027R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (i2.m21247s(C1027R.styleable.TextInputLayout_endIconTint)) {
                setEndIconTintList(MaterialResources.m9393b(context2, i2, C1027R.styleable.TextInputLayout_endIconTint));
            }
            if (i2.m21247s(C1027R.styleable.TextInputLayout_endIconTintMode)) {
                setEndIconTintMode(ViewUtils.m9427i(i2.m21255k(C1027R.styleable.TextInputLayout_endIconTintMode, -1), null));
            }
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2);
        this.f11510A = appCompatTextView;
        appCompatTextView.setId(C1027R.C1030id.textinput_prefix_text);
        this.f11510A.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ViewCompat.m19179p0(this.f11510A, 1);
        this.f11553g.addView(this.f11544V);
        this.f11553g.addView(this.f11510A);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2);
        this.f11514C = appCompatTextView2;
        appCompatTextView2.setId(C1027R.C1030id.textinput_suffix_text);
        this.f11514C.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        ViewCompat.m19179p0(this.f11514C, 1);
        this.f11555h.addView(this.f11514C);
        this.f11555h.addView(this.f11582u0);
        this.f11555h.addView(this.f11557i);
        setHelperTextEnabled(a2);
        setHelperText(p2);
        setHelperTextTextAppearance(n2);
        setErrorEnabled(a);
        setErrorTextAppearance(n);
        setErrorContentDescription(p);
        setCounterTextAppearance(this.f11575r);
        setCounterOverflowTextAppearance(this.f11573q);
        setPlaceholderText(p3);
        setPlaceholderTextAppearance(n3);
        setPrefixText(p4);
        setPrefixTextAppearance(n4);
        setSuffixText(p5);
        setSuffixTextAppearance(n5);
        if (i2.m21247s(C1027R.styleable.TextInputLayout_errorTextColor)) {
            setErrorTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_errorTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_helperTextTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_hintTextColor)) {
            setHintTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_hintTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_counterTextColor)) {
            setCounterTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_counterTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_counterOverflowTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_placeholderTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_prefixTextColor));
        }
        if (i2.m21247s(C1027R.styleable.TextInputLayout_suffixTextColor)) {
            setSuffixTextColor(i2.m21263c(C1027R.styleable.TextInputLayout_suffixTextColor));
        }
        setCounterEnabled(a3);
        setEnabled(i2.m21265a(C1027R.styleable.TextInputLayout_android_enabled, true));
        i2.m21243w();
        ViewCompat.m19163x0(this, 2);
    }

    /* renamed from: A */
    private void m8792A() {
        Iterator<OnEditTextAttachedListener> it = this.f11554g0.iterator();
        while (it.hasNext()) {
            it.next().mo8715a(this);
        }
    }

    /* renamed from: B */
    private void m8791B(int i) {
        Iterator<OnEndIconChangedListener> it = this.f11562k0.iterator();
        while (it.hasNext()) {
            it.next().mo8714a(this, i);
        }
    }

    /* renamed from: C */
    private void m8790C(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable = this.f11524H;
        if (materialShapeDrawable != null) {
            Rect bounds = materialShapeDrawable.getBounds();
            bounds.top = bounds.bottom - this.f11534M;
            this.f11524H.draw(canvas);
        }
    }

    /* renamed from: D */
    private void m8789D(@NonNull Canvas canvas) {
        if (this.f11516D) {
            this.f11527I0.m9575j(canvas);
        }
    }

    /* renamed from: E */
    private void m8788E(boolean z) {
        ValueAnimator valueAnimator = this.f11531K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f11531K0.cancel();
        }
        if (!z || !this.f11529J0) {
            this.f11527I0.m9586d0(0.0f);
        } else {
            m8752h(0.0f);
        }
        if (m8716z() && ((CutoutDrawable) this.f11522G).m8883n0()) {
            m8720x();
        }
        this.f11525H0 = true;
        m8784I();
        m8725u0();
        m8719x0();
    }

    /* renamed from: F */
    private int m8787F(int i, boolean z) {
        int compoundPaddingLeft = i + this.f11559j.getCompoundPaddingLeft();
        int i2 = compoundPaddingLeft;
        if (this.f11591z != null) {
            i2 = compoundPaddingLeft;
            if (!z) {
                i2 = (compoundPaddingLeft - this.f11510A.getMeasuredWidth()) + this.f11510A.getPaddingLeft();
            }
        }
        return i2;
    }

    /* renamed from: G */
    private int m8786G(int i, boolean z) {
        int compoundPaddingRight = i - this.f11559j.getCompoundPaddingRight();
        int i2 = compoundPaddingRight;
        if (this.f11591z != null) {
            i2 = compoundPaddingRight;
            if (z) {
                i2 = compoundPaddingRight + (this.f11510A.getMeasuredWidth() - this.f11510A.getPaddingRight());
            }
        }
        return i2;
    }

    /* renamed from: H */
    private boolean m8785H() {
        return this.f11556h0 != 0;
    }

    /* renamed from: I */
    private void m8784I() {
        TextView textView = this.f11581u;
        if (textView != null && this.f11579t) {
            textView.setText((CharSequence) null);
            this.f11581u.setVisibility(4);
        }
    }

    /* renamed from: K */
    private boolean m8782K() {
        return this.f11582u0.getVisibility() == 0;
    }

    /* renamed from: O */
    private boolean m8778O() {
        boolean z;
        if (this.f11530K == 1) {
            z = true;
            if (Build.VERSION.SDK_INT >= 16) {
                if (this.f11559j.getMinLines() <= 1) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: Q */
    private void m8776Q() {
        m8738o();
        m8772U();
        m8717y0();
        if (this.f11530K != 0) {
            m8739n0();
        }
    }

    /* renamed from: R */
    private void m8775R() {
        if (m8716z()) {
            RectF rectF = this.f11542T;
            this.f11527I0.m9569m(rectF, this.f11559j.getWidth(), this.f11559j.getGravity());
            m8746k(rectF);
            rectF.offset(-getPaddingLeft(), -getPaddingTop());
            ((CutoutDrawable) this.f11522G).m8877t0(rectF);
        }
    }

    /* renamed from: S */
    private static void m8774S(@NonNull ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m8774S((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: T */
    private void m8773T() {
        TextView textView = this.f11581u;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* renamed from: U */
    private void m8772U() {
        if (m8763b0()) {
            ViewCompat.m19177q0(this.f11559j, this.f11522G);
        }
    }

    /* renamed from: V */
    private static void m8771V(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean N = ViewCompat.m19223N(checkableImageButton);
        boolean z = false;
        int i = 1;
        boolean z2 = onLongClickListener != null;
        if (N || z2) {
            z = true;
        }
        checkableImageButton.setFocusable(z);
        checkableImageButton.setClickable(N);
        checkableImageButton.setPressable(N);
        checkableImageButton.setLongClickable(z2);
        if (!z) {
            i = 2;
        }
        ViewCompat.m19163x0(checkableImageButton, i);
    }

    /* renamed from: W */
    private static void m8770W(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        m8771V(checkableImageButton, onLongClickListener);
    }

    /* renamed from: X */
    private static void m8769X(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m8771V(checkableImageButton, onLongClickListener);
    }

    /* renamed from: Z */
    private boolean m8767Z() {
        return (this.f11582u0.getVisibility() == 0 || ((m8785H() && m8783J()) || this.f11512B != null)) && this.f11555h.getMeasuredWidth() > 0;
    }

    /* renamed from: a0 */
    private boolean m8765a0() {
        return !(getStartIconDrawable() == null && this.f11591z == null) && this.f11553g.getMeasuredWidth() > 0;
    }

    /* renamed from: b0 */
    private boolean m8763b0() {
        EditText editText = this.f11559j;
        return (editText == null || this.f11522G == null || editText.getBackground() != null || this.f11530K == 0) ? false : true;
    }

    /* renamed from: c0 */
    private void m8761c0() {
        TextView textView = this.f11581u;
        if (textView != null && this.f11579t) {
            textView.setText(this.f11577s);
            this.f11581u.setVisibility(0);
            this.f11581u.bringToFront();
        }
    }

    /* renamed from: d0 */
    private void m8759d0(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m8744l();
            return;
        }
        Drawable mutate = DrawableCompat.m19495r(getEndIconDrawable()).mutate();
        DrawableCompat.m19499n(mutate, this.f11563l.m8815o());
        this.f11560j0.setImageDrawable(mutate);
    }

    /* renamed from: e0 */
    private void m8757e0(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.f11524H;
        if (materialShapeDrawable != null) {
            int i = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i - this.f11537O, rect.right, i);
        }
    }

    /* renamed from: f0 */
    private void m8755f0() {
        if (this.f11571p != null) {
            EditText editText = this.f11559j;
            m8753g0(editText == null ? 0 : editText.getText().length());
        }
    }

    /* renamed from: g */
    private void m8754g() {
        TextView textView = this.f11581u;
        if (textView != null) {
            this.f11551f.addView(textView);
            this.f11581u.setVisibility(0);
        }
    }

    private EndIconDelegate getEndIconDelegate() {
        EndIconDelegate endIconDelegate = this.f11558i0.get(this.f11556h0);
        if (endIconDelegate == null) {
            endIconDelegate = this.f11558i0.get(0);
        }
        return endIconDelegate;
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f11582u0.getVisibility() == 0) {
            return this.f11582u0;
        }
        if (!m8785H() || !m8783J()) {
            return null;
        }
        return this.f11560j0;
    }

    /* renamed from: h0 */
    private static void m8751h0(@NonNull Context context, @NonNull TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C1027R.string.character_counter_overflowed_content_description : C1027R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: i */
    private void m8750i() {
        MaterialShapeDrawable materialShapeDrawable = this.f11522G;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(this.f11526I);
            if (m8724v()) {
                this.f11522G.m9312g0(this.f11534M, this.f11538P);
            }
            int p = m8736p();
            this.f11539Q = p;
            this.f11522G.m9328W(ColorStateList.valueOf(p));
            if (this.f11556h0 == 3) {
                this.f11559j.getBackground().invalidateSelf();
            }
            m8748j();
            invalidate();
        }
    }

    /* renamed from: i0 */
    private void m8749i0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f11571p;
        if (textView != null) {
            m8768Y(textView, this.f11569o ? this.f11573q : this.f11575r);
            if (!this.f11569o && (colorStateList2 = this.f11587x) != null) {
                this.f11571p.setTextColor(colorStateList2);
            }
            if (this.f11569o && (colorStateList = this.f11589y) != null) {
                this.f11571p.setTextColor(colorStateList);
            }
        }
    }

    /* renamed from: j */
    private void m8748j() {
        if (this.f11524H != null) {
            if (m8722w()) {
                this.f11524H.m9328W(ColorStateList.valueOf(this.f11538P));
            }
            invalidate();
        }
    }

    /* renamed from: j0 */
    private boolean m8747j0() {
        if (this.f11559j == null) {
            return false;
        }
        boolean z = true;
        if (m8765a0()) {
            int measuredWidth = this.f11553g.getMeasuredWidth() - this.f11559j.getPaddingLeft();
            if (this.f11549d0 == null || this.f11550e0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f11549d0 = colorDrawable;
                this.f11550e0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] a = TextViewCompat.m18834a(this.f11559j);
            Drawable drawable = a[0];
            Drawable drawable2 = this.f11549d0;
            if (drawable != drawable2) {
                TextViewCompat.m18822m(this.f11559j, drawable2, a[1], a[2], a[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f11549d0 != null) {
                Drawable[] a2 = TextViewCompat.m18834a(this.f11559j);
                TextViewCompat.m18822m(this.f11559j, null, a2[1], a2[2], a2[3]);
                this.f11549d0 = null;
                z = true;
            }
            z = false;
        }
        if (m8767Z()) {
            int measuredWidth2 = this.f11514C.getMeasuredWidth() - this.f11559j.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            int i = measuredWidth2;
            if (endIconToUpdateDummyDrawable != null) {
                i = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.m19294b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] a3 = TextViewCompat.m18834a(this.f11559j);
            Drawable drawable3 = this.f11572p0;
            if (drawable3 == null || this.f11574q0 == i) {
                if (this.f11572p0 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f11572p0 = colorDrawable2;
                    this.f11574q0 = i;
                    colorDrawable2.setBounds(0, 0, i, 1);
                }
                Drawable drawable4 = a3[2];
                Drawable drawable5 = this.f11572p0;
                if (drawable4 != drawable5) {
                    this.f11576r0 = a3[2];
                    TextViewCompat.m18822m(this.f11559j, a3[0], a3[1], drawable5, a3[3]);
                    z = true;
                }
            } else {
                this.f11574q0 = i;
                drawable3.setBounds(0, 0, i, 1);
                TextViewCompat.m18822m(this.f11559j, a3[0], a3[1], this.f11572p0, a3[3]);
                z = true;
            }
        } else {
            z = z;
            if (this.f11572p0 != null) {
                Drawable[] a4 = TextViewCompat.m18834a(this.f11559j);
                if (a4[2] == this.f11572p0) {
                    TextViewCompat.m18822m(this.f11559j, a4[0], a4[1], this.f11576r0, a4[3]);
                }
                this.f11572p0 = null;
            }
            return z;
        }
        return z;
    }

    /* renamed from: k */
    private void m8746k(@NonNull RectF rectF) {
        float f = rectF.left;
        int i = this.f11528J;
        rectF.left = f - i;
        rectF.top -= i;
        rectF.right += i;
        rectF.bottom += i;
    }

    /* renamed from: l */
    private void m8744l() {
        m8742m(this.f11560j0, this.f11566m0, this.f11564l0, this.f11570o0, this.f11568n0);
    }

    /* renamed from: l0 */
    private boolean m8743l0() {
        int max;
        if (this.f11559j == null || this.f11559j.getMeasuredHeight() >= (max = Math.max(this.f11555h.getMeasuredHeight(), this.f11553g.getMeasuredHeight()))) {
            return false;
        }
        this.f11559j.setMinimumHeight(max);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r7 != false) goto L_0x001c;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m8742m(@androidx.annotation.NonNull com.google.android.material.internal.CheckableImageButton r4, boolean r5, android.content.res.ColorStateList r6, boolean r7, android.graphics.PorterDuff.Mode r8) {
        /*
            r3 = this;
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r5
            if (r0 != 0) goto L_0x001c
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
        L_0x001c:
            r0 = r9
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.m19495r(r0)
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0030
            r0 = r9
            r1 = r6
            androidx.core.graphics.drawable.DrawableCompat.m19498o(r0, r1)
        L_0x0030:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r1 = r8
            androidx.core.graphics.drawable.DrawableCompat.m19497p(r0, r1)
            r0 = r9
            r10 = r0
        L_0x0044:
            r0 = r4
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            r1 = r10
            if (r0 == r1) goto L_0x0053
            r0 = r4
            r1 = r10
            r0.setImageDrawable(r1)
        L_0x0053:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m8742m(com.google.android.material.internal.CheckableImageButton, boolean, android.content.res.ColorStateList, boolean, android.graphics.PorterDuff$Mode):void");
    }

    /* renamed from: m0 */
    private void m8741m0(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() != null && colorStateList != null && colorStateList.isStateful()) {
            int colorForState = colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
            Drawable mutate = DrawableCompat.m19495r(drawable).mutate();
            DrawableCompat.m19498o(mutate, ColorStateList.valueOf(colorForState));
            checkableImageButton.setImageDrawable(mutate);
        }
    }

    /* renamed from: n */
    private void m8740n() {
        m8742m(this.f11544V, this.f11546a0, this.f11545W, this.f11548c0, this.f11547b0);
    }

    /* renamed from: n0 */
    private void m8739n0() {
        if (this.f11530K != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f11551f.getLayoutParams();
            int u = m8726u();
            if (u != layoutParams.topMargin) {
                layoutParams.topMargin = u;
                this.f11551f.requestLayout();
            }
        }
    }

    /* renamed from: o */
    private void m8738o() {
        int i = this.f11530K;
        if (i == 0) {
            this.f11522G = null;
            this.f11524H = null;
        } else if (i == 1) {
            this.f11522G = new MaterialShapeDrawable(this.f11526I);
            this.f11524H = new MaterialShapeDrawable();
        } else if (i == 2) {
            if (!this.f11516D || (this.f11522G instanceof CutoutDrawable)) {
                this.f11522G = new MaterialShapeDrawable(this.f11526I);
            } else {
                this.f11522G = new CutoutDrawable(this.f11526I);
            }
            this.f11524H = null;
        } else {
            throw new IllegalArgumentException(this.f11530K + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
    }

    /* renamed from: p */
    private int m8736p() {
        int i = this.f11539Q;
        if (this.f11530K == 1) {
            i = MaterialColors.m10012e(MaterialColors.m10013d(this, C1027R.attr.colorSurface, 0), this.f11539Q);
        }
        return i;
    }

    /* renamed from: p0 */
    private void m8735p0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f11559j;
        boolean z3 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f11559j;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean k = this.f11563l.m8819k();
        ColorStateList colorStateList2 = this.f11586w0;
        if (colorStateList2 != null) {
            this.f11527I0.m9603Q(colorStateList2);
            this.f11527I0.m9595Y(this.f11586w0);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f11586w0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f11523G0) : this.f11523G0;
            this.f11527I0.m9603Q(ColorStateList.valueOf(colorForState));
            this.f11527I0.m9595Y(ColorStateList.valueOf(colorForState));
        } else if (k) {
            this.f11527I0.m9603Q(this.f11563l.m8814p());
        } else if (this.f11569o && (textView = this.f11571p) != null) {
            this.f11527I0.m9603Q(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f11588x0) != null) {
            this.f11527I0.m9603Q(colorStateList);
        }
        if (z3 || (isEnabled() && (z4 || k))) {
            if (z2 || this.f11525H0) {
                m8718y(z);
            }
        } else if (z2 || !this.f11525H0) {
            m8788E(z);
        }
    }

    @NonNull
    /* renamed from: q */
    private Rect m8734q(@NonNull Rect rect) {
        if (this.f11559j != null) {
            Rect rect2 = this.f11541S;
            boolean z = ViewCompat.m19244A(this) == 1;
            rect2.bottom = rect.bottom;
            int i = this.f11530K;
            if (i == 1) {
                rect2.left = m8787F(rect.left, z);
                rect2.top = rect.top + this.f11532L;
                rect2.right = m8786G(rect.right, z);
                return rect2;
            } else if (i != 2) {
                rect2.left = m8787F(rect.left, z);
                rect2.top = getPaddingTop();
                rect2.right = m8786G(rect.right, z);
                return rect2;
            } else {
                rect2.left = rect.left + this.f11559j.getPaddingLeft();
                rect2.top = rect.top - m8726u();
                rect2.right = rect.right - this.f11559j.getPaddingRight();
                return rect2;
            }
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: q0 */
    private void m8733q0() {
        EditText editText;
        if (this.f11581u != null && (editText = this.f11559j) != null) {
            this.f11581u.setGravity(editText.getGravity());
            this.f11581u.setPadding(this.f11559j.getCompoundPaddingLeft(), this.f11559j.getCompoundPaddingTop(), this.f11559j.getCompoundPaddingRight(), this.f11559j.getCompoundPaddingBottom());
        }
    }

    /* renamed from: r */
    private int m8732r(@NonNull Rect rect, @NonNull Rect rect2, float f) {
        return m8778O() ? (int) (rect2.top + f) : rect.bottom - this.f11559j.getCompoundPaddingBottom();
    }

    /* renamed from: r0 */
    private void m8731r0() {
        EditText editText = this.f11559j;
        m8729s0(editText == null ? 0 : editText.getText().length());
    }

    /* renamed from: s */
    private int m8730s(@NonNull Rect rect, float f) {
        return m8778O() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f11559j.getCompoundPaddingTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s0 */
    public void m8729s0(int i) {
        if (i != 0 || this.f11525H0) {
            m8784I();
        } else {
            m8761c0();
        }
    }

    private void setEditText(EditText editText) {
        if (this.f11559j == null) {
            if (this.f11556h0 != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.f11559j = editText;
            m8776Q();
            setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
            this.f11527I0.m9572k0(this.f11559j.getTypeface());
            this.f11527I0.m9592a0(this.f11559j.getTextSize());
            int gravity = this.f11559j.getGravity();
            this.f11527I0.m9602R((gravity & (-113)) | 48);
            this.f11527I0.m9594Z(gravity);
            this.f11559j.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
                @Override // android.text.TextWatcher
                public void afterTextChanged(@NonNull Editable editable) {
                    TextInputLayout textInputLayout = TextInputLayout.this;
                    textInputLayout.m8737o0(!textInputLayout.f11535M0);
                    TextInputLayout textInputLayout2 = TextInputLayout.this;
                    if (textInputLayout2.f11565m) {
                        textInputLayout2.m8753g0(editable.length());
                    }
                    if (TextInputLayout.this.f11579t) {
                        TextInputLayout.this.m8729s0(editable.length());
                    }
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }
            });
            if (this.f11586w0 == null) {
                this.f11586w0 = this.f11559j.getHintTextColors();
            }
            if (this.f11516D) {
                if (TextUtils.isEmpty(this.f11518E)) {
                    CharSequence hint = this.f11559j.getHint();
                    this.f11561k = hint;
                    setHint(hint);
                    this.f11559j.setHint((CharSequence) null);
                }
                this.f11520F = true;
            }
            if (this.f11571p != null) {
                m8753g0(this.f11559j.getText().length());
            }
            m8745k0();
            this.f11563l.m8825e();
            this.f11553g.bringToFront();
            this.f11555h.bringToFront();
            this.f11557i.bringToFront();
            this.f11582u0.bringToFront();
            m8792A();
            m8727t0();
            m8721w0();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            m8735p0(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setErrorIconVisible(boolean z) {
        int i = 0;
        this.f11582u0.setVisibility(z ? 0 : 8);
        FrameLayout frameLayout = this.f11557i;
        if (z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        m8721w0();
        if (!m8785H()) {
            m8747j0();
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f11518E)) {
            this.f11518E = charSequence;
            this.f11527I0.m9576i0(charSequence);
            if (!this.f11525H0) {
                m8775R();
            }
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f11579t != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f11581u = appCompatTextView;
                appCompatTextView.setId(C1027R.C1030id.textinput_placeholder);
                ViewCompat.m19179p0(this.f11581u, 1);
                setPlaceholderTextAppearance(this.f11585w);
                setPlaceholderTextColor(this.f11583v);
                m8754g();
            } else {
                m8773T();
                this.f11581u = null;
            }
            this.f11579t = z;
        }
    }

    @NonNull
    /* renamed from: t */
    private Rect m8728t(@NonNull Rect rect) {
        if (this.f11559j != null) {
            Rect rect2 = this.f11541S;
            float x = this.f11527I0.m9558x();
            rect2.left = rect.left + this.f11559j.getCompoundPaddingLeft();
            rect2.top = m8730s(rect, x);
            rect2.right = rect.right - this.f11559j.getCompoundPaddingRight();
            rect2.bottom = m8732r(rect, rect2, x);
            return rect2;
        }
        throw new IllegalStateException();
    }

    /* renamed from: t0 */
    private void m8727t0() {
        if (this.f11559j != null) {
            ViewCompat.m19241B0(this.f11510A, m8777P() ? 0 : ViewCompat.m19232G(this.f11559j), this.f11559j.getCompoundPaddingTop(), 0, this.f11559j.getCompoundPaddingBottom());
        }
    }

    /* renamed from: u */
    private int m8726u() {
        float p;
        if (!this.f11516D) {
            return 0;
        }
        int i = this.f11530K;
        if (i == 0 || i == 1) {
            p = this.f11527I0.m9566p();
        } else if (i != 2) {
            return 0;
        } else {
            p = this.f11527I0.m9566p() / 2.0f;
        }
        return (int) p;
    }

    /* renamed from: u0 */
    private void m8725u0() {
        this.f11510A.setVisibility((this.f11591z == null || m8780M()) ? 8 : 0);
        m8747j0();
    }

    /* renamed from: v */
    private boolean m8724v() {
        return this.f11530K == 2 && m8722w();
    }

    /* renamed from: v0 */
    private void m8723v0(boolean z, boolean z2) {
        int defaultColor = this.f11513B0.getDefaultColor();
        int colorForState = this.f11513B0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f11513B0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z) {
            this.f11538P = colorForState2;
        } else if (z2) {
            this.f11538P = colorForState;
        } else {
            this.f11538P = defaultColor;
        }
    }

    /* renamed from: w */
    private boolean m8722w() {
        return this.f11534M > -1 && this.f11538P != 0;
    }

    /* renamed from: w0 */
    private void m8721w0() {
        if (this.f11559j != null) {
            ViewCompat.m19241B0(this.f11514C, 0, this.f11559j.getPaddingTop(), (m8783J() || m8782K()) ? 0 : ViewCompat.m19234F(this.f11559j), this.f11559j.getPaddingBottom());
        }
    }

    /* renamed from: x */
    private void m8720x() {
        if (m8716z()) {
            ((CutoutDrawable) this.f11522G).m8880q0();
        }
    }

    /* renamed from: x0 */
    private void m8719x0() {
        int visibility = this.f11514C.getVisibility();
        int i = 0;
        boolean z = this.f11512B != null && !m8780M();
        TextView textView = this.f11514C;
        if (!z) {
            i = 8;
        }
        textView.setVisibility(i);
        if (visibility != this.f11514C.getVisibility()) {
            getEndIconDelegate().mo8845c(z);
        }
        m8747j0();
    }

    /* renamed from: y */
    private void m8718y(boolean z) {
        ValueAnimator valueAnimator = this.f11531K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f11531K0.cancel();
        }
        if (!z || !this.f11529J0) {
            this.f11527I0.m9586d0(1.0f);
        } else {
            m8752h(1.0f);
        }
        this.f11525H0 = false;
        if (m8716z()) {
            m8775R();
        }
        m8731r0();
        m8725u0();
        m8719x0();
    }

    /* renamed from: z */
    private boolean m8716z() {
        return this.f11516D && !TextUtils.isEmpty(this.f11518E) && (this.f11522G instanceof CutoutDrawable);
    }

    /* renamed from: J */
    public boolean m8783J() {
        return this.f11557i.getVisibility() == 0 && this.f11560j0.getVisibility() == 0;
    }

    /* renamed from: L */
    public boolean m8781L() {
        return this.f11563l.m8806x();
    }

    @VisibleForTesting
    /* renamed from: M */
    final boolean m8780M() {
        return this.f11525H0;
    }

    @RestrictTo
    /* renamed from: N */
    public boolean m8779N() {
        return this.f11520F;
    }

    /* renamed from: P */
    public boolean m8777P() {
        return this.f11544V.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8768Y(@androidx.annotation.NonNull android.widget.TextView r5, @androidx.annotation.StyleRes int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.TextViewCompat.m18817r(r0, r1)     // Catch: Exception -> 0x0028
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x0028
            r1 = 23
            if (r0 < r1) goto L_0x0023
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: Exception -> 0x0028
            int r0 = r0.getDefaultColor()     // Catch: Exception -> 0x0028
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L_0x0023
            r0 = r7
            r6 = r0
            goto L_0x002c
        L_0x0023:
            r0 = 0
            r6 = r0
            goto L_0x002c
        L_0x0028:
            r8 = move-exception
            r0 = r7
            r6 = r0
        L_0x002c:
            r0 = r6
            if (r0 == 0) goto L_0x0045
            r0 = r5
            int r1 = com.google.android.material.C1027R.style.TextAppearance_AppCompat_Caption
            androidx.core.widget.TextViewCompat.m18817r(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.C1027R.C1028color.design_error
            int r1 = androidx.core.content.ContextCompat.m19675d(r1, r2)
            r0.setTextColor(r1)
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m8768Y(android.widget.TextView, int):void");
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f11551f.addView(view, layoutParams2);
            this.f11551f.setLayoutParams(layoutParams);
            m8739n0();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i) {
        EditText editText;
        if (this.f11561k == null || (editText = this.f11559j) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f11520F;
        this.f11520F = false;
        CharSequence hint = editText.getHint();
        this.f11559j.setHint(this.f11561k);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f11559j.setHint(hint);
            this.f11520F = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.f11535M0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f11535M0 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        m8789D(canvas);
        m8790C(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (!this.f11533L0) {
            boolean z = true;
            this.f11533L0 = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            CollapsingTextHelper collapsingTextHelper = this.f11527I0;
            boolean h0 = collapsingTextHelper != null ? collapsingTextHelper.m9578h0(drawableState) | false : false;
            if (this.f11559j != null) {
                if (!ViewCompat.m19218S(this) || !isEnabled()) {
                    z = false;
                }
                m8737o0(z);
            }
            m8745k0();
            m8717y0();
            if (h0) {
                invalidate();
            }
            this.f11533L0 = false;
        }
    }

    /* renamed from: e */
    public void m8758e(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.f11554g0.add(onEditTextAttachedListener);
        if (this.f11559j != null) {
            onEditTextAttachedListener.mo8715a(this);
        }
    }

    /* renamed from: f */
    public void m8756f(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.f11562k0.add(onEndIconChangedListener);
    }

    /* renamed from: g0 */
    void m8753g0(int i) {
        boolean z = this.f11569o;
        int i2 = this.f11567n;
        if (i2 == -1) {
            this.f11571p.setText(String.valueOf(i));
            this.f11571p.setContentDescription(null);
            this.f11569o = false;
        } else {
            this.f11569o = i > i2;
            m8751h0(getContext(), this.f11571p, i, this.f11567n, this.f11569o);
            if (z != this.f11569o) {
                m8749i0();
            }
            this.f11571p.setText(BidiFormatter.m19398c().m19391j(getContext().getString(C1027R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f11567n))));
        }
        if (this.f11559j != null && z != this.f11569o) {
            m8737o0(false);
            m8717y0();
            m8745k0();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f11559j;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m8726u() : super.getBaseline();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public MaterialShapeDrawable getBoxBackground() {
        int i = this.f11530K;
        if (i == 1 || i == 2) {
            return this.f11522G;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f11539Q;
    }

    public int getBoxBackgroundMode() {
        return this.f11530K;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f11522G.m9294s();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f11522G.m9293t();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f11522G.m9344G();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f11522G.m9345F();
    }

    public int getBoxStrokeColor() {
        return this.f11511A0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f11513B0;
    }

    public int getBoxStrokeWidth() {
        return this.f11536N;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f11537O;
    }

    public int getCounterMaxLength() {
        return this.f11567n;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (!this.f11565m || !this.f11569o || (textView = this.f11571p) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f11587x;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f11587x;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f11586w0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f11559j;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f11560j0.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f11560j0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f11556h0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.f11560j0;
    }

    @Nullable
    public CharSequence getError() {
        return this.f11563l.m8807w() ? this.f11563l.m8816n() : null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f11563l.m8817m();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f11563l.m8815o();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f11582u0.getDrawable();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.f11563l.m8815o();
    }

    @Nullable
    public CharSequence getHelperText() {
        return this.f11563l.m8806x() ? this.f11563l.m8813q() : null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f11563l.m8812r();
    }

    @Nullable
    public CharSequence getHint() {
        return this.f11516D ? this.f11518E : null;
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.f11527I0.m9566p();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.f11527I0.m9562t();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f11588x0;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f11560j0.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f11560j0.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        return this.f11579t ? this.f11577s : null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f11585w;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f11583v;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f11591z;
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f11510A.getTextColors();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f11510A;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f11544V.getContentDescription();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f11544V.getDrawable();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f11512B;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f11514C.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f11514C;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f11543U;
    }

    @VisibleForTesting
    /* renamed from: h */
    void m8752h(float f) {
        if (this.f11527I0.m9556z() != f) {
            if (this.f11531K0 == null) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.f11531K0 = valueAnimator;
                valueAnimator.setInterpolator(AnimationUtils.f9924b);
                this.f11531K0.setDuration(167L);
                this.f11531K0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                        TextInputLayout.this.f11527I0.m9586d0(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.f11531K0.setFloatValues(this.f11527I0.m9556z(), f);
            this.f11531K0.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k0 */
    public void m8745k0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f11559j;
        if (editText != null && this.f11530K == 0 && (background = editText.getBackground()) != null) {
            Drawable drawable = background;
            if (DrawableUtils.m21505a(background)) {
                drawable = background.mutate();
            }
            if (this.f11563l.m8819k()) {
                drawable.setColorFilter(AppCompatDrawableManager.m21634e(this.f11563l.m8815o(), PorterDuff.Mode.SRC_IN));
            } else if (!this.f11569o || (textView = this.f11571p) == null) {
                DrawableCompat.m19510c(drawable);
                this.f11559j.refreshDrawableState();
            } else {
                drawable.setColorFilter(AppCompatDrawableManager.m21634e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o0 */
    public void m8737o0(boolean z) {
        m8735p0(z, false);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f11559j;
        if (editText != null) {
            Rect rect = this.f11540R;
            DescendantOffsetUtils.m9554a(this, editText, rect);
            m8757e0(rect);
            if (this.f11516D) {
                this.f11527I0.m9592a0(this.f11559j.getTextSize());
                int gravity = this.f11559j.getGravity();
                this.f11527I0.m9602R((gravity & (-113)) | 48);
                this.f11527I0.m9594Z(gravity);
                this.f11527I0.m9606N(m8734q(rect));
                this.f11527I0.m9598V(m8728t(rect));
                this.f11527I0.m9609K();
                if (m8716z() && !this.f11525H0) {
                    m8775R();
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean l0 = m8743l0();
        boolean j0 = m8747j0();
        if (l0 || j0) {
            this.f11559j.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f11559j.requestLayout();
                }
            });
        }
        m8733q0();
        m8727t0();
        m8721w0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        setError(savedState.f11598h);
        if (savedState.f11599i) {
            this.f11560j0.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f11560j0.performClick();
                    TextInputLayout.this.f11560j0.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f11563l.m8819k()) {
            savedState.f11598h = getError();
        }
        savedState.f11599i = m8785H() && this.f11560j0.isChecked();
        return savedState;
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.f11539Q != i) {
            this.f11539Q = i;
            this.f11515C0 = i;
            this.f11519E0 = i;
            this.f11521F0 = i;
            m8750i();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.m19675d(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f11515C0 = defaultColor;
        this.f11539Q = defaultColor;
        this.f11517D0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f11519E0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f11521F0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m8750i();
    }

    public void setBoxBackgroundMode(int i) {
        if (i != this.f11530K) {
            this.f11530K = i;
            if (this.f11559j != null) {
                m8776Q();
            }
        }
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        MaterialShapeDrawable materialShapeDrawable = this.f11522G;
        if (materialShapeDrawable == null || materialShapeDrawable.m9345F() != f || this.f11522G.m9344G() != f2 || this.f11522G.m9293t() != f4 || this.f11522G.m9294s() != f3) {
            ShapeAppearanceModel.Builder v = this.f11526I.m9256v();
            v.m9250D(f);
            v.m9246H(f2);
            v.m9220y(f4);
            v.m9224u(f3);
            this.f11526I = v.m9232m();
            m8750i();
        }
    }

    public void setBoxCornerRadiiResources(@DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.f11511A0 != i) {
            this.f11511A0 = i;
            m8717y0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f11590y0 = colorStateList.getDefaultColor();
            this.f11523G0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f11592z0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f11511A0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f11511A0 != colorStateList.getDefaultColor()) {
            this.f11511A0 = colorStateList.getDefaultColor();
        }
        m8717y0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f11513B0 != colorStateList) {
            this.f11513B0 = colorStateList;
            m8717y0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f11536N = i;
        m8717y0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f11537O = i;
        m8717y0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f11565m != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f11571p = appCompatTextView;
                appCompatTextView.setId(C1027R.C1030id.textinput_counter);
                Typeface typeface = this.f11543U;
                if (typeface != null) {
                    this.f11571p.setTypeface(typeface);
                }
                this.f11571p.setMaxLines(1);
                this.f11563l.m8826d(this.f11571p, 2);
                MarginLayoutParamsCompat.m19291e((ViewGroup.MarginLayoutParams) this.f11571p.getLayoutParams(), getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_textinput_counter_margin_start));
                m8749i0();
                m8755f0();
            } else {
                this.f11563l.m8805y(this.f11571p, 2);
                this.f11571p = null;
            }
            this.f11565m = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f11567n != i) {
            if (i > 0) {
                this.f11567n = i;
            } else {
                this.f11567n = -1;
            }
            if (this.f11565m) {
                m8755f0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f11573q != i) {
            this.f11573q = i;
            m8749i0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f11589y != colorStateList) {
            this.f11589y = colorStateList;
            m8749i0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f11575r != i) {
            this.f11575r = i;
            m8749i0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f11587x != colorStateList) {
            this.f11587x = colorStateList;
            m8749i0();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f11586w0 = colorStateList;
        this.f11588x0 = colorStateList;
        if (this.f11559j != null) {
            m8737o0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m8774S(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f11560j0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f11560j0.setCheckable(z);
    }

    public void setEndIconContentDescription(@StringRes int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f11560j0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        setEndIconDrawable(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f11560j0.setImageDrawable(drawable);
    }

    public void setEndIconMode(int i) {
        int i2 = this.f11556h0;
        this.f11556h0 = i;
        m8791B(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo8846b(this.f11530K)) {
            getEndIconDelegate().mo8798a();
            m8744l();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f11530K + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        m8770W(this.f11560j0, onClickListener, this.f11578s0);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f11578s0 = onLongClickListener;
        m8769X(this.f11560j0, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f11564l0 != colorStateList) {
            this.f11564l0 = colorStateList;
            this.f11566m0 = true;
            m8744l();
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f11568n0 != mode) {
            this.f11568n0 = mode;
            this.f11570o0 = true;
            m8744l();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m8783J() != z) {
            this.f11560j0.setVisibility(z ? 0 : 8);
            m8721w0();
            m8747j0();
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f11563l.m8807w()) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f11563l.m8832L(charSequence);
        } else {
            this.f11563l.m8811s();
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f11563l.m8843A(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.f11563l.m8842B(z);
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        setErrorIconDrawable(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f11582u0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f11563l.m8807w());
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        m8770W(this.f11582u0, onClickListener, this.f11580t0);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f11580t0 = onLongClickListener;
        m8769X(this.f11582u0, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f11584v0 = colorStateList;
        Drawable drawable = this.f11582u0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = DrawableCompat.m19495r(drawable).mutate();
            DrawableCompat.m19498o(drawable2, colorStateList);
        }
        if (this.f11582u0.getDrawable() != drawable2) {
            this.f11582u0.setImageDrawable(drawable2);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        Drawable drawable = this.f11582u0.getDrawable();
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = DrawableCompat.m19495r(drawable).mutate();
            DrawableCompat.m19497p(drawable2, mode);
        }
        if (this.f11582u0.getDrawable() != drawable2) {
            this.f11582u0.setImageDrawable(drawable2);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.f11563l.m8841C(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f11563l.m8840D(colorStateList);
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (!m8781L()) {
                setHelperTextEnabled(true);
            }
            this.f11563l.m8831M(charSequence);
        } else if (m8781L()) {
            setHelperTextEnabled(false);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f11563l.m8837G(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f11563l.m8838F(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.f11563l.m8839E(i);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f11516D) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f11529J0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f11516D) {
            this.f11516D = z;
            if (!z) {
                this.f11520F = false;
                if (!TextUtils.isEmpty(this.f11518E) && TextUtils.isEmpty(this.f11559j.getHint())) {
                    this.f11559j.setHint(this.f11518E);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f11559j.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f11518E)) {
                        setHint(hint);
                    }
                    this.f11559j.setHint((CharSequence) null);
                }
                this.f11520F = true;
            }
            if (this.f11559j != null) {
                m8739n0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.f11527I0.m9605O(i);
        this.f11588x0 = this.f11527I0.m9568n();
        if (this.f11559j != null) {
            m8737o0(false);
            m8739n0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f11588x0 != colorStateList) {
            if (this.f11586w0 == null) {
                this.f11527I0.m9603Q(colorStateList);
            }
            this.f11588x0 = colorStateList;
            if (this.f11559j != null) {
                m8737o0(false);
            }
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f11560j0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f11560j0.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f11556h0 != 1) {
            setEndIconMode(1);
        } else if (!z) {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f11564l0 = colorStateList;
        this.f11566m0 = true;
        m8744l();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f11568n0 = mode;
        this.f11570o0 = true;
        m8744l();
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (!this.f11579t || !TextUtils.isEmpty(charSequence)) {
            if (!this.f11579t) {
                setPlaceholderTextEnabled(true);
            }
            this.f11577s = charSequence;
        } else {
            setPlaceholderTextEnabled(false);
        }
        m8731r0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.f11585w = i;
        TextView textView = this.f11581u;
        if (textView != null) {
            TextViewCompat.m18817r(textView, i);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f11583v != colorStateList) {
            this.f11583v = colorStateList;
            TextView textView = this.f11581u;
            if (textView != null && colorStateList != null) {
                textView.setTextColor(colorStateList);
            }
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f11591z = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f11510A.setText(charSequence);
        m8725u0();
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        TextViewCompat.m18817r(this.f11510A, i);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f11510A.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f11544V.setCheckable(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f11544V.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f11544V.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m8740n();
            return;
        }
        setStartIconVisible(false);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        setStartIconContentDescription((CharSequence) null);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        m8770W(this.f11544V, onClickListener, this.f11552f0);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f11552f0 = onLongClickListener;
        m8769X(this.f11544V, onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f11545W != colorStateList) {
            this.f11545W = colorStateList;
            this.f11546a0 = true;
            m8740n();
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f11547b0 != mode) {
            this.f11547b0 = mode;
            this.f11548c0 = true;
            m8740n();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (m8777P() != z) {
            this.f11544V.setVisibility(z ? 0 : 8);
            m8727t0();
            m8747j0();
        }
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f11512B = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f11514C.setText(charSequence);
        m8719x0();
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        TextViewCompat.m18817r(this.f11514C, i);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f11514C.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.f11559j;
        if (editText != null) {
            ViewCompat.m19183n0(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f11543U) {
            this.f11543U = typeface;
            this.f11527I0.m9572k0(typeface);
            this.f11563l.m8835I(typeface);
            TextView textView = this.f11571p;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public void m8717y0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f11522G != null && this.f11530K != 0) {
            boolean z = isFocused() || ((editText2 = this.f11559j) != null && editText2.hasFocus());
            boolean z2 = isHovered() || ((editText = this.f11559j) != null && editText.isHovered());
            if (!isEnabled()) {
                this.f11538P = this.f11523G0;
            } else if (this.f11563l.m8819k()) {
                if (this.f11513B0 != null) {
                    m8723v0(z, z2);
                } else {
                    this.f11538P = this.f11563l.m8815o();
                }
            } else if (!this.f11569o || (textView = this.f11571p) == null) {
                if (z) {
                    this.f11538P = this.f11511A0;
                } else if (z2) {
                    this.f11538P = this.f11592z0;
                } else {
                    this.f11538P = this.f11590y0;
                }
            } else if (this.f11513B0 != null) {
                m8723v0(z, z2);
            } else {
                this.f11538P = textView.getCurrentTextColor();
            }
            boolean z3 = false;
            if (getErrorIconDrawable() != null) {
                z3 = false;
                if (this.f11563l.m8807w()) {
                    z3 = false;
                    if (this.f11563l.m8819k()) {
                        z3 = true;
                    }
                }
            }
            setErrorIconVisible(z3);
            m8741m0(this.f11582u0, this.f11584v0);
            m8741m0(this.f11544V, this.f11545W);
            m8741m0(this.f11560j0, this.f11564l0);
            if (getEndIconDelegate().mo8844d()) {
                m8759d0(this.f11563l.m8819k());
            }
            if (!z || !isEnabled()) {
                this.f11534M = this.f11536N;
            } else {
                this.f11534M = this.f11537O;
            }
            if (this.f11530K == 1) {
                if (!isEnabled()) {
                    this.f11539Q = this.f11517D0;
                } else if (z2 && !z) {
                    this.f11539Q = this.f11521F0;
                } else if (z) {
                    this.f11539Q = this.f11519E0;
                } else {
                    this.f11539Q = this.f11515C0;
                }
            }
            m8750i();
        }
    }
}
