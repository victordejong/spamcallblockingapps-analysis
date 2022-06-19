package p193e.p194a.p437c.p552i.p555c;

import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p529e.C9980a;
import s1.z.c.l;
/* renamed from: e.a.c.i.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/c/d.class */
public final class C10314d implements AbstractC10313c {

    /* renamed from: a */
    public final AbstractC10302a f30602a;

    @Inject
    public C10314d(AbstractC10302a abstractC10302a) {
        l.e(abstractC10302a, "databaseManager");
        this.f30602a = abstractC10302a;
    }

    @Override // p193e.p194a.p437c.p552i.p555c.AbstractC10313c
    /* renamed from: a */
    public C9980a mo26385a() {
        return new C9980a(this.f30602a);
    }
}
