package com.google.p051a;

import com.google.p051a.p053b.C1382a;
import com.google.p051a.p053b.C1482u;
import java.math.BigInteger;
/* renamed from: com.google.a.y */
/* loaded from: classes-dex2jar.jar:com/google/a/y.class */
public final class C1522y extends AbstractC1517t {

    /* renamed from: a */
    private static final Class<?>[] f5778a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: b */
    private Object f5779b;

    public C1522y(Boolean bool) {
        m6165a(bool);
    }

    public C1522y(Number number) {
        m6165a(number);
    }

    public C1522y(String str) {
        m6165a(str);
    }

    /* renamed from: a */
    private void m6165a(Object obj) {
        if (obj instanceof Character) {
            obj = String.valueOf(((Character) obj).charValue());
        } else {
            C1382a.m6352a((obj instanceof Number) || m6163b(obj));
        }
        this.f5779b = obj;
    }

    /* renamed from: a */
    private static boolean m6166a(C1522y yVar) {
        Object obj = yVar.f5779b;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    /* renamed from: b */
    private static boolean m6163b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : f5778a) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: a */
    public final Number mo6167a() {
        Object obj = this.f5779b;
        return obj instanceof String ? new C1482u((String) obj) : (Number) obj;
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: b */
    public final String mo6164b() {
        Object obj = this.f5779b;
        return obj instanceof Number ? mo6167a().toString() : obj instanceof Boolean ? ((Boolean) obj).toString() : (String) obj;
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: c */
    public final double mo6162c() {
        return this.f5779b instanceof Number ? mo6167a().doubleValue() : Double.parseDouble(mo6164b());
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: d */
    public final long mo6161d() {
        return this.f5779b instanceof Number ? mo6167a().longValue() : Long.parseLong(mo6164b());
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: e */
    public final int mo6160e() {
        return this.f5779b instanceof Number ? mo6167a().intValue() : Integer.parseInt(mo6164b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1522y yVar = (C1522y) obj;
        if (this.f5779b == null) {
            return yVar.f5779b == null;
        }
        if (m6166a(this) && m6166a(yVar)) {
            return mo6167a().longValue() == yVar.mo6167a().longValue();
        }
        if (!(this.f5779b instanceof Number) || !(yVar.f5779b instanceof Number)) {
            return this.f5779b.equals(yVar.f5779b);
        }
        double doubleValue = mo6167a().doubleValue();
        double doubleValue2 = yVar.mo6167a().doubleValue();
        if (doubleValue != doubleValue2) {
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
        return true;
    }

    @Override // com.google.p051a.AbstractC1517t
    /* renamed from: f */
    public final boolean mo6159f() {
        Object obj = this.f5779b;
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(mo6164b());
    }

    /* renamed from: h */
    public final boolean m6158h() {
        return this.f5779b instanceof Boolean;
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.f5779b == null) {
            return 31;
        }
        if (m6166a(this)) {
            doubleToLongBits = mo6167a().longValue();
        } else {
            Object obj = this.f5779b;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(mo6167a().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    /* renamed from: i */
    public final boolean m6157i() {
        return this.f5779b instanceof Number;
    }

    /* renamed from: j */
    public final boolean m6156j() {
        return this.f5779b instanceof String;
    }
}
