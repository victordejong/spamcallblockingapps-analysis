package androidx.core.p035e;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.core.p036f.C0681c;
import java.util.concurrent.Executor;
/* renamed from: androidx.core.e.c */
/* loaded from: classes-dex2jar.jar:androidx/core/e/c.class */
public final class C0667c implements Spannable {

    /* renamed from: a */
    private static final Object f2978a = new Object();

    /* renamed from: b */
    private static Executor f2979b = null;

    /* renamed from: c */
    private final Spannable f2980c;

    /* renamed from: d */
    private final C0668a f2981d;

    /* renamed from: androidx.core.e.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a.class */
    public static final class C0668a {

        /* renamed from: a */
        final PrecomputedText.Params f2982a = null;

        /* renamed from: b */
        private final TextPaint f2983b;

        /* renamed from: c */
        private final TextDirectionHeuristic f2984c;

        /* renamed from: d */
        private final int f2985d;

        /* renamed from: e */
        private final int f2986e;

        /* renamed from: androidx.core.e.c$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/e/c$a$a.class */
        public static final class C0669a {

            /* renamed from: a */
            private final TextPaint f2987a;

            /* renamed from: b */
            private TextDirectionHeuristic f2988b;

            /* renamed from: c */
            private int f2989c;

            /* renamed from: d */
            private int f2990d;

            public C0669a(TextPaint textPaint) {
                this.f2987a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f2989c = 1;
                    this.f2990d = 1;
                } else {
                    this.f2990d = 0;
                    this.f2989c = 0;
                }
                this.f2988b = Build.VERSION.SDK_INT >= 18 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : null;
            }

            /* renamed from: a */
            public final C0669a m8565a(int i) {
                this.f2989c = i;
                return this;
            }

            /* renamed from: a */
            public final C0669a m8564a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f2988b = textDirectionHeuristic;
                return this;
            }

            /* renamed from: a */
            public final C0668a m8566a() {
                return new C0668a(this.f2987a, this.f2988b, this.f2989c, this.f2990d);
            }

            /* renamed from: b */
            public final C0669a m8563b(int i) {
                this.f2990d = i;
                return this;
            }
        }

        public C0668a(PrecomputedText.Params params) {
            this.f2983b = params.getTextPaint();
            this.f2984c = params.getTextDirection();
            this.f2985d = params.getBreakStrategy();
            this.f2986e = params.getHyphenationFrequency();
        }

        C0668a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            this.f2983b = textPaint;
            this.f2984c = textDirectionHeuristic;
            this.f2985d = i;
            this.f2986e = i2;
        }

        /* renamed from: a */
        public final boolean m8567a(C0668a aVar) {
            PrecomputedText.Params params = this.f2982a;
            if (params != null) {
                return params.equals(aVar.f2982a);
            }
            if ((Build.VERSION.SDK_INT >= 23 && (this.f2985d != aVar.f2985d || this.f2986e != aVar.f2986e)) || this.f2983b.getTextSize() != aVar.f2983b.getTextSize() || this.f2983b.getTextScaleX() != aVar.f2983b.getTextScaleX() || this.f2983b.getTextSkewX() != aVar.f2983b.getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f2983b.getLetterSpacing() != aVar.f2983b.getLetterSpacing() || !TextUtils.equals(this.f2983b.getFontFeatureSettings(), aVar.f2983b.getFontFeatureSettings()))) || this.f2983b.getFlags() != aVar.f2983b.getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.f2983b.getTextLocales().equals(aVar.f2983b.getTextLocales())) {
                    return false;
                }
            } else if (Build.VERSION.SDK_INT >= 17 && !this.f2983b.getTextLocale().equals(aVar.f2983b.getTextLocale())) {
                return false;
            }
            return this.f2983b.getTypeface() == null ? aVar.f2983b.getTypeface() == null : this.f2983b.getTypeface().equals(aVar.f2983b.getTypeface());
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0668a)) {
                return false;
            }
            C0668a aVar = (C0668a) obj;
            if (!m8567a(aVar)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f2984c == aVar.f2984c;
        }

        public final int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return C0681c.m8553a(Float.valueOf(this.f2983b.getTextSize()), Float.valueOf(this.f2983b.getTextScaleX()), Float.valueOf(this.f2983b.getTextSkewX()), Float.valueOf(this.f2983b.getLetterSpacing()), Integer.valueOf(this.f2983b.getFlags()), this.f2983b.getTextLocales(), this.f2983b.getTypeface(), Boolean.valueOf(this.f2983b.isElegantTextHeight()), this.f2984c, Integer.valueOf(this.f2985d), Integer.valueOf(this.f2986e));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return C0681c.m8553a(Float.valueOf(this.f2983b.getTextSize()), Float.valueOf(this.f2983b.getTextScaleX()), Float.valueOf(this.f2983b.getTextSkewX()), Float.valueOf(this.f2983b.getLetterSpacing()), Integer.valueOf(this.f2983b.getFlags()), this.f2983b.getTextLocale(), this.f2983b.getTypeface(), Boolean.valueOf(this.f2983b.isElegantTextHeight()), this.f2984c, Integer.valueOf(this.f2985d), Integer.valueOf(this.f2986e));
            }
            if (Build.VERSION.SDK_INT < 18 && Build.VERSION.SDK_INT < 17) {
                return C0681c.m8553a(Float.valueOf(this.f2983b.getTextSize()), Float.valueOf(this.f2983b.getTextScaleX()), Float.valueOf(this.f2983b.getTextSkewX()), Integer.valueOf(this.f2983b.getFlags()), this.f2983b.getTypeface(), this.f2984c, Integer.valueOf(this.f2985d), Integer.valueOf(this.f2986e));
            }
            return C0681c.m8553a(Float.valueOf(this.f2983b.getTextSize()), Float.valueOf(this.f2983b.getTextScaleX()), Float.valueOf(this.f2983b.getTextSkewX()), Integer.valueOf(this.f2983b.getFlags()), this.f2983b.getTextLocale(), this.f2983b.getTypeface(), this.f2984c, Integer.valueOf(this.f2985d), Integer.valueOf(this.f2986e));
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x011d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 412
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.p035e.C0667c.C0668a.toString():java.lang.String");
        }
    }

    /* renamed from: a */
    public final C0668a m8568a() {
        return this.f2981d;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f2980c.charAt(i);
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f2980c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f2980c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f2980c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return (T[]) this.f2980c.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f2980c.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f2980c.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f2980c.removeSpan(obj);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f2980c.setSpan(obj, i, i2, i3);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f2980c.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f2980c.toString();
    }
}
