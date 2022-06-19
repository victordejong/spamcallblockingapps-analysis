package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$onPeersDeleted$1", f = "VoipContactTileGroupPresenter.kt", l = {219}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/g.class */
public final class C11205g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33093e;

    /* renamed from: f */
    public final /* synthetic */ C11206h f33094f;

    /* renamed from: g */
    public final /* synthetic */ Set f33095g;

    /* renamed from: h */
    public final /* synthetic */ Set f33096h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11205g(C11206h c11206h, Set set, Set set2, d dVar) {
        super(2, dVar);
        this.f33094f = c11206h;
        this.f33095g = set;
        this.f33096h = set2;
    }

    /* renamed from: i */
    public final d<s> m25039i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11205g(this.f33094f, this.f33095g, this.f33096h, dVar);
    }

    /* renamed from: k */
    public final Object m25038k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11205g(this.f33094f, this.f33095g, this.f33096h, dVar).m25037s(s.a);
    }

    /* renamed from: s */
    public final Object m25037s(Object obj) {
        a aVar = a.a;
        int i = this.f33093e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f33093e = 1;
            if (s1.a.a.a.v0.f.d.D0(500L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f33094f.m25035Jj();
        for (C11593e c11593e : this.f33094f.f33097d) {
            AbstractC11203e abstractC11203e = (AbstractC11203e) this.f33094f.f57683a;
            if (abstractC11203e != null) {
                abstractC11203e.mo25047h0(c11593e.f33990a);
            }
        }
        this.f33094f.m25033Lj(this.f33095g);
        if (this.f33094f.f33097d.size() == 1) {
            this.f33094f.m25034Kj((C11593e) s1.u.i.A(this.f33096h));
        }
        return s.a;
    }
}
