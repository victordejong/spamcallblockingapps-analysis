package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0786k;
import androidx.legacy.widget.Space;
import com.google.android.material.C2913a;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.p060a.C2926b;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.textfield.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/b.class */
public final class C3091b {

    /* renamed from: a */
    private final Context f18694a;

    /* renamed from: b */
    private final TextInputLayout f18695b;

    /* renamed from: c */
    private LinearLayout f18696c;

    /* renamed from: d */
    private int f18697d;

    /* renamed from: e */
    private FrameLayout f18698e;

    /* renamed from: f */
    private int f18699f;

    /* renamed from: g */
    private Animator f18700g;

    /* renamed from: h */
    private final float f18701h;

    /* renamed from: i */
    private int f18702i;

    /* renamed from: j */
    private int f18703j;

    /* renamed from: k */
    private CharSequence f18704k;

    /* renamed from: l */
    private boolean f18705l;

    /* renamed from: m */
    private TextView f18706m;

    /* renamed from: n */
    private int f18707n;

    /* renamed from: o */
    private CharSequence f18708o;

    /* renamed from: p */
    private boolean f18709p;

    /* renamed from: q */
    private TextView f18710q;

    /* renamed from: r */
    private int f18711r;

    /* renamed from: s */
    private Typeface f18712s;

    public C3091b(TextInputLayout textInputLayout) {
        this.f18694a = textInputLayout.getContext();
        this.f18695b = textInputLayout;
        this.f18701h = this.f18694a.getResources().getDimensionPixelSize(C2913a.C2917d.f17483r);
    }

