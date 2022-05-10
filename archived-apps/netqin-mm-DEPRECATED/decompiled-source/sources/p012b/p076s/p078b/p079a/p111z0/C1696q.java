package p012b.p076s.p078b.p079a.p111z0;

import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.z0.q */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/q.class */
public final class C1696q extends HttpDataSource.AbstractC0344a {

    /* renamed from: b */
    public final String f6952b;

    /* renamed from: c */
    public final AbstractC1704x f6953c;

    /* renamed from: d */
    public final int f6954d;

    /* renamed from: e */
    public final int f6955e;

    /* renamed from: f */
    public final boolean f6956f;

    public C1696q(String str, AbstractC1704x xVar) {
        this(str, xVar, 8000, 8000, false);
    }

    public C1696q(String str, AbstractC1704x xVar, int i, int i2, boolean z) {
        C1160a.m34521a(str);
        this.f6952b = str;
        this.f6953c = xVar;
        this.f6954d = i;
        this.f6955e = i2;
        this.f6956f = z;
    }

    @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.AbstractC0344a
    /* renamed from: a */
    public C1695p mo32340a(HttpDataSource.C0346c cVar) {
        C1695p pVar = new C1695p(this.f6952b, this.f6954d, this.f6955e, this.f6956f, cVar);
        AbstractC1704x xVar = this.f6953c;
        if (xVar != null) {
            pVar.mo32326a(xVar);
        }
        return pVar;
    }
}
