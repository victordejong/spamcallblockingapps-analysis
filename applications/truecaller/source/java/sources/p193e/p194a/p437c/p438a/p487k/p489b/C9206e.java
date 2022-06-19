package p193e.p194a.p437c.p438a.p487k.p489b;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p487k.p490c.C9207a;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.b.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/e.class */
public final class C9206e extends AbstractC9107c<C9207a, Boolean> {

    /* renamed from: b */
    public final AbstractC10257g f27988b;

    /* renamed from: c */
    public final f f27989c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9206e(AbstractC10257g abstractC10257g, @Named("IO") f fVar) {
        super(fVar);
        l.e(abstractC10257g, "messageFetcher");
        l.e(fVar, "ioContext");
        this.f27988b = abstractC10257g;
        this.f27989c = fVar;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ Boolean mo27441a() {
        return Boolean.FALSE;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<Boolean> mo27440b(C9207a c9207a) {
        C9207a c9207a2 = c9207a;
        l.e(c9207a2, "input");
        return d.P(new C9202d(this, c9207a2, null));
    }
}
