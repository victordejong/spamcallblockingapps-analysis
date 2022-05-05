package com.google.p051a.p053b.p054a;

import com.google.p051a.C1515r;
import com.google.p051a.C1519v;
import com.google.p051a.C1520w;
import com.google.p051a.C1522y;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.EnumC1497c;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.a.b.a.g */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/g.class */
public final class C1425g extends C1495a {

    /* renamed from: b */
    private static final Reader f5510b = new C1426h();

    /* renamed from: c */
    private static final Object f5511c = new Object();

    /* renamed from: d */
    private Object[] f5512d;

    /* renamed from: e */
    private int f5513e;

    /* renamed from: f */
    private String[] f5514f;

    /* renamed from: g */
    private int[] f5515g;

    /* renamed from: a */
    private void m6334a(EnumC1497c cVar) {
        if (mo6236f() != cVar) {
            throw new IllegalStateException("Expected " + cVar + " but was " + mo6236f() + m6329v());
        }
    }

    /* renamed from: a */
    private void m6333a(Object obj) {
        int i = this.f5513e;
        Object[] objArr = this.f5512d;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[i * 2];
            int[] iArr = new int[i * 2];
            String[] strArr = new String[i * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f5515g, 0, iArr, 0, this.f5513e);
            System.arraycopy(this.f5514f, 0, strArr, 0, this.f5513e);
            this.f5512d = objArr2;
            this.f5515g = iArr;
            this.f5514f = strArr;
        }
        Object[] objArr3 = this.f5512d;
        int i2 = this.f5513e;
        this.f5513e = i2 + 1;
        objArr3[i2] = obj;
    }

    /* renamed from: t */
    private Object m6331t() {
        return this.f5512d[this.f5513e - 1];
    }

    /* renamed from: u */
    private Object m6330u() {
        Object[] objArr = this.f5512d;
        int i = this.f5513e - 1;
        this.f5513e = i;
        Object obj = objArr[i];
        objArr[this.f5513e] = null;
        return obj;
    }

    /* renamed from: v */
    private String m6329v() {
        return " at path " + mo6226p();
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: a */
    public final void mo6250a() {
        m6334a(EnumC1497c.BEGIN_ARRAY);
        m6333a(((C1515r) m6331t()).iterator());
        this.f5515g[this.f5513e - 1] = 0;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: b */
    public final void mo6245b() {
        m6334a(EnumC1497c.END_ARRAY);
        m6330u();
        m6330u();
        int i = this.f5513e;
        if (i > 0) {
            int[] iArr = this.f5515g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: c */
    public final void mo6240c() {
        m6334a(EnumC1497c.BEGIN_OBJECT);
        m6333a(((C1520w) m6331t()).m6168h().iterator());
    }

    @Override // com.google.p051a.p058d.C1495a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5512d = new Object[]{f5511c};
        this.f5513e = 1;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: d */
    public final void mo6238d() {
        m6334a(EnumC1497c.END_OBJECT);
        m6330u();
        m6330u();
        int i = this.f5513e;
        if (i > 0) {
            int[] iArr = this.f5515g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: e */
    public final boolean mo6237e() {
        EnumC1497c f = mo6236f();
        return (f == EnumC1497c.END_OBJECT || f == EnumC1497c.END_ARRAY) ? false : true;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: f */
    public final EnumC1497c mo6236f() {
        while (this.f5513e != 0) {
            Object t = m6331t();
            if (t instanceof Iterator) {
                boolean z = this.f5512d[this.f5513e - 2] instanceof C1520w;
                Iterator it = (Iterator) t;
                if (!it.hasNext()) {
                    return z ? EnumC1497c.END_OBJECT : EnumC1497c.END_ARRAY;
                }
                if (z) {
                    return EnumC1497c.NAME;
                }
                m6333a(it.next());
            } else if (t instanceof C1520w) {
                return EnumC1497c.BEGIN_OBJECT;
            } else {
                if (t instanceof C1515r) {
                    return EnumC1497c.BEGIN_ARRAY;
                }
                if (t instanceof C1522y) {
                    C1522y yVar = (C1522y) t;
                    if (yVar.m6156j()) {
                        return EnumC1497c.STRING;
                    }
                    if (yVar.m6158h()) {
                        return EnumC1497c.BOOLEAN;
                    }
                    if (yVar.m6157i()) {
                        return EnumC1497c.NUMBER;
                    }
                    throw new AssertionError();
                } else if (t instanceof C1519v) {
                    return EnumC1497c.NULL;
                } else {
                    if (t == f5511c) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return EnumC1497c.END_DOCUMENT;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: g */
    public final String mo6235g() {
        m6334a(EnumC1497c.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m6331t()).next();
        String str = (String) entry.getKey();
        this.f5514f[this.f5513e - 1] = str;
        m6333a(entry.getValue());
        return str;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: h */
    public final String mo6234h() {
        EnumC1497c f = mo6236f();
        if (f == EnumC1497c.STRING || f == EnumC1497c.NUMBER) {
            String b = ((C1522y) m6330u()).mo6164b();
            int i = this.f5513e;
            if (i > 0) {
                int[] iArr = this.f5515g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return b;
        }
        throw new IllegalStateException("Expected " + EnumC1497c.STRING + " but was " + f + m6329v());
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: i */
    public final boolean mo6233i() {
        m6334a(EnumC1497c.BOOLEAN);
        boolean f = ((C1522y) m6330u()).mo6159f();
        int i = this.f5513e;
        if (i > 0) {
            int[] iArr = this.f5515g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return f;
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: j */
    public final void mo6232j() {
        m6334a(EnumC1497c.NULL);
        m6330u();
        int i = this.f5513e;
        if (i > 0) {
            int[] iArr = this.f5515g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: k */
    public final double mo6231k() {
        EnumC1497c f = mo6236f();
        if (f == EnumC1497c.NUMBER || f == EnumC1497c.STRING) {
            double c = ((C1522y) m6331t()).mo6162c();
            if (m6225q() || (!Double.isNaN(c) && !Double.isInfinite(c))) {
                m6330u();
                int i = this.f5513e;
                if (i > 0) {
                    int[] iArr = this.f5515g;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return c;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(c)));
        }
        throw new IllegalStateException("Expected " + EnumC1497c.NUMBER + " but was " + f + m6329v());
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: l */
    public final long mo6230l() {
        EnumC1497c f = mo6236f();
        if (f == EnumC1497c.NUMBER || f == EnumC1497c.STRING) {
            long d = ((C1522y) m6331t()).mo6161d();
            m6330u();
            int i = this.f5513e;
            if (i > 0) {
                int[] iArr = this.f5515g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return d;
        }
        throw new IllegalStateException("Expected " + EnumC1497c.NUMBER + " but was " + f + m6329v());
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: m */
    public final int mo6229m() {
        EnumC1497c f = mo6236f();
        if (f == EnumC1497c.NUMBER || f == EnumC1497c.STRING) {
            int e = ((C1522y) m6331t()).mo6160e();
            m6330u();
            int i = this.f5513e;
            if (i > 0) {
                int[] iArr = this.f5515g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return e;
        }
        throw new IllegalStateException("Expected " + EnumC1497c.NUMBER + " but was " + f + m6329v());
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: n */
    public final void mo6228n() {
        if (mo6236f() == EnumC1497c.NAME) {
            mo6235g();
            this.f5514f[this.f5513e - 2] = "null";
        } else {
            m6330u();
            int i = this.f5513e;
            if (i > 0) {
                this.f5514f[i - 1] = "null";
            }
        }
        int i2 = this.f5513e;
        if (i2 > 0) {
            int[] iArr = this.f5515g;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    /* renamed from: o */
    public final void m6332o() {
        m6334a(EnumC1497c.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m6331t()).next();
        m6333a(entry.getValue());
        m6333a(new C1522y((String) entry.getKey()));
    }

    @Override // com.google.p051a.p058d.C1495a
    /* renamed from: p */
    public final String mo6226p() {
        int i;
        StringBuilder sb = new StringBuilder("$");
        int i2 = 0;
        while (i2 < this.f5513e) {
            Object[] objArr = this.f5512d;
            if (objArr[i2] instanceof C1515r) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f5515g[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof C1520w) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.f5514f;
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

    @Override // com.google.p051a.p058d.C1495a
    public final String toString() {
        return getClass().getSimpleName();
    }
}
