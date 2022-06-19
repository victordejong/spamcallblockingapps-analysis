package p193e.p194a.p852i.p905t;
/* renamed from: e.a.i.t.d */
/* loaded from: classes2-dex2jar.jar:e/a/i/t/d.class */
public class C15230d implements AbstractC15228b {

    /* renamed from: a */
    public final int f43342a;

    /* renamed from: b */
    public final int f43343b;

    public C15230d(int i) {
        this.f43342a = i;
        this.f43343b = i;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15228b
    /* renamed from: a */
    public int mo19034a(int i) {
        if (!(i - this.f43342a == 0)) {
            return -1;
        }
        return this.f43343b;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15228b
    /* renamed from: b */
    public int mo19033b(int i) {
        return i < this.f43342a ? i : i + 1;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15228b
    /* renamed from: c */
    public int mo19032c(int i) {
        return i < this.f43342a ? i : i + 1;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15228b
    /* renamed from: d */
    public int mo19031d(int i) {
        int i2 = this.f43342a;
        if (i - i2 == 0) {
            return -1;
        }
        return i < i2 ? i : i - 1;
    }

    @Override // p193e.p194a.p852i.p905t.AbstractC15228b
    /* renamed from: e */
    public boolean mo19030e(int i) {
        return i - this.f43342a == 0;
    }
}
