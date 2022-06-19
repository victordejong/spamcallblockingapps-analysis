package p193e.p194a.p619d.p666y.p668b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.C11730l;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.notification.inapp.VoipInAppNotificationPresenter$onVoipServiceConnected$2", f = "VoipInAppNotificationPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.y.b.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/f.class */
public final class C12304f extends i implements p<C11730l, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35942e;

    /* renamed from: f */
    public final /* synthetic */ C12307h f35943f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12304f(C12307h c12307h, d dVar) {
        super(2, dVar);
        this.f35943f = c12307h;
    }

    /* renamed from: i */
    public final d<s> m23285i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12304f c12304f = new C12304f(this.f35943f, dVar);
        c12304f.f35942e = obj;
        return c12304f;
    }

    /* renamed from: k */
    public final Object m23284k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12307h c12307h = this.f35943f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((C11730l) obj).f34449a.ordinal() != 4) {
            AbstractC12300c abstractC12300c = (AbstractC12300c) c12307h.f57683a;
            if (abstractC12300c != null) {
                abstractC12300c.mo23298F0();
            }
        } else {
            C12307h.m23278Ij(c12307h);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m23283s(Object obj) {
        C25225a.m3932a3(obj);
        if (((C11730l) this.f35942e).f34449a.ordinal() != 4) {
            AbstractC12300c abstractC12300c = (AbstractC12300c) this.f35943f.f57683a;
            if (abstractC12300c != null) {
                abstractC12300c.mo23298F0();
            }
        } else {
            C12307h.m23278Ij(this.f35943f);
        }
        return s.a;
    }
}
