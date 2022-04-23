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
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0437ah;
import androidx.appcompat.widget.C0484bm;
import androidx.appcompat.widget.C0519q;
import androidx.core.content.C0646b;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.core.widget.C0786k;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3027d;
import com.google.android.material.internal.C3028e;
import com.google.android.material.internal.C3029f;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.C3053s;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.p060a.C2925a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout.class */
public class TextInputLayout extends LinearLayout {

    /* renamed from: A */
    private int f18633A;

    /* renamed from: B */
    private int f18634B;

    /* renamed from: C */
    private Drawable f18635C;

    /* renamed from: D */
    private final Rect f18636D;

    /* renamed from: E */
    private final RectF f18637E;

    /* renamed from: F */
    private Typeface f18638F;

    /* renamed from: G */
    private boolean f18639G;

    /* renamed from: H */
    private Drawable f18640H;

    /* renamed from: I */
    private CharSequence f18641I;

    /* renamed from: J */
    private CheckableImageButton f18642J;

    /* renamed from: K */
    private boolean f18643K;

    /* renamed from: L */
    private Drawable f18644L;

    /* renamed from: M */
    private Drawable f18645M;

    /* renamed from: N */
    private ColorStateList f18646N;

    /* renamed from: O */
    private boolean f18647O;

    /* renamed from: P */
    private PorterDuff.Mode f18648P;

    /* renamed from: Q */
    private boolean f18649Q;

    /* renamed from: R */
    private ColorStateList f18650R;

    /* renamed from: S */
    private ColorStateList f18651S;

    /* renamed from: T */
    private final int f18652T;

    /* renamed from: U */
    private final int f18653U;

    /* renamed from: V */
    private int f18654V;

    /* renamed from: W */
    private final int f18655W;

    /* renamed from: a */
    EditText f18656a;

    /* renamed from: aa */
    private boolean f18657aa;

    /* renamed from: ab */
    private boolean f18658ab;

    /* renamed from: ac */
    private ValueAnimator f18659ac;

    /* renamed from: ad */
    private boolean f18660ad;

    /* renamed from: ae */
    private boolean f18661ae;

    /* renamed from: af */
    private boolean f18662af;

    /* renamed from: b */
    boolean f18663b;

    /* renamed from: c */
    final C3027d f18664c;

    /* renamed from: d */
    private final FrameLayout f18665d;

    /* renamed from: e */
    private CharSequence f18666e;

    /* renamed from: f */
    private final C3091b f18667f;

    /* renamed from: g */
    private int f18668g;

    /* renamed from: h */
    private boolean f18669h;

    /* renamed from: i */
    private TextView f18670i;

    /* renamed from: j */
    private final int f18671j;

    /* renamed from: k */
    private final int f18672k;

    /* renamed from: l */
    private boolean f18673l;

    /* renamed from: m */
    private CharSequence f18674m;

    /* renamed from: n */
    private boolean f18675n;

    /* renamed from: o */
    private GradientDrawable f18676o;

    /* renamed from: p */
    private final int f18677p;

    /* renamed from: q */
    private final int f18678q;

    /* renamed from: r */
    private int f18679r;

    /* renamed from: s */
    private final int f18680s;

    /* renamed from: t */
    private float f18681t;

    /* renamed from: u */
    private float f18682u;

    /* renamed from: v */
    private float f18683v;

    /* renamed from: w */
    private float f18684w;

    /* renamed from: x */
    private int f18685x;

    /* renamed from: y */
    private final int f18686y;

    /* renamed from: z */
    private final int f18687z;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3096g();

        /* renamed from: a */
        CharSequence f18688a;

