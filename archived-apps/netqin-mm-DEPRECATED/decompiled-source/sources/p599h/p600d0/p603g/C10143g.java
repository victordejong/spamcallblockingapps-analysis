package p599h.p600d0.p603g;

import java.io.IOException;
import java.util.List;
import p599h.AbstractC10210e;
import p599h.AbstractC10218i;
import p599h.AbstractC10229p;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10250y;
import p599h.p600d0.p602f.C10129c;
import p599h.p600d0.p602f.C10133f;
/* renamed from: h.d0.g.g */
/* loaded from: classes2-dex2jar.jar:h/d0/g/g.class */
public final class C10143g implements AbstractC10238t.AbstractC10239a {

    /* renamed from: a */
    public final List<AbstractC10238t> f37444a;

    /* renamed from: b */
    public final C10133f f37445b;

    /* renamed from: c */
    public final AbstractC10138c f37446c;

    /* renamed from: d */
    public final C10129c f37447d;

    /* renamed from: e */
    public final int f37448e;

    /* renamed from: f */
    public final C10250y f37449f;

    /* renamed from: g */
    public final AbstractC10210e f37450g;

    /* renamed from: h */
    public final AbstractC10229p f37451h;

    /* renamed from: i */
    public final int f37452i;

    /* renamed from: j */
    public final int f37453j;

    /* renamed from: k */
    public final int f37454k;

    /* renamed from: l */
    public int f37455l;

    public C10143g(List<AbstractC10238t> list, C10133f fVar, AbstractC10138c cVar, C10129c cVar2, int i, C10250y yVar, AbstractC10210e eVar, AbstractC10229p pVar, int i2, int i3, int i4) {
        this.f37444a = list;
        this.f37447d = cVar2;
        this.f37445b = fVar;
        this.f37446c = cVar;
        this.f37448e = i;
        this.f37449f = yVar;
        this.f37450g = eVar;
        this.f37451h = pVar;
        this.f37452i = i2;
        this.f37453j = i3;
        this.f37454k = i4;
    }

    @Override // p599h.AbstractC10238t.AbstractC10239a
    /* renamed from: a */
    public int mo901a() {
        return this.f37453j;
    }

    @Override // p599h.AbstractC10238t.AbstractC10239a
    /* renamed from: a */
    public C10091a0 mo900a(C10250y yVar) throws IOException {
        return m1308a(yVar, this.f37445b, this.f37446c, this.f37447d);
    }

    /* renamed from: a */
    public C10091a0 m1308a(C10250y yVar, C10133f fVar, AbstractC10138c cVar, C10129c cVar2) throws IOException {
        if (this.f37448e < this.f37444a.size()) {
            this.f37455l++;
            if (this.f37446c != null && !this.f37447d.m1371a(yVar.m813g())) {
                throw new IllegalStateException("network interceptor " + this.f37444a.get(this.f37448e - 1) + " must retain the same host and port");
            } else if (this.f37446c == null || this.f37455l <= 1) {
                C10143g gVar = new C10143g(this.f37444a, fVar, cVar, cVar2, this.f37448e + 1, yVar, this.f37450g, this.f37451h, this.f37452i, this.f37453j, this.f37454k);
                AbstractC10238t tVar = this.f37444a.get(this.f37448e);
                C10091a0 a = tVar.mo902a(gVar);
                if (cVar != null && this.f37448e + 1 < this.f37444a.size() && gVar.f37455l != 1) {
                    throw new IllegalStateException("network interceptor " + tVar + " must call proceed() exactly once");
                } else if (a == null) {
                    throw new NullPointerException("interceptor " + tVar + " returned null");
                } else if (a.m1543a() != null) {
                    return a;
                } else {
                    throw new IllegalStateException("interceptor " + tVar + " returned a response with no body");
                }
            } else {
                throw new IllegalStateException("network interceptor " + this.f37444a.get(this.f37448e - 1) + " must call proceed() exactly once");
            }
        } else {
            throw new AssertionError();
        }
    }

    @Override // p599h.AbstractC10238t.AbstractC10239a
    /* renamed from: b */
    public int mo899b() {
        return this.f37454k;
    }

    @Override // p599h.AbstractC10238t.AbstractC10239a
    /* renamed from: c */
    public int mo898c() {
        return this.f37452i;
    }

    /* renamed from: d */
    public AbstractC10210e m1307d() {
        return this.f37450g;
    }

    /* renamed from: e */
    public AbstractC10218i m1306e() {
        return this.f37447d;
    }

    /* renamed from: f */
    public AbstractC10229p m1305f() {
        return this.f37451h;
    }

    /* renamed from: g */
    public AbstractC10138c m1304g() {
        return this.f37446c;
    }

    /* renamed from: h */
    public C10133f m1303h() {
        return this.f37445b;
    }

    @Override // p599h.AbstractC10238t.AbstractC10239a
    /* renamed from: i */
    public C10250y mo897i() {
        return this.f37449f;
    }
}
