package p131c.p161d.p282e.p352w.p353o;

import p131c.p161d.p282e.p352w.AbstractC6075j;
/* renamed from: c.d.e.w.o.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/r.class */
public class C6105r implements AbstractC6075j {

    /* renamed from: a */
    public final String f19608a;

    /* renamed from: b */
    public final int f19609b;

    public C6105r(String str, int i) {
        this.f19608a = str;
        this.f19609b = i;
    }

    @Override // p131c.p161d.p282e.p352w.AbstractC6075j
    /* renamed from: a */
    public long mo22011a() {
        if (this.f19609b == 0) {
            return 0L;
        }
        String f = m22006f();
        try {
            return Long.valueOf(f).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", f, "long"), e);
        }
    }

    @Override // p131c.p161d.p282e.p352w.AbstractC6075j
    /* renamed from: b */
    public double mo22010b() {
        if (this.f19609b == 0) {
            return 0.0d;
        }
        String f = m22006f();
        try {
            return Double.valueOf(f).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", f, "double"), e);
        }
    }

    @Override // p131c.p161d.p282e.p352w.AbstractC6075j
    /* renamed from: c */
    public String mo22009c() {
        if (this.f19609b == 0) {
            return "";
        }
        m22005g();
        return this.f19608a;
    }

    @Override // p131c.p161d.p282e.p352w.AbstractC6075j
    /* renamed from: d */
    public boolean mo22008d() throws IllegalArgumentException {
        if (this.f19609b == 0) {
            return false;
        }
        String f = m22006f();
        if (C6097m.f19588e.matcher(f).matches()) {
            return true;
        }
        if (C6097m.f19589f.matcher(f).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", f, "boolean"));
    }

    @Override // p131c.p161d.p282e.p352w.AbstractC6075j
    /* renamed from: e */
    public int mo22007e() {
        return this.f19609b;
    }

    /* renamed from: f */
    public final String m22006f() {
        return mo22009c().trim();
    }

    /* renamed from: g */
    public final void m22005g() {
        if (this.f19608a == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
    }
}
