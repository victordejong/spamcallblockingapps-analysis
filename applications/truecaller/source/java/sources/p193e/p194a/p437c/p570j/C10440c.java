package p193e.p194a.p437c.p570j;

import com.truecaller.multisim.SimInfo;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import q3.a.i0;
import s1.f0.w;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.insights.deeplink.DeeplinkEnricherImpl$handleRechargeNumberMissing$1", f = "DeeplinkEnricher.kt", l = {53}, m = "invokeSuspend")
/* renamed from: e.a.c.j.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/j/c.class */
public final class C10440c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f31100e;

    /* renamed from: f */
    public final /* synthetic */ C10441d f31101f;

    /* renamed from: g */
    public final /* synthetic */ long f31102g;

    /* renamed from: h */
    public final /* synthetic */ l f31103h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC10443f f31104i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10440c(C10441d c10441d, long j, l lVar, AbstractC10443f abstractC10443f, d dVar) {
        super(2, dVar);
        this.f31101f = c10441d;
        this.f31102g = j;
        this.f31103h = lVar;
        this.f31104i = abstractC10443f;
    }

    /* renamed from: i */
    public final d<s> m26138i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C10440c(this.f31101f, this.f31102g, this.f31103h, this.f31104i, dVar);
    }

    /* renamed from: k */
    public final Object m26137k(Object obj, Object obj2) {
        return m26138i(obj, (d) obj2).m26136s(s.a);
    }

    /* renamed from: s */
    public final Object m26136s(Object obj) {
        a aVar = a.a;
        int i = this.f31100e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC10257g abstractC10257g = this.f31101f.f31105a;
            long j = this.f31102g;
            this.f31100e = 1;
            Object mo26521c = abstractC10257g.mo26521c(j, this);
            obj = mo26521c;
            if (mo26521c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C10266c c10266c = (C10266c) obj;
        if (c10266c == null) {
            this.f31103h.d(this.f31104i.mo26134a());
        } else {
            String str = c10266c.f30438g;
            if (str != null) {
                SimInfo mo21719v = this.f31101f.f31106b.mo21719v(str);
                String str2 = mo21719v != null ? mo21719v.f13985c : null;
                if (str2 != null) {
                    s1.z.c.l.d(str2, "number");
                    String o0 = w.o0(str2, 10);
                    this.f31104i.mo26133b(this.f31104i.mo26134a() + "&recharge_number=" + o0);
                }
            }
            this.f31103h.d(this.f31104i.mo26134a());
        }
        return s.a;
    }
}
