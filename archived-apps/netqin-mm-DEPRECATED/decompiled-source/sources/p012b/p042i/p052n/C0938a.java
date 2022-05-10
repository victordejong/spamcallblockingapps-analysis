package p012b.p042i.p052n;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import p012b.p042i.p053o.C0943c;
/* renamed from: b.i.n.a */
/* loaded from: classes-dex2jar.jar:b/i/n/a.class */
public class C0938a implements Spannable {

    /* renamed from: a */
    public final Spannable f4178a;

    /* renamed from: b */
    public final C0939a f4179b;

    /* renamed from: c */
    public final PrecomputedText f4180c;

    /* renamed from: b.i.n.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/n/a$a.class */
    public static final class C0939a {

        /* renamed from: a */
        public final TextPaint f4181a;

        /* renamed from: b */
        public final TextDirectionHeuristic f4182b;

        /* renamed from: c */
        public final int f4183c;

        /* renamed from: d */
        public final int f4184d;

        /* renamed from: b.i.n.a$a$a */
        /* loaded from: classes-dex2jar.jar:b/i/n/a$a$a.class */
        public static class C0940a {

            /* renamed from: a */
            public final TextPaint f4185a;

            /* renamed from: b */
            public TextDirectionHeuristic f4186b;

            /* renamed from: c */
            public int f4187c;

            /* renamed from: d */
            public int f4188d;

            public C0940a(TextPaint textPaint) {
                this.f4185a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f4187c = 1;
                    this.f4188d = 1;
                } else {
                    this.f4188d = 0;
                    this.f4187c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f4186b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f4186b = null;
                }
            }

            /* renamed from: a */
            public C0940a m35454a(int i) {
                this.f4187c = i;
                return this;
            }

            /* renamed from: a */
            public C0940a m35453a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f4186b = textDirectionHeuristic;
                return this;
            }

            /* renamed from: a */
            public C0939a m35455a() {
                return new C0939a(this.f4185a, this.f4186b, this.f4187c, this.f4188d);
            }

