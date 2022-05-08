package p081h.p203i.p384e.p386w.p387m;

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10101g;
import p081h.p203i.p384e.C10106l;
import p081h.p203i.p384e.C10107m;
import p081h.p203i.p384e.C10110p;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.EnumC10176b;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.e.w.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/m/a.class */
public final class C10165a extends C10174a {

    /* renamed from: u */
    public static final Reader f22889u = new C10166a();

    /* renamed from: v */
    public static final Object f22890v = new Object();

    /* renamed from: q */
    public Object[] f22891q = new Object[32];

    /* renamed from: r */
    public int f22892r = 0;

    /* renamed from: s */
    public String[] f22893s = new String[32];

    /* renamed from: t */
    public int[] f22894t = new int[32];

    /* renamed from: h.i.e.w.m.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/m/a$a.class */
    public class C10166a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    }

    public C10165a(AbstractC10104j jVar) {
        super(f22889u);
        m13293a(jVar);
    }

    /* renamed from: j */
    private String m13292j() {
        return " at path " + getPath();
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: B */
    public String mo13274B() throws IOException {
        EnumC10176b F = mo13272F();
        if (F == EnumC10176b.STRING || F == EnumC10176b.NUMBER) {
            String r = ((C10110p) m13296N()).mo13361r();
            int i = this.f22892r;
            if (i > 0) {
                int[] iArr = this.f22894t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return r;
        }
        throw new IllegalStateException("Expected " + EnumC10176b.STRING + " but was " + F + m13292j());
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: F */
    public EnumC10176b mo13272F() throws IOException {
        if (this.f22892r == 0) {
            return EnumC10176b.END_DOCUMENT;
        }
        Object M = m13297M();
        if (M instanceof Iterator) {
            boolean z = this.f22891q[this.f22892r - 2] instanceof C10107m;
            Iterator it = (Iterator) M;
            if (!it.hasNext()) {
                return z ? EnumC10176b.END_OBJECT : EnumC10176b.END_ARRAY;
            } else if (z) {
                return EnumC10176b.NAME;
            } else {
                m13293a(it.next());
                return mo13272F();
            }
        } else if (M instanceof C10107m) {
            return EnumC10176b.BEGIN_OBJECT;
        } else {
            if (M instanceof C10101g) {
                return EnumC10176b.BEGIN_ARRAY;
            }
            if (M instanceof C10110p) {
                C10110p pVar = (C10110p) M;
                if (pVar.m13363E()) {
                    return EnumC10176b.STRING;
                }
                if (pVar.m13365C()) {
                    return EnumC10176b.BOOLEAN;
                }
                if (pVar.m13364D()) {
                    return EnumC10176b.NUMBER;
                }
                throw new AssertionError();
            } else if (M instanceof C10106l) {
                return EnumC10176b.NULL;
            } else {
                if (M == f22890v) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: L */
    public void mo13266L() throws IOException {
        if (mo13272F() == EnumC10176b.NAME) {
            mo13242o();
            this.f22893s[this.f22892r - 2] = C14247d.f31851f;
        } else {
            m13296N();
            int i = this.f22892r;
            if (i > 0) {
                this.f22893s[i - 1] = C14247d.f31851f;
            }
        }
        int i2 = this.f22892r;
        if (i2 > 0) {
            int[] iArr = this.f22894t;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    /* renamed from: M */
    public final Object m13297M() {
        return this.f22891q[this.f22892r - 1];
    }

    /* renamed from: N */
    public final Object m13296N() {
        Object[] objArr = this.f22891q;
        int i = this.f22892r - 1;
        this.f22892r = i;
        Object obj = objArr[i];
        objArr[this.f22892r] = null;
        return obj;
    }

    /* renamed from: O */
    public void m13295O() throws IOException {
        m13294a(EnumC10176b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m13297M()).next();
        m13293a(entry.getValue());
        m13293a(new C10110p((String) entry.getKey()));
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: a */
    public void mo13265a() throws IOException {
        m13294a(EnumC10176b.BEGIN_ARRAY);
        m13293a(((C10101g) m13297M()).iterator());
        this.f22894t[this.f22892r - 1] = 0;
    }

    /* renamed from: a */
    public final void m13294a(EnumC10176b bVar) throws IOException {
        if (mo13272F() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + mo13272F() + m13292j());
        }
    }

    /* renamed from: a */
    public final void m13293a(Object obj) {
        int i = this.f22892r;
        Object[] objArr = this.f22891q;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f22891q = Arrays.copyOf(objArr, i2);
            this.f22894t = Arrays.copyOf(this.f22894t, i2);
            this.f22893s = (String[]) Arrays.copyOf(this.f22893s, i2);
        }
        Object[] objArr2 = this.f22891q;
        int i3 = this.f22892r;
        this.f22892r = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: b */
    public void mo13260b() throws IOException {
        m13294a(EnumC10176b.BEGIN_OBJECT);
        m13293a(((C10107m) m13297M()).m13371w().iterator());
    }

    @Override // p081h.p203i.p384e.p391y.C10174a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f22891q = new Object[]{f22890v};
        this.f22892r = 1;
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: f */
    public void mo13251f() throws IOException {
        m13294a(EnumC10176b.END_ARRAY);
        m13296N();
        m13296N();
        int i = this.f22892r;
        if (i > 0) {
            int[] iArr = this.f22894t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: g */
    public void mo13250g() throws IOException {
        m13294a(EnumC10176b.END_OBJECT);
        m13296N();
        m13296N();
        int i = this.f22892r;
        if (i > 0) {
            int[] iArr = this.f22894t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    public String getPath() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.f22892r) {
            Object[] objArr = this.f22891q;
            if (objArr[i2] instanceof C10101g) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f22894t[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof C10107m) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.f22893s;
                        i = i4;
                        if (strArr[i4] != null) {
                            sb.append(strArr[i4]);
                            i = i4;
                        }
                    }
                }
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: h */
    public boolean mo13249h() throws IOException {
        EnumC10176b F = mo13272F();
        return (F == EnumC10176b.END_OBJECT || F == EnumC10176b.END_ARRAY) ? false : true;
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: k */
    public boolean mo13246k() throws IOException {
        m13294a(EnumC10176b.BOOLEAN);
        boolean w = ((C10110p) m13296N()).m13360w();
        int i = this.f22892r;
        if (i > 0) {
            int[] iArr = this.f22894t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return w;
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: l */
    public double mo13245l() throws IOException {
        EnumC10176b F = mo13272F();
        if (F == EnumC10176b.NUMBER || F == EnumC10176b.STRING) {
            double x = ((C10110p) m13297M()).m13359x();
            if (m13248i() || (!Double.isNaN(x) && !Double.isInfinite(x))) {
                m13296N();
                int i = this.f22892r;
                if (i > 0) {
                    int[] iArr = this.f22894t;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return x;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + x);
        }
        throw new IllegalStateException("Expected " + EnumC10176b.NUMBER + " but was " + F + m13292j());
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: m */
    public int mo13244m() throws IOException {
        EnumC10176b F = mo13272F();
        if (F == EnumC10176b.NUMBER || F == EnumC10176b.STRING) {
            int y = ((C10110p) m13297M()).m13358y();
            m13296N();
            int i = this.f22892r;
            if (i > 0) {
                int[] iArr = this.f22894t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return y;
        }
        throw new IllegalStateException("Expected " + EnumC10176b.NUMBER + " but was " + F + m13292j());
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: n */
    public long mo13243n() throws IOException {
        EnumC10176b F = mo13272F();
        if (F == EnumC10176b.NUMBER || F == EnumC10176b.STRING) {
            long z = ((C10110p) m13297M()).m13357z();
            m13296N();
            int i = this.f22892r;
            if (i > 0) {
                int[] iArr = this.f22894t;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return z;
        }
        throw new IllegalStateException("Expected " + EnumC10176b.NUMBER + " but was " + F + m13292j());
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: o */
    public String mo13242o() throws IOException {
        m13294a(EnumC10176b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m13297M()).next();
        String str = (String) entry.getKey();
        this.f22893s[this.f22892r - 1] = str;
        m13293a(entry.getValue());
        return str;
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    /* renamed from: p */
    public void mo13241p() throws IOException {
        m13294a(EnumC10176b.NULL);
        m13296N();
        int i = this.f22892r;
        if (i > 0) {
            int[] iArr = this.f22894t;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10174a
    public String toString() {
        return C10165a.class.getSimpleName();
    }
}
