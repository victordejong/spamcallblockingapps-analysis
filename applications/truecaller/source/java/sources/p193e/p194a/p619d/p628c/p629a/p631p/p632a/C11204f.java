package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p620a.C11041v;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$deleteTileInternalDelayed$1", f = "VoipContactTileGroupPresenter.kt", l = {325}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/f.class */
public final class C11204f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33090e;

    /* renamed from: f */
    public final /* synthetic */ C11206h f33091f;

    /* renamed from: g */
    public final /* synthetic */ C11593e f33092g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11204f(C11206h c11206h, C11593e c11593e, d dVar) {
        super(2, dVar);
        this.f33091f = c11206h;
        this.f33092g = c11593e;
    }

    /* renamed from: i */
    public final d<s> m25042i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11204f(this.f33091f, this.f33092g, dVar);
    }

    /* renamed from: k */
    public final Object m25041k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11204f(this.f33091f, this.f33092g, dVar).m25040s(s.a);
    }

    /* renamed from: s */
    public final Object m25040s(Object obj) {
        a aVar = a.a;
        int i = this.f33090e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            long millis = TimeUnit.SECONDS.toMillis((this.f33091f.f33107n.mo23961b() instanceof C11041v ? 4 : 2) == 1 ? 1L : 0L);
            this.f33090e = 1;
            if (s1.a.a.a.v0.f.d.D0(millis, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (this.f33091f.f33099f.contains(this.f33092g)) {
            this.f33091f.f33099f.remove(this.f33092g);
            C11206h c11206h = this.f33091f;
            C11593e c11593e = this.f33092g;
            AbstractC11203e abstractC11203e = (AbstractC11203e) c11206h.f57683a;
            if (abstractC11203e != null) {
                abstractC11203e.mo25047h0(c11593e.f33990a);
            }
            C11206h c11206h2 = this.f33091f;
            for (C11593e c11593e2 : c11206h2.f33097d) {
                c11206h2.m25036Ij(c11593e2);
                c11206h2.m25032Mj();
            }
            AbstractC11203e abstractC11203e2 = (AbstractC11203e) this.f33091f.f57683a;
            if (abstractC11203e2 != null) {
                abstractC11203e2.mo25050H0();
            }
        }
        return s.a;
    }
}