            /* renamed from: b */
            public C0940a m35452b(int i) {
                this.f4188d = i;
                return this;
            }
        }

        public C0939a(PrecomputedText.Params params) {
            this.f4181a = params.getTextPaint();
            this.f4182b = params.getTextDirection();
            this.f4183c = params.getBreakStrategy();
            this.f4184d = params.getHyphenationFrequency();
            int i = Build.VERSION.SDK_INT;
        }

        public C0939a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i).setHyphenationFrequency(i2).setTextDirection(textDirectionHeuristic).build();
            }
            this.f4181a = textPaint;
            this.f4182b = textDirectionHeuristic;
            this.f4183c = i;
            this.f4184d = i2;
        }

        /* renamed from: a */
        public int m35460a() {
            return this.f4183c;
        }

        /* renamed from: a */
        public boolean m35459a(C0939a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f4183c != aVar.m35460a() || this.f4184d != aVar.m35458b())) || this.f4181a.getTextSize() != aVar.m35456d().getTextSize() || this.f4181a.getTextScaleX() != aVar.m35456d().getTextScaleX() || this.f4181a.getTextSkewX() != aVar.m35456d().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f4181a.getLetterSpacing() != aVar.m35456d().getLetterSpacing() || !TextUtils.equals(this.f4181a.getFontFeatureSettings(), aVar.m35456d().getFontFeatureSettings()))) || this.f4181a.getFlags() != aVar.m35456d().getFlags()) {
                return false;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                if (!this.f4181a.getTextLocales().equals(aVar.m35456d().getTextLocales())) {
                    return false;
                }
            } else if (i >= 17 && !this.f4181a.getTextLocale().equals(aVar.m35456d().getTextLocale())) {
                return false;
            }
            return this.f4181a.getTypeface() == null ? aVar.m35456d().getTypeface() == null : this.f4181a.getTypeface().equals(aVar.m35456d().getTypeface());
        }

        /* renamed from: b */
        public int m35458b() {
            return this.f4184d;
        }

        /* renamed from: c */
        public TextDirectionHeuristic m35457c() {
            return this.f4182b;
        }

        /* renamed from: d */
        public TextPaint m35456d() {
            return this.f4181a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0939a)) {
                return false;
            }
            C0939a aVar = (C0939a) obj;
            if (!m35459a(aVar)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f4182b == aVar.m35457c();
        }

        public int hashCode() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                return C0943c.m35447a(Float.valueOf(this.f4181a.getTextSize()), Float.valueOf(this.f4181a.getTextScaleX()), Float.valueOf(this.f4181a.getTextSkewX()), Float.valueOf(this.f4181a.getLetterSpacing()), Integer.valueOf(this.f4181a.getFlags()), this.f4181a.getTextLocales(), this.f4181a.getTypeface(), Boolean.valueOf(this.f4181a.isElegantTextHeight()), this.f4182b, Integer.valueOf(this.f4183c), Integer.valueOf(this.f4184d));
            }
            if (i >= 21) {
                return C0943c.m35447a(Float.valueOf(this.f4181a.getTextSize()), Float.valueOf(this.f4181a.getTextScaleX()), Float.valueOf(this.f4181a.getTextSkewX()), Float.valueOf(this.f4181a.getLetterSpacing()), Integer.valueOf(this.f4181a.getFlags()), this.f4181a.getTextLocale(), this.f4181a.getTypeface(), Boolean.valueOf(this.f4181a.isElegantTextHeight()), this.f4182b, Integer.valueOf(this.f4183c), Integer.valueOf(this.f4184d));
            }
            if (i < 18 && i < 17) {
                return C0943c.m35447a(Float.valueOf(this.f4181a.getTextSize()), Float.valueOf(this.f4181a.getTextScaleX()), Float.valueOf(this.f4181a.getTextSkewX()), Integer.valueOf(this.f4181a.getFlags()), this.f4181a.getTypeface(), this.f4182b, Integer.valueOf(this.f4183c), Integer.valueOf(this.f4184d));
            }
            return C0943c.m35447a(Float.valueOf(this.f4181a.getTextSize()), Float.valueOf(this.f4181a.getTextScaleX()), Float.valueOf(this.f4181a.getTextSkewX()), Integer.valueOf(this.f4181a.getFlags()), this.f4181a.getTextLocale(), this.f4181a.getTypeface(), this.f4182b, Integer.valueOf(this.f4183c), Integer.valueOf(this.f4184d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f4181a.getTextSize());
            sb.append(", textScaleX=" + this.f4181a.getTextScaleX());
            sb.append(", textSkewX=" + this.f4181a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f4181a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f4181a.isElegantTextHeight());
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                sb.append(", textLocale=" + this.f4181a.getTextLocales());
            } else if (i >= 17) {
                sb.append(", textLocale=" + this.f4181a.getTextLocale());
            }
            sb.append(", typeface=" + this.f4181a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f4181a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f4182b);
            sb.append(", breakStrategy=" + this.f4183c);
            sb.append(", hyphenationFrequency=" + this.f4184d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: a */
    public C0939a m35462a() {
        return this.f4179b;
    }

    /* renamed from: b */
    public PrecomputedText m35461b() {
        Spannable spannable = this.f4178a;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.f4178a.charAt(i);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f4178a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f4178a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f4178a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i, int i2, Class<T> cls) {
        return Build.VERSION.SDK_INT >= 29 ? (T[]) this.f4180c.getSpans(i, i2, cls) : (T[]) this.f4178a.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f4178a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i, int i2, Class cls) {
        return this.f4178a.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f4180c.removeSpan(obj);
        } else {
            this.f4178a.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i, int i2, int i3) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            this.f4180c.setSpan(obj, i, i2, i3);
        } else {
            this.f4178a.setSpan(obj, i, i2, i3);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.f4178a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f4178a.toString();
    }
}
