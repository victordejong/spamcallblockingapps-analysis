package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.core.content.p033a.C0641f;
import androidx.core.p036f.C0687f;
import androidx.core.widget.AbstractC0777b;
import androidx.core.widget.AbstractC0789m;
import androidx.core.widget.C0786k;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.ad */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad.class */
public final class C0431ad {

    /* renamed from: a */
    private final TextView f2178a;

    /* renamed from: b */
    private C0482bk f2179b;

    /* renamed from: c */
    private C0482bk f2180c;

    /* renamed from: d */
    private C0482bk f2181d;

    /* renamed from: e */
    private C0482bk f2182e;

    /* renamed from: f */
    private C0482bk f2183f;

    /* renamed from: g */
    private C0482bk f2184g;

    /* renamed from: h */
    private C0482bk f2185h;

    /* renamed from: i */
    private final C0434ae f2186i;

    /* renamed from: j */
    private int f2187j = 0;

    /* renamed from: k */
    private int f2188k = -1;

    /* renamed from: l */
    private Typeface f2189l;

    /* renamed from: m */
    private boolean f2190m;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ad$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad$a.class */
    public static final class C0432a extends C0641f.AbstractC0642a {

        /* renamed from: a */
        private final WeakReference<C0431ad> f2191a;

        /* renamed from: b */
        private final int f2192b;

        /* renamed from: c */
        private final int f2193c;

        /* renamed from: androidx.appcompat.widget.ad$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad$a$a.class */
        private final class RunnableC0433a implements Runnable {

            /* renamed from: b */
            private final WeakReference<C0431ad> f2195b;

            /* renamed from: c */
            private final Typeface f2196c;

            RunnableC0433a(WeakReference<C0431ad> weakReference, Typeface typeface) {
                this.f2195b = weakReference;
                this.f2196c = typeface;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C0431ad adVar = this.f2195b.get();
                if (adVar != null) {
                    adVar.m9226a(this.f2196c);
                }
            }
        }

        C0432a(C0431ad adVar, int i, int i2) {
            this.f2191a = new WeakReference<>(adVar);
            this.f2192b = i;
            this.f2193c = i2;
        }

        @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
        /* renamed from: a */
        public final void mo1184a(int i) {
        }

