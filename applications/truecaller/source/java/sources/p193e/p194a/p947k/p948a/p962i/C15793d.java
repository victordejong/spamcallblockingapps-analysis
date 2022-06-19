package p193e.p194a.p947k.p948a.p962i;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC15966d0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingViewPresenter$onChangeVideoCallerIdSettings$1", f = "VideoCallerIdSettingViewPresenter.kt", l = {112}, m = "invokeSuspend")
/* renamed from: e.a.k.a.i.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/d.class */
public final class C15793d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44548e;

    /* renamed from: f */
    public final /* synthetic */ C15795f f44549f;

    /* renamed from: g */
    public final /* synthetic */ boolean f44550g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15793d(C15795f c15795f, boolean z, d dVar) {
        super(2, dVar);
        this.f44549f = c15795f;
        this.f44550g = z;
    }

    /* renamed from: i */
    public final d<s> m18302i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15793d(this.f44549f, this.f44550g, dVar);
    }

    /* renamed from: k */
    public final Object m18301k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15793d(this.f44549f, this.f44550g, dVar).m18300s(s.a);
    }

    /* renamed from: s */
    public final Object m18300s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f44548e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f44550g) {
                AbstractC15966d0 abstractC15966d0 = this.f44549f.f44555f;
                this.f44548e = 1;
                Object mo18057g = abstractC15966d0.mo18057g(this);
                obj = mo18057g;
                if (mo18057g == aVar) {
                    return aVar;
                }
            }
            this.f44549f.f44554e.setEnabled(this.f44550g);
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.f44549f.f44554e.mo17921e(true);
            AbstractC15792c abstractC15792c = (AbstractC15792c) this.f44549f.f57683a;
            if (abstractC15792c != null) {
                abstractC15792c.mo18303i0();
            }
            return sVar;
        }
        this.f44549f.f44554e.setEnabled(this.f44550g);
        return sVar;
    }
}
