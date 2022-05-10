package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5543b;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5577a;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5578b;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5580d;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5582e;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5583f;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5584g;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5585h;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.C5587i;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5619o;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5620p;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5621q;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5622r;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.a.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/a/c.class */
public final class C5596c implements AbstractC5602e {

    /* renamed from: a */
    public AbstractC9866a<C5560i> f18641a;

    /* renamed from: b */
    public AbstractC9866a<LayoutInflater> f18642b;

    /* renamed from: c */
    public AbstractC9866a<AbstractC5863i> f18643c;

    /* renamed from: d */
    public AbstractC9866a<C5583f> f18644d;

    /* renamed from: e */
    public AbstractC9866a<C5585h> f18645e;

    /* renamed from: f */
    public AbstractC9866a<C5577a> f18646f;

    /* renamed from: g */
    public AbstractC9866a<C5580d> f18647g;

    /* renamed from: c.d.e.q.p0.j.q.a.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/a/c$b.class */
    public static final class C5598b {

        /* renamed from: a */
        public C5619o f18648a;

        public C5598b() {
        }

        /* renamed from: a */
        public C5598b m23445a(C5619o oVar) {
            C5546e.m23587a(oVar);
            this.f18648a = oVar;
            return this;
        }

        /* renamed from: a */
        public AbstractC5602e m23446a() {
            C5546e.m23586a(this.f18648a, C5619o.class);
            return new C5596c(this.f18648a);
        }
    }

    public C5596c(C5619o oVar) {
        m23448a(oVar);
    }

    /* renamed from: e */
    public static C5598b m23447e() {
        return new C5598b();
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.AbstractC5602e
    /* renamed from: a */
    public C5583f mo23440a() {
        return this.f18644d.get();
    }

    /* renamed from: a */
    public final void m23448a(C5619o oVar) {
        this.f18641a = C5543b.m23592a(C5620p.m23395a(oVar));
        this.f18642b = C5543b.m23592a(C5622r.m23391a(oVar));
        C5621q a = C5621q.m23393a(oVar);
        this.f18643c = a;
        this.f18644d = C5543b.m23592a(C5584g.m23467a(this.f18641a, this.f18642b, a));
        this.f18645e = C5543b.m23592a(C5587i.m23455a(this.f18641a, this.f18642b, this.f18643c));
        this.f18646f = C5543b.m23592a(C5578b.m23483a(this.f18641a, this.f18642b, this.f18643c));
        this.f18647g = C5543b.m23592a(C5582e.m23469a(this.f18641a, this.f18642b, this.f18643c));
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.AbstractC5602e
    /* renamed from: b */
    public C5580d mo23439b() {
        return this.f18647g.get();
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.AbstractC5602e
    /* renamed from: c */
    public C5577a mo23438c() {
        return this.f18646f.get();
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p324a.AbstractC5602e
    /* renamed from: d */
    public C5585h mo23437d() {
        return this.f18645e.get();
    }
}
