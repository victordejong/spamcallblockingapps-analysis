package p193e.p194a.p947k.p973n.p974d;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p971l.C16126d;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.db.availability.VideoIdAvailabilityRepositoryImpl$getAvailability$2", f = "VideoIdAvailabilityRepository.kt", l = {47}, m = "invokeSuspend")
/* renamed from: e.a.k.n.d.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/d/f.class */
public final class C16164f extends i implements l<d<? super C16126d>, Object> {

    /* renamed from: e */
    public int f45612e;

    /* renamed from: f */
    public final /* synthetic */ C16165g f45613f;

    /* renamed from: g */
    public final /* synthetic */ String f45614g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16164f(C16165g c16165g, String str, d dVar) {
        super(1, dVar);
        this.f45613f = c16165g;
        this.f45614g = str;
    }

    /* renamed from: d */
    public final Object m17788d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16164f(this.f45613f, this.f45614g, dVar).m17786s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17787l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16164f(this.f45613f, this.f45614g, dVar);
    }

    /* renamed from: s */
    public final Object m17786s(Object obj) {
        C16126d c16126d;
        a aVar = a.a;
        int i = this.f45612e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16156a abstractC16156a = (AbstractC16156a) this.f45613f.f45616b.get();
            String str = this.f45614g;
            this.f45612e = 1;
            Object mo17793a = abstractC16156a.mo17793a(str, this);
            obj = mo17793a;
            if (mo17793a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C16161c c16161c = (C16161c) obj;
        if (c16161c != null) {
            String str2 = c16161c.f45606a;
            if (c16161c.f45607b != 1) {
                z = false;
            }
            c16126d = new C16126d(str2, z, c16161c.f45608c);
        } else {
            c16126d = null;
        }
        return c16126d;
    }
}
