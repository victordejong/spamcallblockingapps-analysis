package p012b.p076s.p078b.p079a.p110y0;

import java.util.Arrays;
/* renamed from: b.s.b.a.y0.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/j.class */
public final class C1671j {

    /* renamed from: a */
    public final int f6851a;

    /* renamed from: b */
    public final AbstractC1668i[] f6852b;

    /* renamed from: c */
    public int f6853c;

    public C1671j(AbstractC1668i... iVarArr) {
        this.f6852b = iVarArr;
        this.f6851a = iVarArr.length;
    }

    /* renamed from: a */
    public AbstractC1668i m32407a(int i) {
        return this.f6852b[i];
    }

    /* renamed from: a */
    public AbstractC1668i[] m32408a() {
        return (AbstractC1668i[]) this.f6852b.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1671j.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f6852b, ((C1671j) obj).f6852b);
    }

    public int hashCode() {
        if (this.f6853c == 0) {
            this.f6853c = 527 + Arrays.hashCode(this.f6852b);
        }
        return this.f6853c;
    }
}