    /* renamed from: a */
    private ObjectAnimator m791a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f18701h, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(C2925a.f17813d);
        return ofFloat;
    }

    /* renamed from: a */
    private static ObjectAnimator m788a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(C2925a.f17810a);
        return ofFloat;
    }

    /* renamed from: a */
    private void m794a(int i, int i2) {
        TextView d;
        TextView d2;
        if (i != i2) {
            if (!(i2 == 0 || (d2 = m773d(i2)) == null)) {
                d2.setVisibility(0);
                d2.setAlpha(1.0f);
            }
            if (!(i == 0 || (d = m773d(i)) == null)) {
                d.setVisibility(4);
                if (i == 1) {
                    d.setText((CharSequence) null);
                }
            }
            this.f18702i = i2;
        }
    }

    /* renamed from: a */
    private void m793a(int i, int i2, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f18700g = animatorSet;
            ArrayList arrayList = new ArrayList();
            m784a(arrayList, this.f18709p, this.f18710q, 2, i, i2);
            m784a(arrayList, this.f18705l, this.f18706m, 1, i, i2);
            C2926b.m1547a(animatorSet, arrayList);
            animatorSet.addListener(new C3092c(this, i2, m773d(i), i, m773d(i2)));
            animatorSet.start();
        } else {
            m794a(i, i2);
        }
        this.f18695b.m826d();
        this.f18695b.m833a(z);
        this.f18695b.m822f();
    }

    /* renamed from: a */
    private static void m792a(ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    private void m784a(List<Animator> list, boolean z, TextView textView, int i, int i2, int i3) {
        if (textView != null && z) {
            if (i == i3 || i == i2) {
                list.add(m788a(textView, i3 == i));
                if (i3 == i) {
                    list.add(m791a(textView));
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m789a(TextView textView, CharSequence charSequence) {
        if (!C0741t.m8373B(this.f18695b) || !this.f18695b.isEnabled()) {
            return false;
        }
        return this.f18703j != this.f18702i || textView == null || !TextUtils.equals(textView.getText(), charSequence);
    }

    /* renamed from: c */
    private static boolean m775c(int i) {
        return i == 0 || i == 1;
    }

    /* renamed from: d */
    private TextView m773d(int i) {
        if (i == 1) {
            return this.f18706m;
        }
        if (i != 2) {
            return null;
        }
        return this.f18710q;
    }

    /* renamed from: i */
    private void m768i() {
        Animator animator = this.f18700g;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m796a() {
        this.f18704k = null;
        m768i();
        if (this.f18702i == 1) {
            this.f18703j = (!this.f18709p || TextUtils.isEmpty(this.f18708o)) ? 0 : 2;
        }
        m793a(this.f18702i, this.f18703j, m789a(this.f18706m, (CharSequence) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m795a(int i) {
        this.f18707n = i;
        TextView textView = this.f18706m;
        if (textView != null) {
            this.f18695b.m836a(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m790a(TextView textView, int i) {
        if (this.f18696c == null && this.f18698e == null) {
            this.f18696c = new LinearLayout(this.f18694a);
            this.f18696c.setOrientation(0);
            this.f18695b.addView(this.f18696c, -1, -2);
            this.f18698e = new FrameLayout(this.f18694a);
            this.f18696c.addView(this.f18698e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f18696c.addView(new Space(this.f18694a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f18695b.f18656a != null) {
                m782b();
            }
        }
        if (m775c(i)) {
            this.f18698e.setVisibility(0);
            this.f18698e.addView(textView);
            this.f18699f++;
        } else {
            this.f18696c.addView(textView, i);
        }
        this.f18696c.setVisibility(0);
        this.f18697d++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m785a(CharSequence charSequence) {
        m768i();
        this.f18708o = charSequence;
        this.f18710q.setText(charSequence);
        if (this.f18702i != 2) {
            this.f18703j = 2;
        }
        m793a(this.f18702i, this.f18703j, m789a(this.f18710q, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m783a(boolean z) {
        if (this.f18705l != z) {
            m768i();
            if (z) {
                this.f18706m = new AppCompatTextView(this.f18694a);
                this.f18706m.setId(C2913a.C2919f.f17501k);
                Typeface typeface = this.f18712s;
                if (typeface != null) {
                    this.f18706m.setTypeface(typeface);
                }
                m795a(this.f18707n);
                this.f18706m.setVisibility(4);
                C0741t.m8338b((View) this.f18706m, 1);
                m790a(this.f18706m, 0);
            } else {
                m796a();
                m780b(this.f18706m, 0);
                this.f18706m = null;
                this.f18695b.m826d();
                this.f18695b.m822f();
            }
            this.f18705l = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m782b() {
        if ((this.f18696c == null || this.f18695b.f18656a == null) ? false : true) {
            C0741t.m8337b(this.f18696c, C0741t.m8321j(this.f18695b.f18656a), 0, C0741t.m8320k(this.f18695b.f18656a), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m781b(int i) {
        this.f18711r = i;
        TextView textView = this.f18710q;
        if (textView != null) {
            C0786k.m8134a(textView, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m780b(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f18696c != null) {
            if (!m775c(i) || (frameLayout = this.f18698e) == null) {
                this.f18696c.removeView(textView);
            } else {
                this.f18699f--;
                m792a(frameLayout, this.f18699f);
                this.f18698e.removeView(textView);
            }
            this.f18697d--;
            m792a(this.f18696c, this.f18697d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m778b(CharSequence charSequence) {
        m768i();
        this.f18704k = charSequence;
        this.f18706m.setText(charSequence);
        if (this.f18702i != 1) {
            this.f18703j = 1;
        }
        m793a(this.f18702i, this.f18703j, m789a(this.f18706m, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m777b(boolean z) {
        if (this.f18709p != z) {
            m768i();
            if (z) {
                this.f18710q = new AppCompatTextView(this.f18694a);
                this.f18710q.setId(C2913a.C2919f.f17502l);
                Typeface typeface = this.f18712s;
                if (typeface != null) {
                    this.f18710q.setTypeface(typeface);
                }
                this.f18710q.setVisibility(4);
                C0741t.m8338b((View) this.f18710q, 1);
                m781b(this.f18711r);
                m790a(this.f18710q, 1);
            } else {
                m768i();
                if (this.f18702i == 2) {
                    this.f18703j = 0;
                }
                m793a(this.f18702i, this.f18703j, m789a(this.f18710q, (CharSequence) null));
                m780b(this.f18710q, 1);
                this.f18710q = null;
                this.f18695b.m826d();
                this.f18695b.m822f();
            }
            this.f18709p = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final boolean m776c() {
        return this.f18705l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m774d() {
        return this.f18709p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m772e() {
        return this.f18703j == 1 && this.f18706m != null && !TextUtils.isEmpty(this.f18704k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final CharSequence m771f() {
        return this.f18704k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final int m770g() {
        TextView textView = this.f18706m;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final ColorStateList m769h() {
        TextView textView = this.f18706m;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }
}
