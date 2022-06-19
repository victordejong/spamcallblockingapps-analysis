package p193e.p194a.p947k.p948a.p951b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoPresenter$setUpAudio$1", f = "FullScreenPopupVideoPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.a.b.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/g.class */
public final class C15623g extends i implements p<AbstractC15868b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f44149e;

    /* renamed from: f */
    public final /* synthetic */ C15624h f44150f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15623g(C15624h c15624h, d dVar) {
        super(2, dVar);
        this.f44150f = c15624h;
    }

    /* renamed from: i */
    public final d<s> m18571i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C15623g c15623g = new C15623g(this.f44150f, dVar);
        c15623g.f44149e = obj;
        return c15623g;
    }

    /* renamed from: k */
    public final Object m18570k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C15624h c15624h = this.f44150f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((AbstractC15868b) obj) instanceof AbstractC15868b.C15873e) {
            AbstractC15622f abstractC15622f = (AbstractC15622f) c15624h.f57683a;
            AbstractC15864a.C15865a mo18580Y = abstractC15622f != null ? abstractC15622f.mo18580Y() : null;
            if (mo18580Y instanceof AbstractC15864a.C15865a) {
                AbstractC15622f abstractC15622f2 = (AbstractC15622f) c15624h.f57683a;
                if (abstractC15622f2 != null) {
                    abstractC15622f2.mo18572yA(true);
                    if (c15624h.f44151d == null) {
                        c15624h.m18568Ij(mo18580Y.f44756a);
                    }
                }
            } else {
                AbstractC15622f abstractC15622f3 = (AbstractC15622f) c15624h.f57683a;
                if (abstractC15622f3 != null) {
                    abstractC15622f3.mo18572yA(false);
                }
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m18569s(Object obj) {
        C25225a.m3932a3(obj);
        if (((AbstractC15868b) this.f44149e) instanceof AbstractC15868b.C15873e) {
            AbstractC15622f abstractC15622f = (AbstractC15622f) this.f44150f.f57683a;
            AbstractC15864a.C15865a mo18580Y = abstractC15622f != null ? abstractC15622f.mo18580Y() : null;
            if (mo18580Y instanceof AbstractC15864a.C15865a) {
                AbstractC15622f abstractC15622f2 = (AbstractC15622f) this.f44150f.f57683a;
                if (abstractC15622f2 != null) {
                    abstractC15622f2.mo18572yA(true);
                    C15624h c15624h = this.f44150f;
                    if (c15624h.f44151d == null) {
                        c15624h.m18568Ij(mo18580Y.f44756a);
                    }
                }
            } else {
                AbstractC15622f abstractC15622f3 = (AbstractC15622f) this.f44150f.f57683a;
                if (abstractC15622f3 != null) {
                    abstractC15622f3.mo18572yA(false);
                }
            }
        }
        return s.a;
    }
}
