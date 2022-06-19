package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.w6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/w6.class */
public class C1404w6 {

    /* renamed from: a */
    protected volatile o7 f3969a;

    /* renamed from: b */
    private volatile AbstractC1351m5 f3970b;

    static {
        C1413y5.m1877a();
    }

    /* renamed from: a */
    public final int m1895a() {
        if (this.f3970b != null) {
            return this.f3970b.i.length;
        }
        if (this.f3969a == null) {
            return 0;
        }
        return this.f3969a.f();
    }

    /* renamed from: b */
    public final AbstractC1351m5 m1894b() {
        if (this.f3970b != null) {
            return this.f3970b;
        }
        synchronized (this) {
            if (this.f3970b != null) {
                return this.f3970b;
            }
            if (this.f3969a == null) {
                this.f3970b = AbstractC1351m5.f3935g;
            } else {
                this.f3970b = this.f3969a.e();
            }
            return this.f3970b;
        }
    }

    /* renamed from: c */
    protected final void m1893c(o7 o7Var) {
        if (this.f3969a != null) {
            return;
        }
        synchronized (this) {
            if (this.f3969a != null) {
                return;
            }
            try {
                this.f3969a = o7Var;
                this.f3970b = AbstractC1351m5.f3935g;
            } catch (zzic e) {
                this.f3969a = o7Var;
                this.f3970b = AbstractC1351m5.f3935g;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1404w6)) {
            return false;
        }
        C1404w6 c1404w6 = (C1404w6) obj;
        o7 o7Var = this.f3969a;
        o7 o7Var2 = c1404w6.f3969a;
        if (o7Var == null && o7Var2 == null) {
            return m1894b().equals(c1404w6.m1894b());
        }
        if (o7Var != null && o7Var2 != null) {
            return o7Var.equals(o7Var2);
        }
        if (o7Var != null) {
            c1404w6.m1893c(o7Var.m2005g());
            return o7Var.equals(c1404w6.f3969a);
        }
        m1893c(o7Var2.m2005g());
        return this.f3969a.equals(o7Var2);
    }

    public int hashCode() {
        return 1;
    }
}
