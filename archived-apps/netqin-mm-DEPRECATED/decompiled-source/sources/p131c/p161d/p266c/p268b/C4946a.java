package p131c.p161d.p266c.p268b;

import com.google.common.cache.LongAddables;
/* renamed from: c.d.c.b.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/b/a.class */
public final class C4946a implements AbstractC4947b {

    /* renamed from: a */
    public final AbstractC4952g f17578a = LongAddables.m8457a();

    /* renamed from: b */
    public final AbstractC4952g f17579b = LongAddables.m8457a();

    /* renamed from: c */
    public final AbstractC4952g f17580c = LongAddables.m8457a();

    /* renamed from: d */
    public final AbstractC4952g f17581d = LongAddables.m8457a();

    /* renamed from: e */
    public final AbstractC4952g f17582e = LongAddables.m8457a();

    /* renamed from: f */
    public final AbstractC4952g f17583f = LongAddables.m8457a();

    /* renamed from: c */
    public static long m24744c(long j) {
        if (j < 0) {
            j = Long.MAX_VALUE;
        }
        return j;
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: a */
    public void mo8529a() {
        this.f17583f.increment();
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: a */
    public void mo8528a(int i) {
        this.f17578a.add(i);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: a */
    public void mo8527a(long j) {
        this.f17581d.increment();
        this.f17582e.add(j);
    }

    /* renamed from: a */
    public void m24745a(AbstractC4947b bVar) {
        C4949d b = bVar.mo8526b();
        this.f17578a.add(b.m24742b());
        this.f17579b.add(b.m24739e());
        this.f17580c.add(b.m24740d());
        this.f17581d.add(b.m24741c());
        this.f17582e.add(b.m24738f());
        this.f17583f.add(b.m24743a());
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: b */
    public C4949d mo8526b() {
        return new C4949d(m24744c(this.f17578a.sum()), m24744c(this.f17579b.sum()), m24744c(this.f17580c.sum()), m24744c(this.f17581d.sum()), m24744c(this.f17582e.sum()), m24744c(this.f17583f.sum()));
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: b */
    public void mo8525b(int i) {
        this.f17579b.add(i);
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4947b
    /* renamed from: b */
    public void mo8524b(long j) {
        this.f17580c.increment();
        this.f17582e.add(j);
    }
}
