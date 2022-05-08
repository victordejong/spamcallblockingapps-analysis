package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.x5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x5.class */
public final class C8775x5 implements AbstractC8623h5 {

    /* renamed from: a */
    public final AbstractC8648j5 f20113a;

    /* renamed from: b */
    public final String f20114b;

    /* renamed from: c */
    public final Object[] f20115c;

    /* renamed from: d */
    public final int f20116d;

    public C8775x5(AbstractC8648j5 j5Var, String str, Object[] objArr) {
        this.f20113a = j5Var;
        this.f20114b = str;
        this.f20115c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f20116d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f20116d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8623h5
    /* renamed from: a */
    public final AbstractC8648j5 mo17067a() {
        return this.f20113a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8623h5
    /* renamed from: b */
    public final boolean mo17066b() {
        return (this.f20116d & 2) == 2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8623h5
    /* renamed from: c */
    public final int mo17065c() {
        return (this.f20116d & 1) == 1 ? AbstractC8568c4.C8573e.f19636i : AbstractC8568c4.C8573e.f19637j;
    }

    /* renamed from: d */
    public final String m17064d() {
        return this.f20114b;
    }

    /* renamed from: e */
    public final Object[] m17063e() {
        return this.f20115c;
    }
}