        /* renamed from: b */
        boolean f18689b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f18688a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f18689b = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f18688a) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f18688a, parcel, i);
            parcel.writeInt(this.f18689b ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/TextInputLayout$a.class */
    public static final class C3089a extends C0689a {

        /* renamed from: a */
        private final TextInputLayout f18690a;

        public C3089a(TextInputLayout textInputLayout) {
            this.f18690a = textInputLayout;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            super.mo802a(view, dVar);
            EditText editText = this.f18690a.f18656a;
            Editable text = editText != null ? editText.getText() : null;
            CharSequence a = this.f18690a.m841a();
            CharSequence e = this.f18690a.m824e();
            CharSequence c = this.f18690a.m828c();
            boolean z = true;
            boolean z2 = !TextUtils.isEmpty(text);
            boolean z3 = !TextUtils.isEmpty(a);
            boolean z4 = !TextUtils.isEmpty(e);
            boolean z5 = z4 || !TextUtils.isEmpty(c);
            if (z2) {
                dVar.m8508c(text);
            } else if (z3) {
                dVar.m8508c(a);
            }
            if (z3) {
                dVar.m8495f(a);
                if (z2 || !z3) {
                    z = false;
                }
                dVar.m8478m(z);
            }
            if (z5) {
                CharSequence charSequence = c;
                if (z4) {
                    charSequence = e;
                }
                dVar.m8492g(charSequence);
                dVar.m8467w();
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: c */
        public final void mo801c(View view, AccessibilityEvent accessibilityEvent) {
            super.mo801c(view, accessibilityEvent);
            EditText editText = this.f18690a.f18656a;
            Editable text = editText != null ? editText.getText() : null;
            CharSequence charSequence = text;
            if (TextUtils.isEmpty(text)) {
                charSequence = this.f18690a.m841a();
            }
            if (!TextUtils.isEmpty(charSequence)) {
                accessibilityEvent.getText().add(charSequence);
            }
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17453s);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18667f = new C3091b(this);
        this.f18636D = new Rect();
        this.f18637E = new RectF();
        this.f18664c = new C3027d(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f18665d = new FrameLayout(context);
        this.f18665d.setAddStatesFromChildren(true);
        addView(this.f18665d);
        this.f18664c.m1048a(C2925a.f17810a);
        this.f18664c.m1035b(C2925a.f17810a);
        this.f18664c.m1037b(8388659);
        C0484bm b = C3052r.m957b(context, attributeSet, C2913a.C2924k.f17726dG, i, C2913a.C2923j.f17528k, new int[0]);
        this.f18673l = b.m9095a(C2913a.C2924k.f17774eb, true);
        m834a(b.m9089c(C2913a.C2924k.f17728dI));
        this.f18658ab = b.m9095a(C2913a.C2924k.f17773ea, true);
        this.f18677p = context.getResources().getDimensionPixelOffset(C2913a.C2917d.f17485t);
        this.f18678q = context.getResources().getDimensionPixelOffset(C2913a.C2917d.f17486u);
        this.f18680s = b.m9088c(C2913a.C2924k.f17731dL, 0);
        this.f18681t = b.m9081g(C2913a.C2924k.f17735dP);
        this.f18682u = b.m9081g(C2913a.C2924k.f17734dO);
        this.f18683v = b.m9081g(C2913a.C2924k.f17732dM);
        this.f18684w = b.m9081g(C2913a.C2924k.f17733dN);
        this.f18634B = b.m9085e(C2913a.C2924k.f17729dJ);
        this.f18654V = b.m9085e(C2913a.C2924k.f17736dQ);
        this.f18686y = context.getResources().getDimensionPixelSize(C2913a.C2917d.f17487v);
        this.f18687z = context.getResources().getDimensionPixelSize(C2913a.C2917d.f17488w);
        this.f18685x = this.f18686y;
        int a = b.m9097a(C2913a.C2924k.f17730dK, 0);
        if (a != this.f18679r) {
            this.f18679r = a;
            m819h();
        }
        if (b.m9079i(C2913a.C2924k.f17727dH)) {
            ColorStateList f = b.m9083f(C2913a.C2924k.f17727dH);
            this.f18651S = f;
            this.f18650R = f;
        }
        this.f18652T = C0646b.m8612c(context, C2913a.C2916c.f17463j);
        this.f18655W = C0646b.m8612c(context, C2913a.C2916c.f17464k);
        this.f18653U = C0646b.m8612c(context, C2913a.C2916c.f17465l);
        if (b.m9082f(C2913a.C2924k.f17775ec, -1) != -1) {
            this.f18664c.m1030c(b.m9082f(C2913a.C2924k.f17775ec, 0));
            this.f18651S = this.f18664c.m1026e();
            if (this.f18656a != null) {
                m832a(false, false);
                m816k();
            }
        }
        int f2 = b.m9082f(C2913a.C2924k.f17742dW, 0);
        boolean a2 = b.m9095a(C2913a.C2924k.f17741dV, false);
        int f3 = b.m9082f(C2913a.C2924k.f17745dZ, 0);
        boolean a3 = b.m9095a(C2913a.C2924k.f17744dY, false);
        CharSequence c = b.m9089c(C2913a.C2924k.f17743dX);
        boolean a4 = b.m9095a(C2913a.C2924k.f17737dR, false);
        int a5 = b.m9097a(C2913a.C2924k.f17738dS, -1);
        if (this.f18668g != a5) {
            if (a5 > 0) {
                this.f18668g = a5;
            } else {
                this.f18668g = -1;
            }
            if (this.f18663b) {
                EditText editText = this.f18656a;
                m839a(editText == null ? 0 : editText.getText().length());
            }
        }
        this.f18672k = b.m9082f(C2913a.C2924k.f17740dU, 0);
        this.f18671j = b.m9082f(C2913a.C2924k.f17739dT, 0);
        this.f18639G = b.m9095a(C2913a.C2924k.f17778ef, false);
        this.f18640H = b.m9099a(C2913a.C2924k.f17777ee);
        this.f18641I = b.m9089c(C2913a.C2924k.f17776ed);
        if (b.m9079i(C2913a.C2924k.f17779eg)) {
            this.f18647O = true;
            this.f18646N = b.m9083f(C2913a.C2924k.f17779eg);
        }
        if (b.m9079i(C2913a.C2924k.f17780eh)) {
            this.f18649Q = true;
            this.f18648P = C3053s.m954a(b.m9097a(C2913a.C2924k.f17780eh, -1), null);
        }
        b.m9100a();
        m825d(a3);
        if (!TextUtils.isEmpty(c)) {
            if (!this.f18667f.m774d()) {
                m825d(true);
            }
            this.f18667f.m785a(c);
        } else if (this.f18667f.m774d()) {
            m825d(false);
        }
        this.f18667f.m781b(f3);
        m827c(a2);
        this.f18667f.m795a(f2);
        if (this.f18663b != a4) {
            if (a4) {
                this.f18670i = new AppCompatTextView(getContext());
                this.f18670i.setId(C2913a.C2919f.f17500j);
                Typeface typeface = this.f18638F;
                if (typeface != null) {
                    this.f18670i.setTypeface(typeface);
                }
                this.f18670i.setMaxLines(1);
                m836a(this.f18670i, this.f18672k);
                this.f18667f.m790a(this.f18670i, 2);
                EditText editText2 = this.f18656a;
                if (editText2 == null) {
                    m839a(0);
                } else {
                    m839a(editText2.getText().length());
                }
            } else {
                this.f18667f.m780b(this.f18670i, 2);
                this.f18670i = null;
            }
            this.f18663b = a4;
        }
        if (this.f18640H != null && (this.f18647O || this.f18649Q)) {
            this.f18640H = C0758a.m8241f(this.f18640H).mutate();
            if (this.f18647O) {
                C0758a.m8251a(this.f18640H, this.f18646N);
            }
            if (this.f18649Q) {
                C0758a.m8248a(this.f18640H, this.f18648P);
            }
            CheckableImageButton checkableImageButton = this.f18642J;
            if (checkableImageButton != null) {
                Drawable drawable = checkableImageButton.getDrawable();
                Drawable drawable2 = this.f18640H;
                if (drawable != drawable2) {
                    this.f18642J.setImageDrawable(drawable2);
                }
            }
        }
        C0741t.m8358a((View) this, 2);
    }

    /* renamed from: a */
    private void m840a(float f) {
        if (this.f18664c.m1039b() != f) {
            if (this.f18659ac == null) {
                this.f18659ac = new ValueAnimator();
                this.f18659ac.setInterpolator(C2925a.f17811b);
                this.f18659ac.setDuration(167L);
                this.f18659ac.addUpdateListener(new C3095f(this));
            }
            this.f18659ac.setFloatValues(this.f18664c.m1039b(), f);
            this.f18659ac.start();
        }
    }

    /* renamed from: a */
    private void m838a(RectF rectF) {
        rectF.left -= this.f18678q;
        rectF.top -= this.f18678q;
        rectF.right += this.f18678q;
        rectF.bottom += this.f18678q;
    }

    /* renamed from: a */
    private static void m837a(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m837a((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: a */
    private void m834a(CharSequence charSequence) {
        if (this.f18673l) {
            m830b(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    /* renamed from: a */
    private void m832a(boolean z, boolean z2) {
        ColorStateList colorStateList;
        C3027d dVar;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f18656a;
        boolean z3 = true;
        boolean z4 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f18656a;
        if (editText2 == null || !editText2.hasFocus()) {
            z3 = false;
        }
        boolean e = this.f18667f.m772e();
        ColorStateList colorStateList2 = this.f18650R;
        if (colorStateList2 != null) {
            this.f18664c.m1047a(colorStateList2);
            this.f18664c.m1034b(this.f18650R);
        }
        if (!isEnabled) {
            this.f18664c.m1047a(ColorStateList.valueOf(this.f18655W));
            this.f18664c.m1034b(ColorStateList.valueOf(this.f18655W));
        } else if (e) {
            this.f18664c.m1047a(this.f18667f.m769h());
        } else {
            if (this.f18669h && (textView = this.f18670i) != null) {
                dVar = this.f18664c;
                colorStateList = textView.getTextColors();
            } else if (z3) {
                colorStateList = this.f18651S;
                if (colorStateList != null) {
                    dVar = this.f18664c;
                }
            }
            dVar.m1047a(colorStateList);
        }
        if (z4 || (isEnabled() && (z3 || e))) {
            if (z2 || this.f18657aa) {
                m823e(z);
            }
        } else if (z2 || !this.f18657aa) {
            m821f(z);
        }
    }

    /* renamed from: b */
    private void m830b(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f18674m)) {
            this.f18674m = charSequence;
            this.f18664c.m1041a(charSequence);
            if (!this.f18657aa) {
                m804w();
            }
        }
    }

    /* renamed from: c */
    private void m827c(boolean z) {
        this.f18667f.m783a(z);
    }

    /* renamed from: d */
    private void m825d(boolean z) {
        this.f18667f.m777b(z);
    }

    /* renamed from: e */
    private void m823e(boolean z) {
        ValueAnimator valueAnimator = this.f18659ac;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f18659ac.cancel();
        }
        if (!z || !this.f18658ab) {
            this.f18664c.m1038b(1.0f);
        } else {
            m840a(1.0f);
        }
        this.f18657aa = false;
        if (m805v()) {
            m804w();
        }
    }

    /* renamed from: f */
    private void m821f(boolean z) {
        ValueAnimator valueAnimator = this.f18659ac;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f18659ac.cancel();
        }
        if (!z || !this.f18658ab) {
            this.f18664c.m1038b(0.0f);
        } else {
            m840a(0.0f);
        }
        if (m805v() && ((C3090a) this.f18676o).m800a()) {
            m803x();
        }
        this.f18657aa = true;
    }

    /* renamed from: g */
    private Drawable m820g() {
        int i = this.f18679r;
        if (i == 1 || i == 2) {
            return this.f18676o;
        }
        throw new IllegalStateException();
    }

    /* renamed from: h */
    private void m819h() {
        m818i();
        if (this.f18679r != 0) {
            m816k();
        }
        m815l();
    }

    /* renamed from: i */
    private void m818i() {
        C3090a aVar;
        int i = this.f18679r;
        if (i == 0) {
            aVar = null;
        } else if (i == 2 && this.f18673l && !(this.f18676o instanceof C3090a)) {
            aVar = new C3090a();
        } else if (!(this.f18676o instanceof GradientDrawable)) {
            this.f18676o = new GradientDrawable();
            return;
        } else {
            return;
        }
        this.f18676o = aVar;
    }

    /* renamed from: j */
    private float[] m817j() {
        if (!C3053s.m953a(this)) {
            float f = this.f18681t;
            float f2 = this.f18682u;
            float f3 = this.f18683v;
            float f4 = this.f18684w;
            return new float[]{f, f, f2, f2, f3, f3, f4, f4};
        }
        float f5 = this.f18682u;
        float f6 = this.f18681t;
        float f7 = this.f18684w;
        float f8 = this.f18683v;
        return new float[]{f5, f5, f6, f6, f7, f7, f8, f8};
    }

    /* renamed from: k */
    private void m816k() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f18665d.getLayoutParams();
        int n = m813n();
        if (n != layoutParams.topMargin) {
            layoutParams.topMargin = n;
            this.f18665d.requestLayout();
        }
    }

    /* renamed from: l */
    private void m815l() {
        if (this.f18679r != 0 && this.f18676o != null && this.f18656a != null && getRight() != 0) {
            int left = this.f18656a.getLeft();
            int m = m814m();
            int right = this.f18656a.getRight();
            int bottom = this.f18656a.getBottom() + this.f18677p;
            int i = left;
            int i2 = m;
            int i3 = right;
            int i4 = bottom;
            if (this.f18679r == 2) {
                int i5 = this.f18687z;
                i = left + (i5 / 2);
                i2 = m - (i5 / 2);
                i3 = right - (i5 / 2);
                i4 = bottom + (i5 / 2);
            }
            this.f18676o.setBounds(i, i2, i3, i4);
            m810q();
            m812o();
        }
    }

    /* renamed from: m */
    private int m814m() {
        EditText editText = this.f18656a;
        if (editText == null) {
            return 0;
        }
        int i = this.f18679r;
        if (i == 1) {
            return editText.getTop();
        }
        if (i != 2) {
            return 0;
        }
        return editText.getTop() + m813n();
    }

    /* renamed from: n */
    private int m813n() {
        float a;
        if (!this.f18673l) {
            return 0;
        }
        int i = this.f18679r;
        if (i == 0 || i == 1) {
            a = this.f18664c.m1055a();
        } else if (i != 2) {
            return 0;
        } else {
            a = this.f18664c.m1055a() / 2.0f;
        }
        return (int) a;
    }

    /* renamed from: o */
    private void m812o() {
        Drawable background;
        EditText editText = this.f18656a;
        if (editText != null && (background = editText.getBackground()) != null) {
            Drawable drawable = background;
            if (C0437ah.m9169c(background)) {
                drawable = background.mutate();
            }
            C3028e.m1014a(this, this.f18656a, new Rect());
            Rect bounds = drawable.getBounds();
            if (bounds.left != bounds.right) {
                Rect rect = new Rect();
                drawable.getPadding(rect);
                drawable.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.f18656a.getBottom());
            }
        }
    }

    /* renamed from: p */
    private void m811p() {
        int i = this.f18679r;
        if (i == 1) {
            this.f18685x = 0;
        } else if (i == 2 && this.f18654V == 0) {
            this.f18654V = this.f18651S.getColorForState(getDrawableState(), this.f18651S.getDefaultColor());
        }
    }

    /* renamed from: q */
    private void m810q() {
        int i;
        Drawable drawable;
        if (this.f18676o != null) {
            m811p();
            EditText editText = this.f18656a;
            if (editText != null && this.f18679r == 2) {
                if (editText.getBackground() != null) {
                    this.f18635C = this.f18656a.getBackground();
                }
                C0741t.m8351a(this.f18656a, (Drawable) null);
            }
            EditText editText2 = this.f18656a;
            if (!(editText2 == null || this.f18679r != 1 || (drawable = this.f18635C) == null)) {
                C0741t.m8351a(editText2, drawable);
            }
            int i2 = this.f18685x;
            if (i2 >= 0 && (i = this.f18633A) != 0) {
                this.f18676o.setStroke(i2, i);
            }
            this.f18676o.setCornerRadii(m817j());
            this.f18676o.setColor(this.f18634B);
            invalidate();
        }
    }

    /* renamed from: r */
    private void m809r() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i == 21 || i == 22) && (background = this.f18656a.getBackground()) != null && !this.f18660ad) {
            Drawable newDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.f18660ad = C3029f.m1012a((DrawableContainer) background, newDrawable.getConstantState());
            }
            if (!this.f18660ad) {
                C0741t.m8351a(this.f18656a, newDrawable);
                this.f18660ad = true;
                m819h();
            }
        }
    }

    /* renamed from: s */
    private void m808s() {
        if (this.f18656a != null) {
            if (m806u()) {
                if (this.f18642J == null) {
                    this.f18642J = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C2913a.C2921h.f17514j, (ViewGroup) this.f18665d, false);
                    this.f18642J.setImageDrawable(this.f18640H);
                    this.f18642J.setContentDescription(this.f18641I);
                    this.f18665d.addView(this.f18642J);
                    this.f18642J.setOnClickListener(new View$OnClickListenerC3094e(this));
                }
                EditText editText = this.f18656a;
                if (editText != null && C0741t.m8318m(editText) <= 0) {
                    this.f18656a.setMinimumHeight(C0741t.m8318m(this.f18642J));
                }
                this.f18642J.setVisibility(0);
                this.f18642J.setChecked(this.f18643K);
                if (this.f18644L == null) {
                    this.f18644L = new ColorDrawable();
                }
                this.f18644L.setBounds(0, 0, this.f18642J.getMeasuredWidth(), 1);
                Drawable[] b = C0786k.m8129b(this.f18656a);
                if (b[2] != this.f18644L) {
                    this.f18645M = b[2];
                }
                C0786k.m8133a(this.f18656a, b[0], b[1], this.f18644L, b[3]);
                this.f18642J.setPadding(this.f18656a.getPaddingLeft(), this.f18656a.getPaddingTop(), this.f18656a.getPaddingRight(), this.f18656a.getPaddingBottom());
                return;
            }
            CheckableImageButton checkableImageButton = this.f18642J;
            if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
                this.f18642J.setVisibility(8);
            }
            if (this.f18644L != null) {
                Drawable[] b2 = C0786k.m8129b(this.f18656a);
                if (b2[2] == this.f18644L) {
                    C0786k.m8133a(this.f18656a, b2[0], b2[1], this.f18645M, b2[3]);
                    this.f18644L = null;
                }
            }
        }
    }

    /* renamed from: t */
    private boolean m807t() {
        EditText editText = this.f18656a;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* renamed from: u */
    private boolean m806u() {
        if (this.f18639G) {
            return m807t() || this.f18643K;
        }
        return false;
    }

    /* renamed from: v */
    private boolean m805v() {
        return this.f18673l && !TextUtils.isEmpty(this.f18674m) && (this.f18676o instanceof C3090a);
    }

    /* renamed from: w */
    private void m804w() {
        if (m805v()) {
            RectF rectF = this.f18637E;
            this.f18664c.m1044a(rectF);
            m838a(rectF);
            ((C3090a) this.f18676o).m798a(rectF);
        }
    }

    /* renamed from: x */
    private void m803x() {
        if (m805v()) {
            ((C3090a) this.f18676o).m797b();
        }
    }

    /* renamed from: a */
    public final CharSequence m841a() {
        if (this.f18673l) {
            return this.f18674m;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m839a(int i) {
        boolean z = this.f18669h;
        if (this.f18668g == -1) {
            this.f18670i.setText(String.valueOf(i));
            this.f18670i.setContentDescription(null);
            this.f18669h = false;
        } else {
            if (C0741t.m8322i(this.f18670i) == 1) {
                C0741t.m8338b((View) this.f18670i, 0);
            }
            this.f18669h = i > this.f18668g;
            boolean z2 = this.f18669h;
            if (z != z2) {
                m836a(this.f18670i, z2 ? this.f18671j : this.f18672k);
                if (this.f18669h) {
                    C0741t.m8338b((View) this.f18670i, 1);
                }
            }
            this.f18670i.setText(getContext().getString(C2913a.C2922i.f17516b, Integer.valueOf(i), Integer.valueOf(this.f18668g)));
            this.f18670i.setContentDescription(getContext().getString(C2913a.C2922i.f17515a, Integer.valueOf(i), Integer.valueOf(this.f18668g)));
        }
        if (this.f18656a != null && z != this.f18669h) {
            m832a(false, false);
            m822f();
            m826d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m836a(android.widget.TextView r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            androidx.core.widget.C0786k.m8134a(r0, r1)     // Catch: Exception -> 0x003f
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: Exception -> 0x003f
            r1 = 23
            if (r0 < r1) goto L_0x0023
            r0 = r5
            android.content.res.ColorStateList r0 = r0.getTextColors()     // Catch: Exception -> 0x003f
            int r0 = r0.getDefaultColor()     // Catch: Exception -> 0x003f
            r6 = r0
            r0 = r6
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r0 != r1) goto L_0x0023
            r0 = r7
            r6 = r0
            goto L_0x0025
        L_0x0023:
            r0 = 0
            r6 = r0
        L_0x0025:
            r0 = r6
            if (r0 == 0) goto L_0x003e
            r0 = r5
            int r1 = com.google.android.material.C2913a.C2923j.f17518a
            androidx.core.widget.C0786k.m8134a(r0, r1)
            r0 = r5
            r1 = r4
            android.content.Context r1 = r1.getContext()
            int r2 = com.google.android.material.C2913a.C2916c.f17455b
            int r1 = androidx.core.content.C0646b.m8612c(r1, r2)
            r0.setTextColor(r1)
        L_0x003e:
            return
        L_0x003f:
            r8 = move-exception
            r0 = r7
            r6 = r0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m836a(android.widget.TextView, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m833a(boolean z) {
        m832a(z, false);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f18665d.addView(view, layoutParams2);
            this.f18665d.setLayoutParams(layoutParams);
            m816k();
            EditText editText = (EditText) view;
            if (this.f18656a == null) {
                if (!(editText instanceof TextInputEditText)) {
                    Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
                }
                this.f18656a = editText;
                m819h();
                C3089a aVar = new C3089a(this);
                EditText editText2 = this.f18656a;
                if (editText2 != null) {
                    C0741t.m8348a(editText2, aVar);
                }
                if (!m807t()) {
                    this.f18664c.m1043a(this.f18656a.getTypeface());
                }
                this.f18664c.m1054a(this.f18656a.getTextSize());
                int gravity = this.f18656a.getGravity();
                this.f18664c.m1037b((gravity & (-113)) | 48);
                this.f18664c.m1051a(gravity);
                this.f18656a.addTextChangedListener(new C3093d(this));
                if (this.f18650R == null) {
                    this.f18650R = this.f18656a.getHintTextColors();
                }
                if (this.f18673l) {
                    if (TextUtils.isEmpty(this.f18674m)) {
                        this.f18666e = this.f18656a.getHint();
                        m834a(this.f18666e);
                        this.f18656a.setHint((CharSequence) null);
                    }
                    this.f18675n = true;
                }
                if (this.f18670i != null) {
                    m839a(this.f18656a.getText().length());
                }
                this.f18667f.m782b();
                m808s();
                m832a(false, true);
                return;
            }
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b */
    public final void m829b(boolean z) {
        boolean z2;
        if (this.f18639G) {
            int selectionEnd = this.f18656a.getSelectionEnd();
            if (m807t()) {
                this.f18656a.setTransformationMethod(null);
                z2 = true;
            } else {
                this.f18656a.setTransformationMethod(PasswordTransformationMethod.getInstance());
                z2 = false;
            }
            this.f18643K = z2;
            this.f18642J.setChecked(this.f18643K);
            if (z) {
                this.f18642J.jumpDrawablesToCurrentState();
            }
            this.f18656a.setSelection(selectionEnd);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m831b() {
        return this.f18675n;
    }

    /* renamed from: c */
    final CharSequence m828c() {
        TextView textView;
        if (!this.f18663b || !this.f18669h || (textView = this.f18670i) == null) {
            return null;
        }
        return textView.getContentDescription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m826d() {
        Drawable background;
        TextView textView;
        EditText editText = this.f18656a;
        if (editText != null && (background = editText.getBackground()) != null) {
            m809r();
            Drawable drawable = background;
            if (C0437ah.m9169c(background)) {
                drawable = background.mutate();
            }
            if (this.f18667f.m772e()) {
                drawable.setColorFilter(C0519q.m8991a(this.f18667f.m770g(), PorterDuff.Mode.SRC_IN));
            } else if (!this.f18669h || (textView = this.f18670i) == null) {
                C0758a.m8242e(drawable);
                this.f18656a.refreshDrawableState();
            } else {
                drawable.setColorFilter(C0519q.m8991a(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText;
        if (this.f18666e == null || (editText = this.f18656a) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.f18675n;
        this.f18675n = false;
        CharSequence hint = editText.getHint();
        this.f18656a.setHint(this.f18666e);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.f18656a.setHint(hint);
            this.f18675n = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f18662af = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f18662af = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.f18676o;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.f18673l) {
            this.f18664c.m1046a(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (!this.f18661ae) {
            boolean z = true;
            this.f18661ae = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (!C0741t.m8373B(this) || !isEnabled()) {
                z = false;
            }
            m832a(z, false);
            m826d();
            m815l();
            m822f();
            C3027d dVar = this.f18664c;
            if (dVar != null ? dVar.m1040a(drawableState) | false : false) {
                invalidate();
            }
            this.f18661ae = false;
        }
    }

    /* renamed from: e */
    public final CharSequence m824e() {
        if (this.f18667f.m776c()) {
            return this.f18667f.m771f();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m822f() {
        TextView textView;
        if (this.f18676o != null && this.f18679r != 0) {
            EditText editText = this.f18656a;
            boolean z = true;
            boolean z2 = editText != null && editText.hasFocus();
            EditText editText2 = this.f18656a;
            if (editText2 == null || !editText2.isHovered()) {
                z = false;
            }
            if (this.f18679r == 2) {
                this.f18633A = !isEnabled() ? this.f18655W : this.f18667f.m772e() ? this.f18667f.m770g() : (!this.f18669h || (textView = this.f18670i) == null) ? z2 ? this.f18654V : z ? this.f18653U : this.f18652T : textView.getCurrentTextColor();
                this.f18685x = ((z || z2) && isEnabled()) ? this.f18687z : this.f18686y;
                m810q();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        EditText editText;
        super.onLayout(z, i, i2, i3, i4);
        if (this.f18676o != null) {
            m815l();
        }
        if (this.f18673l && (editText = this.f18656a) != null) {
            Rect rect = this.f18636D;
            C3028e.m1014a(this, editText, rect);
            int compoundPaddingLeft = rect.left + this.f18656a.getCompoundPaddingLeft();
            int compoundPaddingRight = rect.right - this.f18656a.getCompoundPaddingRight();
            int i5 = this.f18679r;
            int paddingTop = i5 != 1 ? i5 != 2 ? getPaddingTop() : m820g().getBounds().top - m813n() : m820g().getBounds().top + this.f18680s;
            this.f18664c.m1049a(compoundPaddingLeft, rect.top + this.f18656a.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f18656a.getCompoundPaddingBottom());
            this.f18664c.m1036b(compoundPaddingLeft, paddingTop, compoundPaddingRight, (i4 - i2) - getPaddingBottom());
            this.f18664c.m1032c();
            if (m805v() && !this.f18657aa) {
                m804w();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m808s();
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0055  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onRestoreInstanceState(android.os.Parcelable r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.material.textfield.TextInputLayout.SavedState
            if (r0 != 0) goto L_0x000d
            r0 = r3
            r1 = r4
            super.onRestoreInstanceState(r1)
            return
        L_0x000d:
            r0 = r4
            com.google.android.material.textfield.TextInputLayout$SavedState r0 = (com.google.android.material.textfield.TextInputLayout.SavedState) r0
            r5 = r0
            r0 = r3
            r1 = r5
            android.os.Parcelable r1 = r1.m8047a()
            super.onRestoreInstanceState(r1)
            r0 = r5
            java.lang.CharSequence r0 = r0.f18688a
            r4 = r0
            r0 = r3
            com.google.android.material.textfield.b r0 = r0.f18667f
            boolean r0 = r0.m776c()
            if (r0 != 0) goto L_0x0035
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x004e
            r0 = r3
            r1 = 1
            r0.m827c(r1)
        L_0x0035:
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0047
            r0 = r3
            com.google.android.material.textfield.b r0 = r0.f18667f
            r1 = r4
            r0.m778b(r1)
            goto L_0x004e
        L_0x0047:
            r0 = r3
            com.google.android.material.textfield.b r0 = r0.f18667f
            r0.m796a()
        L_0x004e:
            r0 = r5
            boolean r0 = r0.f18689b
            if (r0 == 0) goto L_0x005a
            r0 = r3
            r1 = 1
            r0.m829b(r1)
        L_0x005a:
            r0 = r3
            r0.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.onRestoreInstanceState(android.os.Parcelable):void");
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f18667f.m772e()) {
            savedState.f18688a = m824e();
        }
        savedState.f18689b = this.f18643K;
        return savedState;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m837a(this, z);
        super.setEnabled(z);
    }
}