        @Override // androidx.core.content.p033a.C0641f.AbstractC0642a
        /* renamed from: a */
        public final void mo1183a(Typeface typeface) {
            C0431ad adVar = this.f2191a.get();
            if (adVar != null) {
                Typeface typeface2 = typeface;
                if (Build.VERSION.SDK_INT >= 28) {
                    int i = this.f2192b;
                    typeface2 = typeface;
                    if (i != -1) {
                        typeface2 = Typeface.create(typeface, i, (this.f2193c & 2) != 0);
                    }
                }
                adVar.m9223a(new RunnableC0433a(this.f2191a, typeface2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0431ad(TextView textView) {
        this.f2178a = textView;
        this.f2186i = new C0434ae(this.f2178a);
    }

    /* renamed from: a */
    private static C0482bk m9229a(Context context, C0519q qVar, int i) {
        ColorStateList c = qVar.m8984c(context, i);
        if (c == null) {
            return null;
        }
        C0482bk bkVar = new C0482bk();
        bkVar.f2334d = true;
        bkVar.f2331a = c;
        return bkVar;
    }

    /* renamed from: a */
    private void m9230a(Context context, C0484bm bmVar) {
        String d;
        Typeface create;
        this.f2187j = bmVar.m9097a(C0247a.C0257j.f962dk, this.f2187j);
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2188k = bmVar.m9097a(C0247a.C0257j.f971dt, -1);
            if (this.f2188k != -1) {
                this.f2187j = (this.f2187j & 2) | 0;
            }
        }
        if (bmVar.m9079i(C0247a.C0257j.f970ds) || bmVar.m9079i(C0247a.C0257j.f972du)) {
            this.f2189l = null;
            int i = bmVar.m9079i(C0247a.C0257j.f972du) ? C0247a.C0257j.f972du : C0247a.C0257j.f970ds;
            int i2 = this.f2188k;
            int i3 = this.f2187j;
            if (!context.isRestricted()) {
                try {
                    Typeface a = bmVar.m9096a(i, this.f2187j, new C0432a(this, i2, i3));
                    if (a != null) {
                        Typeface typeface = a;
                        if (Build.VERSION.SDK_INT >= 28) {
                            typeface = a;
                            if (this.f2188k != -1) {
                                typeface = Typeface.create(Typeface.create(a, 0), this.f2188k, (this.f2187j & 2) != 0);
                            }
                        }
                        this.f2189l = typeface;
                    }
                    this.f2190m = this.f2189l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException e) {
                }
            }
            if (this.f2189l == null && (d = bmVar.m9087d(i)) != null) {
                if (Build.VERSION.SDK_INT < 28 || this.f2188k == -1) {
                    this.f2189l = Typeface.create(d, this.f2187j);
                    return;
                }
                Typeface create2 = Typeface.create(d, 0);
                int i4 = this.f2188k;
                if ((this.f2187j & 2) != 0) {
                    z = true;
                }
                create = Typeface.create(create2, i4, z);
            } else {
                return;
            }
        } else if (bmVar.m9079i(C0247a.C0257j.f961dj)) {
            this.f2190m = false;
            int a2 = bmVar.m9097a(C0247a.C0257j.f961dj, 1);
            if (a2 == 1) {
                create = Typeface.SANS_SERIF;
            } else if (a2 == 2) {
                create = Typeface.SERIF;
            } else if (a2 == 3) {
                this.f2189l = Typeface.MONOSPACE;
                return;
            } else {
                return;
            }
        } else {
            return;
        }
        this.f2189l = create;
    }

    /* renamed from: a */
    private void m9225a(Drawable drawable, C0482bk bkVar) {
        if (drawable != null && bkVar != null) {
            C0519q.m8988a(drawable, bkVar, this.f2178a.getDrawableState());
        }
    }

    /* renamed from: a */
    private void m9222a(boolean z) {
        this.f2178a.setAllCaps(z);
    }

    /* renamed from: k */
    private void m9211k() {
        C0482bk bkVar = this.f2185h;
        this.f2179b = bkVar;
        this.f2180c = bkVar;
        this.f2181d = bkVar;
        this.f2182e = bkVar;
        this.f2183f = bkVar;
        this.f2184g = bkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9235a() {
        m9220b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9234a(int i) {
        this.f2186i.m9207a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9233a(int i, float f) {
        if (!AbstractC0777b.f3242d && !this.f2186i.m9187g()) {
            this.f2186i.m9206a(i, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9232a(int i, int i2, int i3, int i4) {
        this.f2186i.m9205a(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9231a(Context context, int i) {
        String d;
        ColorStateList f;
        C0484bm a = C0484bm.m9094a(context, i, C0247a.C0257j.f959dh);
        if (a.m9079i(C0247a.C0257j.f974dw)) {
            m9222a(a.m9095a(C0247a.C0257j.f974dw, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a.m9079i(C0247a.C0257j.f963dl) && (f = a.m9083f(C0247a.C0257j.f963dl)) != null) {
            this.f2178a.setTextColor(f);
        }
        if (a.m9079i(C0247a.C0257j.f960di) && a.m9086d(C0247a.C0257j.f960di, -1) == 0) {
            this.f2178a.setTextSize(0, 0.0f);
        }
        m9230a(context, a);
        if (Build.VERSION.SDK_INT >= 26 && a.m9079i(C0247a.C0257j.f973dv) && (d = a.m9087d(C0247a.C0257j.f973dv)) != null) {
            this.f2178a.setFontVariationSettings(d);
        }
        a.m9100a();
        Typeface typeface = this.f2189l;
        if (typeface != null) {
            this.f2178a.setTypeface(typeface, this.f2187j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9228a(ColorStateList colorStateList) {
        if (this.f2185h == null) {
            this.f2185h = new C0482bk();
        }
        C0482bk bkVar = this.f2185h;
        bkVar.f2331a = colorStateList;
        bkVar.f2334d = colorStateList != null;
        m9211k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9227a(PorterDuff.Mode mode) {
        if (this.f2185h == null) {
            this.f2185h = new C0482bk();
        }
        C0482bk bkVar = this.f2185h;
        bkVar.f2332b = mode;
        bkVar.f2333c = mode != null;
        m9211k();
    }

    /* renamed from: a */
    public final void m9226a(Typeface typeface) {
        if (this.f2190m) {
            this.f2178a.setTypeface(typeface);
            this.f2189l = typeface;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9224a(AttributeSet attributeSet, int i) {
        String str;
        String str2;
        ColorStateList colorStateList;
        boolean z;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        Context context = this.f2178a.getContext();
        C0519q b = C0519q.m8987b();
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f795ac, i, 0);
        int f = a.m9082f(C0247a.C0257j.f796ad, -1);
        if (a.m9079i(C0247a.C0257j.f799ag)) {
            this.f2179b = m9229a(context, b, a.m9082f(C0247a.C0257j.f799ag, 0));
        }
        if (a.m9079i(C0247a.C0257j.f797ae)) {
            this.f2180c = m9229a(context, b, a.m9082f(C0247a.C0257j.f797ae, 0));
        }
        if (a.m9079i(C0247a.C0257j.f800ah)) {
            this.f2181d = m9229a(context, b, a.m9082f(C0247a.C0257j.f800ah, 0));
        }
        if (a.m9079i(C0247a.C0257j.f798af)) {
            this.f2182e = m9229a(context, b, a.m9082f(C0247a.C0257j.f798af, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (a.m9079i(C0247a.C0257j.f801ai)) {
                this.f2183f = m9229a(context, b, a.m9082f(C0247a.C0257j.f801ai, 0));
            }
            if (a.m9079i(C0247a.C0257j.f802aj)) {
                this.f2184g = m9229a(context, b, a.m9082f(C0247a.C0257j.f802aj, 0));
            }
        }
        a.m9100a();
        boolean z3 = this.f2178a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (f != -1) {
            C0484bm a2 = C0484bm.m9094a(context, f, C0247a.C0257j.f959dh);
            if (z3 || !a2.m9079i(C0247a.C0257j.f974dw)) {
                z = false;
                z2 = false;
            } else {
                z2 = a2.m9095a(C0247a.C0257j.f974dw, false);
                z = true;
            }
            m9230a(context, a2);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList = a2.m9079i(C0247a.C0257j.f963dl) ? a2.m9083f(C0247a.C0257j.f963dl) : null;
                colorStateList3 = a2.m9079i(C0247a.C0257j.f964dm) ? a2.m9083f(C0247a.C0257j.f964dm) : null;
                colorStateList2 = a2.m9079i(C0247a.C0257j.f965dn) ? a2.m9083f(C0247a.C0257j.f965dn) : null;
            } else {
                colorStateList2 = null;
                colorStateList3 = null;
                colorStateList = null;
            }
            str2 = a2.m9079i(C0247a.C0257j.f975dx) ? a2.m9087d(C0247a.C0257j.f975dx) : null;
            str = (Build.VERSION.SDK_INT < 26 || !a2.m9079i(C0247a.C0257j.f973dv)) ? null : a2.m9087d(C0247a.C0257j.f973dv);
            a2.m9100a();
        } else {
            z = false;
            z2 = false;
            str2 = null;
            colorStateList2 = null;
            str = null;
            colorStateList3 = null;
            colorStateList = null;
        }
        C0484bm a3 = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f959dh, i, 0);
        boolean z4 = z;
        boolean z5 = z2;
        if (!z3) {
            z4 = z;
            z5 = z2;
            if (a3.m9079i(C0247a.C0257j.f974dw)) {
                z5 = a3.m9095a(C0247a.C0257j.f974dw, false);
                z4 = true;
            }
        }
        ColorStateList colorStateList4 = colorStateList2;
        ColorStateList colorStateList5 = colorStateList3;
        ColorStateList colorStateList6 = colorStateList;
        if (Build.VERSION.SDK_INT < 23) {
            if (a3.m9079i(C0247a.C0257j.f963dl)) {
                colorStateList = a3.m9083f(C0247a.C0257j.f963dl);
            }
            if (a3.m9079i(C0247a.C0257j.f964dm)) {
                colorStateList3 = a3.m9083f(C0247a.C0257j.f964dm);
            }
            colorStateList4 = colorStateList2;
            colorStateList5 = colorStateList3;
            colorStateList6 = colorStateList;
            if (a3.m9079i(C0247a.C0257j.f965dn)) {
                colorStateList4 = a3.m9083f(C0247a.C0257j.f965dn);
                colorStateList6 = colorStateList;
                colorStateList5 = colorStateList3;
            }
        }
        if (a3.m9079i(C0247a.C0257j.f975dx)) {
            str2 = a3.m9087d(C0247a.C0257j.f975dx);
        }
        String str3 = str;
        if (Build.VERSION.SDK_INT >= 26) {
            str3 = str;
            if (a3.m9079i(C0247a.C0257j.f973dv)) {
                str3 = a3.m9087d(C0247a.C0257j.f973dv);
            }
        }
        if (Build.VERSION.SDK_INT >= 28 && a3.m9079i(C0247a.C0257j.f960di) && a3.m9086d(C0247a.C0257j.f960di, -1) == 0) {
            this.f2178a.setTextSize(0, 0.0f);
        }
        m9230a(context, a3);
        a3.m9100a();
        if (colorStateList6 != null) {
            this.f2178a.setTextColor(colorStateList6);
        }
        if (colorStateList5 != null) {
            this.f2178a.setHintTextColor(colorStateList5);
        }
        if (colorStateList4 != null) {
            this.f2178a.setLinkTextColor(colorStateList4);
        }
        if (!z3 && z4) {
            m9222a(z5);
        }
        Typeface typeface = this.f2189l;
        if (typeface != null) {
            if (this.f2188k == -1) {
                this.f2178a.setTypeface(typeface, this.f2187j);
            } else {
                this.f2178a.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            this.f2178a.setFontVariationSettings(str3);
        }
        if (str2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f2178a.setTextLocales(LocaleList.forLanguageTags(str2));
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.f2178a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
            }
        }
        this.f2186i.m9202a(attributeSet, i);
        if (AbstractC0777b.f3242d && this.f2186i.m9210a() != 0) {
            int[] e = this.f2186i.m9189e();
            if (e.length > 0) {
                if (this.f2178a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f2178a.setAutoSizeTextTypeUniformWithConfiguration(this.f2186i.m9191c(), this.f2186i.m9190d(), this.f2186i.m9196b(), 0);
                } else {
                    this.f2178a.setAutoSizeTextTypeUniformWithPresetSizes(e, 0);
                }
            }
        }
        C0484bm a4 = C0484bm.m9093a(context, attributeSet, C0247a.C0257j.f803ak);
        int f2 = a4.m9082f(C0247a.C0257j.f811as, -1);
        Drawable a5 = f2 != -1 ? b.m8989a(context, f2) : null;
        int f3 = a4.m9082f(C0247a.C0257j.f816ax, -1);
        Drawable a6 = f3 != -1 ? b.m8989a(context, f3) : null;
        int f4 = a4.m9082f(C0247a.C0257j.f812at, -1);
        Drawable a7 = f4 != -1 ? b.m8989a(context, f4) : null;
        int f5 = a4.m9082f(C0247a.C0257j.f809aq, -1);
        Drawable a8 = f5 != -1 ? b.m8989a(context, f5) : null;
        int f6 = a4.m9082f(C0247a.C0257j.f813au, -1);
        Drawable a9 = f6 != -1 ? b.m8989a(context, f6) : null;
        int f7 = a4.m9082f(C0247a.C0257j.f810ar, -1);
        Drawable a10 = f7 != -1 ? b.m8989a(context, f7) : null;
        if (Build.VERSION.SDK_INT >= 17 && (a9 != null || a10 != null)) {
            Drawable[] compoundDrawablesRelative = this.f2178a.getCompoundDrawablesRelative();
            TextView textView = this.f2178a;
            if (a9 == null) {
                a9 = compoundDrawablesRelative[0];
            }
            if (a6 == null) {
                a6 = compoundDrawablesRelative[1];
            }
            if (a10 == null) {
                a10 = compoundDrawablesRelative[2];
            }
            if (a8 == null) {
                a8 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(a9, a6, a10, a8);
        } else if (!(a5 == null && a6 == null && a7 == null && a8 == null)) {
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f2178a.getCompoundDrawablesRelative();
                if (!(compoundDrawablesRelative2[0] == null && compoundDrawablesRelative2[2] == null)) {
                    TextView textView2 = this.f2178a;
                    Drawable drawable = compoundDrawablesRelative2[0];
                    if (a6 == null) {
                        a6 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable2 = compoundDrawablesRelative2[2];
                    if (a8 == null) {
                        a8 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, a6, drawable2, a8);
                }
            }
            Drawable[] compoundDrawables = this.f2178a.getCompoundDrawables();
            TextView textView3 = this.f2178a;
            if (a5 == null) {
                a5 = compoundDrawables[0];
            }
            if (a6 == null) {
                a6 = compoundDrawables[1];
            }
            if (a7 == null) {
                a7 = compoundDrawables[2];
            }
            if (a8 == null) {
                a8 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(a5, a6, a7, a8);
        }
        if (a4.m9079i(C0247a.C0257j.f814av)) {
            ColorStateList f8 = a4.m9083f(C0247a.C0257j.f814av);
            TextView textView4 = this.f2178a;
            C0687f.m8549a(textView4);
            if (Build.VERSION.SDK_INT >= 23) {
                textView4.setCompoundDrawableTintList(f8);
            } else if (textView4 instanceof AbstractC0789m) {
                ((AbstractC0789m) textView4).mo8122b(f8);
            }
        }
        if (a4.m9079i(C0247a.C0257j.f815aw)) {
            PorterDuff.Mode a11 = C0437ah.m9172a(a4.m9097a(C0247a.C0257j.f815aw, -1), null);
            TextView textView5 = this.f2178a;
            C0687f.m8549a(textView5);
            if (Build.VERSION.SDK_INT >= 23) {
                textView5.setCompoundDrawableTintMode(a11);
            } else if (textView5 instanceof AbstractC0789m) {
                ((AbstractC0789m) textView5).mo8121b(a11);
            }
        }
        int d = a4.m9086d(C0247a.C0257j.f817ay, -1);
        int d2 = a4.m9086d(C0247a.C0257j.f818az, -1);
        int d3 = a4.m9086d(C0247a.C0257j.f767aA, -1);
        a4.m9100a();
        if (d != -1) {
            C0786k.m8128b(this.f2178a, d);
        }
        if (d2 != -1) {
            C0786k.m8127c(this.f2178a, d2);
        }
        if (d3 != -1) {
            C0786k.m8126d(this.f2178a, d3);
        }
    }

    /* renamed from: a */
    public final void m9223a(Runnable runnable) {
        this.f2178a.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9221a(int[] iArr, int i) {
        this.f2186i.m9197a(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9220b() {
        if (!(this.f2179b == null && this.f2180c == null && this.f2181d == null && this.f2182e == null)) {
            Drawable[] compoundDrawables = this.f2178a.getCompoundDrawables();
            m9225a(compoundDrawables[0], this.f2179b);
            m9225a(compoundDrawables[1], this.f2180c);
            m9225a(compoundDrawables[2], this.f2181d);
            m9225a(compoundDrawables[3], this.f2182e);
        }
        if (Build.VERSION.SDK_INT < 17) {
            return;
        }
        if (this.f2183f != null || this.f2184g != null) {
            Drawable[] compoundDrawablesRelative = this.f2178a.getCompoundDrawablesRelative();
            m9225a(compoundDrawablesRelative[0], this.f2183f);
            m9225a(compoundDrawablesRelative[2], this.f2184g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m9219c() {
        if (!AbstractC0777b.f3242d) {
            this.f2186i.m9188f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m9218d() {
        this.f2186i.m9188f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m9217e() {
        return this.f2186i.m9187g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final int m9216f() {
        return this.f2186i.m9210a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final int m9215g() {
        return this.f2186i.m9196b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final int m9214h() {
        return this.f2186i.m9191c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final int m9213i() {
        return this.f2186i.m9190d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final int[] m9212j() {
        return this.f2186i.m9189e();
    }
}
