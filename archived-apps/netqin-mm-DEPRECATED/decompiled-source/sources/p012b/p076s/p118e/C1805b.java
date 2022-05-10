package p012b.p076s.p118e;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: b.s.e.b */
/* loaded from: classes-dex2jar.jar:b/s/e/b.class */
public class C1805b {

    /* renamed from: h */
    public static final boolean f7251h = Log.isLoggable("Cea608CCParser", 3);

    /* renamed from: a */
    public final AbstractC1809d f7252a;

    /* renamed from: b */
    public int f7253b = 1;

    /* renamed from: c */
    public int f7254c = 4;

    /* renamed from: d */
    public int f7255d = -1;

    /* renamed from: e */
    public C1808c f7256e = new C1808c();

    /* renamed from: f */
    public C1808c f7257f = new C1808c();

    /* renamed from: g */
    public C1808c f7258g = new C1808c();

    /* renamed from: b.s.e.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$a.class */
    public static class C1806a {

        /* renamed from: d */
        public static final String[] f7259d = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};

        /* renamed from: e */
        public static final String[] f7260e = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};

        /* renamed from: f */
        public static final String[] f7261f = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", "*", "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};

        /* renamed from: g */
        public static final String[] f7262g = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", "{", "}", "\\", "^", "_", "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        /* renamed from: a */
        public final byte f7263a;

        /* renamed from: b */
        public final byte f7264b;

        /* renamed from: c */
        public final byte f7265c;

        public C1806a(byte b, byte b2, byte b3) {
            this.f7263a = b;
            this.f7264b = b2;
            this.f7265c = b3;
        }

        /* renamed from: a */
        public static C1806a[] m32059a(byte[] bArr) {
            int length = bArr.length / 3;
            C1806a[] aVarArr = new C1806a[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 3;
                aVarArr[i] = new C1806a(bArr[i2], bArr[i2 + 1], bArr[i2 + 2]);
            }
            return aVarArr;
        }

        /* renamed from: a */
        public final char m32061a(byte b) {
            char c;
            if (b == 42) {
                c = 225;
            } else if (b != 92) {
                switch (b) {
                    case 94:
                        c = 237;
                        break;
                    case 95:
                        c = 243;
                        break;
                    case 96:
                        c = 250;
                        break;
                    default:
                        switch (b) {
                            case 123:
                                c = 231;
                                break;
                            case 124:
                                c = 247;
                                break;
                            case 125:
                                c = 209;
                                break;
                            case 126:
                                c = 241;
                                break;
                            case Byte.MAX_VALUE:
                                c = 9608;
                                break;
                            default:
                                c = (char) b;
                                break;
                        }
                }
            } else {
                c = 233;
            }
            return c;
        }

        /* renamed from: a */
        public final String m32062a() {
            byte b = this.f7264b;
            if (b < 32 || b > Byte.MAX_VALUE) {
                return null;
            }
            StringBuilder sb = new StringBuilder(2);
            sb.append(m32061a(this.f7264b));
            byte b2 = this.f7265c;
            if (b2 >= 32 && b2 <= Byte.MAX_VALUE) {
                sb.append(m32061a(b2));
            }
            return sb.toString();
        }

        /* renamed from: a */
        public final String m32060a(int i) {
            return f7259d[i - 32];
        }

        /* renamed from: b */
        public int m32058b() {
            byte b;
            byte b2 = this.f7264b;
            if ((b2 == 20 || b2 == 28) && (b = this.f7265c) >= 32 && b <= 47) {
                return b;
            }
            return -1;
        }

        /* renamed from: c */
        public String m32057c() {
            String a = m32062a();
            String str = a;
            if (a == null) {
                String g = m32053g();
                str = g;
                if (g == null) {
                    str = m32056d();
                }
            }
            return str;
        }

        /* renamed from: d */
        public final String m32056d() {
            byte b;
            byte b2;
            byte b3 = this.f7264b;
            if ((b3 == 18 || b3 == 26) && (b2 = this.f7265c) >= 32 && b2 <= 63) {
                return f7261f[b2 - 32];
            }
            byte b4 = this.f7264b;
            if ((b4 == 19 || b4 == 27) && (b = this.f7265c) >= 32 && b <= 63) {
                return f7262g[b - 32];
            }
            return null;
        }

        /* renamed from: e */
        public C1812g m32055e() {
            byte b;
            byte b2 = this.f7264b;
            if ((b2 == 17 || b2 == 25) && (b = this.f7265c) >= 32 && b <= 47) {
                return C1812g.m32019a(b);
            }
            return null;
        }

        /* renamed from: f */
        public C1811f m32054f() {
            byte b = this.f7264b;
            if ((b & 112) != 16) {
                return null;
            }
            byte b2 = this.f7265c;
            if ((b2 & 64) != 64) {
                return null;
            }
            if ((b & 7) != 0 || (b2 & 32) == 0) {
                return C1811f.m32024a(this.f7264b, this.f7265c);
            }
            return null;
        }

        /* renamed from: g */
        public final String m32053g() {
            byte b;
            byte b2 = this.f7264b;
            if ((b2 == 17 || b2 == 25) && (b = this.f7265c) >= 48 && b <= 63) {
                return f7260e[b - 48];
            }
            return null;
        }

        /* renamed from: h */
        public int m32052h() {
            byte b;
            byte b2 = this.f7264b;
            if ((b2 == 23 || b2 == 31) && (b = this.f7265c) >= 33 && b <= 35) {
                return b & 3;
            }
            return 0;
        }

        /* renamed from: i */
        public final boolean m32051i() {
            byte b = this.f7264b;
            return b >= 32 && b <= Byte.MAX_VALUE;
        }

        /* renamed from: j */
        public boolean m32050j() {
            return m32051i() || m32048l() || m32049k();
        }

        /* renamed from: k */
        public boolean m32049k() {
            byte b;
            byte b2 = this.f7264b;
            return (b2 == 18 || b2 == 26 || b2 == 19 || b2 == 27) && (b = this.f7265c) >= 32 && b <= 63;
        }

        /* renamed from: l */
        public final boolean m32048l() {
            byte b;
            byte b2 = this.f7264b;
            return (b2 == 17 || b2 == 25) && (b = this.f7265c) >= 48 && b <= 63;
        }

        public String toString() {
            if (this.f7264b < 16 && this.f7265c < 16) {
                return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.f7263a), Byte.valueOf(this.f7264b), Byte.valueOf(this.f7265c));
            }
            int b = m32058b();
            if (b != -1) {
                return String.format("[%d]%s", Byte.valueOf(this.f7263a), m32060a(b));
            }
            int h = m32052h();
            if (h > 0) {
                return String.format("[%d]Tab%d", Byte.valueOf(this.f7263a), Integer.valueOf(h));
            }
            C1811f f = m32054f();
            if (f != null) {
                return String.format("[%d]PAC: %s", Byte.valueOf(this.f7263a), f.toString());
            }
            C1812g e = m32055e();
            return e != null ? String.format("[%d]Mid-row: %s", Byte.valueOf(this.f7263a), e.toString()) : m32050j() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.f7263a), m32057c(), Byte.valueOf(this.f7264b), Byte.valueOf(this.f7265c)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.f7263a), Byte.valueOf(this.f7264b), Byte.valueOf(this.f7265c));
        }
    }

    /* renamed from: b.s.e.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$b.class */
    public static class C1807b {

        /* renamed from: a */
        public final StringBuilder f7266a;

        /* renamed from: b */
        public final C1812g[] f7267b;

        /* renamed from: c */
        public final C1812g[] f7268c;

        public C1807b(String str) {
            StringBuilder sb = new StringBuilder(str);
            this.f7266a = sb;
            this.f7267b = new C1812g[sb.length()];
            this.f7268c = new C1812g[this.f7266a.length()];
        }

        /* renamed from: a */
        public char m32046a(int i) {
            return this.f7266a.charAt(i);
        }

        /* renamed from: a */
        public int m32047a() {
            return this.f7266a.length();
        }

        /* renamed from: a */
        public SpannableStringBuilder m32041a(CaptioningManager.CaptionStyle captionStyle) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f7266a);
            int i = 0;
            C1812g gVar = null;
            int i2 = -1;
            int i3 = -1;
            while (i < this.f7266a.length()) {
                C1812g[] gVarArr = this.f7267b;
                C1812g gVar2 = gVarArr[i] != null ? gVarArr[i] : (this.f7268c[i] == null || (i2 >= 0 && i3 >= 0)) ? null : this.f7268c[i];
                int i4 = i2;
                if (gVar2 != null) {
                    if (i2 >= 0 && i3 >= 0) {
                        m32042a(spannableStringBuilder, gVar2, i2, i);
                    }
                    i4 = i;
                    gVar = gVar2;
                }
                if (this.f7266a.charAt(i) != 160) {
                    i3 = i3;
                    if (i3 < 0) {
                        i3 = i;
                    }
                } else {
                    i3 = i3;
                    if (i3 >= 0) {
                        if (this.f7266a.charAt(i3) != ' ') {
                            i3--;
                        }
                        int i5 = this.f7266a.charAt(i - 1) == ' ' ? i : i + 1;
                        spannableStringBuilder.setSpan(new C1810e(captionStyle.backgroundColor), i3, i5, 33);
                        if (i4 >= 0) {
                            m32042a(spannableStringBuilder, gVar, i4, i5);
                        }
                        i3 = -1;
                    }
                }
                i++;
                i2 = i4;
            }
            return spannableStringBuilder;
        }

        /* renamed from: a */
        public void m32045a(int i, char c) {
            this.f7266a.setCharAt(i, c);
            this.f7267b[i] = null;
        }

        /* renamed from: a */
        public void m32044a(int i, C1811f fVar) {
            this.f7268c[i] = fVar;
        }

        /* renamed from: a */
        public void m32043a(int i, C1812g gVar) {
            this.f7266a.setCharAt(i, ' ');
            this.f7267b[i] = gVar;
        }

        /* renamed from: a */
        public void m32042a(SpannableStringBuilder spannableStringBuilder, C1812g gVar, int i, int i2) {
            if (gVar.m32020a()) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
            }
            if (gVar.m32018b()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }
    }

    /* renamed from: b.s.e.b$c */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$c.class */
    public static class C1808c {

        /* renamed from: a */
        public final String f7269a;

        /* renamed from: b */
        public final C1807b[] f7270b = new C1807b[17];

        /* renamed from: c */
        public int f7271c;

        /* renamed from: d */
        public int f7272d;

        public C1808c() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, (char) 160);
            this.f7269a = new String(cArr);
        }

        /* renamed from: a */
        public static int m32037a(int i, int i2, int i3) {
            if (i >= i2) {
                i2 = i;
                if (i > i3) {
                    i2 = i3;
                }
            }
            return i2;
        }

        /* renamed from: a */
        public final C1807b m32039a(int i) {
            C1807b[] bVarArr = this.f7270b;
            if (bVarArr[i] == null) {
                bVarArr[i] = new C1807b(this.f7269a);
            }
            return this.f7270b[i];
        }

        /* renamed from: a */
        public void m32040a() {
            m32031b(-1);
            C1807b[] bVarArr = this.f7270b;
            int i = this.f7271c;
            if (bVarArr[i] != null) {
                bVarArr[i].m32045a(this.f7272d, (char) 160);
                if (this.f7272d == 31) {
                    this.f7270b[this.f7271c].m32045a(32, (char) 160);
                }
            }
        }

        /* renamed from: a */
        public void m32038a(int i, int i2) {
            int i3;
            int i4;
            if (this.f7271c != i) {
                int i5 = i < i2 ? i : i2;
                int i6 = this.f7271c;
                int i7 = i5;
                if (i6 < i5) {
                    i7 = i6;
                }
                if (i >= this.f7271c) {
                    int i8 = 0;
                    while (true) {
                        i3 = 0;
                        if (i8 >= i7) {
                            break;
                        }
                        C1807b[] bVarArr = this.f7270b;
                        bVarArr[i - i8] = bVarArr[this.f7271c - i8];
                        i8++;
                    }
                } else {
                    while (true) {
                        i7--;
                        i3 = 0;
                        if (i7 < 0) {
                            break;
                        }
                        C1807b[] bVarArr2 = this.f7270b;
                        bVarArr2[i - i7] = bVarArr2[this.f7271c - i7];
                    }
                }
                while (true) {
                    i4 = i;
                    if (i3 <= i - i2) {
                        this.f7270b[i3] = null;
                        i3++;
                    }
                }
                while (true) {
                    i4++;
                    C1807b[] bVarArr3 = this.f7270b;
                    if (i4 < bVarArr3.length) {
                        bVarArr3[i4] = null;
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        public void m32035a(C1811f fVar) {
            if (fVar.m32021e()) {
                m32030b(fVar.m32022d(), fVar.m32023c());
            } else {
                m32030b(fVar.m32022d(), 1);
            }
            m32039a(this.f7271c).m32044a(this.f7272d, fVar);
        }

        /* renamed from: a */
        public void m32034a(C1812g gVar) {
            m32039a(this.f7271c).m32043a(this.f7272d, gVar);
            m32031b(1);
        }

        /* renamed from: a */
        public void m32033a(String str) {
            for (int i = 0; i < str.length(); i++) {
                m32039a(this.f7271c).m32045a(this.f7272d, str.charAt(i));
                m32031b(1);
            }
        }

        /* renamed from: a */
        public SpannableStringBuilder[] m32036a(CaptioningManager.CaptionStyle captionStyle) {
            ArrayList arrayList = new ArrayList(15);
            for (int i = 1; i <= 15; i++) {
                C1807b[] bVarArr = this.f7270b;
                arrayList.add(bVarArr[i] != null ? bVarArr[i].m32041a(captionStyle) : null);
            }
            return (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
        }

        /* renamed from: b */
        public void m32032b() {
            m32030b(this.f7271c + 1, 1);
        }

        /* renamed from: b */
        public final void m32031b(int i) {
            this.f7272d = m32037a(this.f7272d + i, 1, 32);
        }

        /* renamed from: b */
        public final void m32030b(int i, int i2) {
            this.f7271c = m32037a(i, 1, 15);
            this.f7272d = m32037a(i2, 1, 32);
        }

        /* renamed from: c */
        public void m32029c() {
            if (this.f7270b[this.f7271c] != null) {
                for (int i = 0; i < this.f7272d; i++) {
                    if (this.f7270b[this.f7271c].m32046a(i) != 160) {
                        for (int i2 = this.f7272d; i2 < this.f7270b[this.f7271c].m32047a(); i2++) {
                            this.f7270b[i2].m32045a(i2, (char) 160);
                        }
                        return;
                    }
                }
                this.f7270b[this.f7271c] = null;
            }
        }

        /* renamed from: c */
        public void m32028c(int i) {
            int i2;
            int i3;
            int i4 = 0;
            while (true) {
                i2 = this.f7271c;
                if (i4 > i2 - i) {
                    break;
                }
                this.f7270b[i4] = null;
                i4++;
            }
            int i5 = (i2 - i) + 1;
            int i6 = i5;
            if (i5 < 1) {
                i6 = 1;
            }
            while (true) {
                int i7 = this.f7271c;
                i3 = i7;
                if (i6 < i7) {
                    C1807b[] bVarArr = this.f7270b;
                    int i8 = i6 + 1;
                    bVarArr[i6] = bVarArr[i8];
                    i6 = i8;
                }
            }
            while (true) {
                C1807b[] bVarArr2 = this.f7270b;
                if (i3 < bVarArr2.length) {
                    bVarArr2[i3] = null;
                    i3++;
                } else {
                    this.f7272d = 1;
                    return;
                }
            }
        }

        /* renamed from: d */
        public void m32027d() {
            int i = 0;
            while (true) {
                C1807b[] bVarArr = this.f7270b;
                if (i < bVarArr.length) {
                    bVarArr[i] = null;
                    i++;
                } else {
                    this.f7271c = 15;
                    this.f7272d = 1;
                    return;
                }
            }
        }

        /* renamed from: d */
        public void m32026d(int i) {
            m32031b(i);
        }
    }

    /* renamed from: b.s.e.b$d */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$d.class */
    public interface AbstractC1809d {
        /* renamed from: a */
        CaptioningManager.CaptionStyle mo32017a();

        /* renamed from: a */
        void mo32016a(SpannableStringBuilder[] spannableStringBuilderArr);
    }

    /* renamed from: b.s.e.b$e */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$e.class */
    public static class C1810e extends CharacterStyle implements UpdateAppearance {

        /* renamed from: a */
        public int f7273a;

        public C1810e(int i) {
            this.f7273a = i;
        }

        /* renamed from: a */
        public void m32025a(int i) {
            this.f7273a = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.f7273a;
        }
    }

    /* renamed from: b.s.e.b$f */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$f.class */
    public static class C1811f extends C1812g {

        /* renamed from: d */
        public final int f7274d;

        /* renamed from: e */
        public final int f7275e;

        public C1811f(int i, int i2, int i3, int i4) {
            super(i3, i4);
            this.f7274d = i;
            this.f7275e = i2;
        }

        /* renamed from: a */
        public static C1811f m32024a(byte b, byte b2) {
            int i = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b & 7] + ((b2 & 32) >> 5);
            int i2 = 0;
            int i3 = (b2 & 1) != 0 ? 2 : 0;
            if ((b2 & 16) != 0) {
                return new C1811f(i, ((b2 >> 1) & 7) * 4, i3, 0);
            }
            i2 = (b2 >> 1) & 7;
            if (i2 == 7) {
                i3 |= 1;
            }
            return new C1811f(i, -1, i3, i2);
        }

        /* renamed from: c */
        public int m32023c() {
            return this.f7275e;
        }

        /* renamed from: d */
        public int m32022d() {
            return this.f7274d;
        }

        /* renamed from: e */
        public boolean m32021e() {
            return this.f7275e >= 0;
        }

        @Override // p012b.p076s.p118e.C1805b.C1812g
        public String toString() {
            return String.format("{%d, %d}, %s", Integer.valueOf(this.f7274d), Integer.valueOf(this.f7275e), super.toString());
        }
    }

    /* renamed from: b.s.e.b$g */
    /* loaded from: classes-dex2jar.jar:b/s/e/b$g.class */
    public static class C1812g {

        /* renamed from: c */
        public static final String[] f7276c = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};

        /* renamed from: a */
        public final int f7277a;

        /* renamed from: b */
        public final int f7278b;

        public C1812g(int i, int i2) {
            this.f7277a = i;
            this.f7278b = i2;
        }

        /* renamed from: a */
        public static C1812g m32019a(byte b) {
            int i = (b >> 1) & 7;
            int i2 = (b & 1) != 0 ? 2 : 0;
            int i3 = i;
            int i4 = i2;
            if (i == 7) {
                i4 = i2 | 1;
                i3 = 0;
            }
            return new C1812g(i4, i3);
        }

        /* renamed from: a */
        public boolean m32020a() {
            boolean z = true;
            if ((this.f7277a & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: b */
        public boolean m32018b() {
            return (this.f7277a & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            sb.append(f7276c[this.f7278b]);
            if ((this.f7277a & 1) != 0) {
                sb.append(", ITALICS");
            }
            if ((this.f7277a & 2) != 0) {
                sb.append(", UNDERLINE");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public C1805b(AbstractC1809d dVar) {
        this.f7252a = dVar;
    }

    /* renamed from: a */
    public final C1808c m32071a() {
        int i = this.f7253b;
        if (i == 1 || i == 2) {
            return this.f7256e;
        }
        if (i == 3) {
            return this.f7257f;
        }
        if (i == 4) {
            return this.f7258g;
        }
        Log.w("Cea608CCParser", "unrecoginized mode: " + this.f7253b);
        return this.f7256e;
    }

    /* renamed from: a */
    public void m32069a(byte[] bArr) {
        C1806a[] a = C1806a.m32059a(bArr);
        for (int i = 0; i < a.length; i++) {
            if (f7251h) {
                Log.d("Cea608CCParser", a[i].toString());
            }
            if (!m32070a(a[i]) && !m32063e(a[i]) && !m32064d(a[i]) && !m32065c(a[i])) {
                m32067b(a[i]);
            }
        }
    }

    /* renamed from: a */
    public final boolean m32070a(C1806a aVar) {
        int b = aVar.m32058b();
        int i = this.f7255d;
        if (i == -1 || i != b) {
            switch (b) {
                case 32:
                    this.f7253b = 3;
                    break;
                case 33:
                    m32071a().m32040a();
                    break;
                case 34:
                case 35:
                default:
                    this.f7255d = -1;
                    return false;
                case 36:
                    m32071a().m32029c();
                    break;
                case 37:
                case 38:
                case 39:
                    this.f7254c = b - 35;
                    if (this.f7253b != 2) {
                        this.f7256e.m32027d();
                        this.f7257f.m32027d();
                    }
                    this.f7253b = 2;
                    break;
                case 40:
                    Log.i("Cea608CCParser", "Flash On");
                    break;
                case 41:
                    this.f7253b = 1;
                    break;
                case 42:
                    this.f7253b = 4;
                    this.f7258g.m32027d();
                    break;
                case 43:
                    this.f7253b = 4;
                    break;
                case 44:
                    this.f7256e.m32027d();
                    m32066c();
                    break;
                case 45:
                    if (this.f7253b == 2) {
                        m32071a().m32028c(this.f7254c);
                    } else {
                        m32071a().m32032b();
                    }
                    if (this.f7253b == 2) {
                        m32066c();
                        break;
                    }
                    break;
                case 46:
                    this.f7257f.m32027d();
                    break;
                case 47:
                    m32068b();
                    this.f7253b = 3;
                    m32066c();
                    break;
            }
            this.f7255d = b;
            return true;
        }
        this.f7255d = -1;
        return true;
    }

    /* renamed from: b */
    public final void m32068b() {
        C1808c cVar = this.f7256e;
        this.f7256e = this.f7257f;
        this.f7257f = cVar;
    }

    /* renamed from: b */
    public final boolean m32067b(C1806a aVar) {
        if (!aVar.m32050j()) {
            return false;
        }
        if (aVar.m32049k()) {
            m32071a().m32040a();
        }
        m32071a().m32033a(aVar.m32057c());
        int i = this.f7253b;
        if (i != 1 && i != 2) {
            return true;
        }
        m32066c();
        return true;
    }

    /* renamed from: c */
    public final void m32066c() {
        AbstractC1809d dVar = this.f7252a;
        if (dVar != null) {
            this.f7252a.mo32016a(this.f7256e.m32036a(dVar.mo32017a()));
        }
    }

    /* renamed from: c */
    public final boolean m32065c(C1806a aVar) {
        C1812g e = aVar.m32055e();
        if (e == null) {
            return false;
        }
        m32071a().m32034a(e);
        return true;
    }

    /* renamed from: d */
    public final boolean m32064d(C1806a aVar) {
        C1811f f = aVar.m32054f();
        if (f == null) {
            return false;
        }
        if (this.f7253b == 2) {
            m32071a().m32038a(f.m32022d(), this.f7254c);
        }
        m32071a().m32035a(f);
        return true;
    }

    /* renamed from: e */
    public final boolean m32063e(C1806a aVar) {
        int h = aVar.m32052h();
        if (h <= 0) {
            return false;
        }
        m32071a().m32026d(h);
        return true;
    }
}
