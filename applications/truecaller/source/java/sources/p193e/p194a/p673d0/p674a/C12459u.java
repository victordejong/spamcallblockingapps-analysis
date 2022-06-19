package p193e.p194a.p673d0.p674a;

import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p673d0.C12560v;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callerid.window.CallerIdWindowPresenter$setupAvatar$1", f = "CallerIdWindowPresenter.kt", l = {372}, m = "invokeSuspend")
/* renamed from: e.a.d0.a.u */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/u.class */
public final class C12459u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f36396e;

    /* renamed from: f */
    public int f36397f;

    /* renamed from: g */
    public final /* synthetic */ C12439m f36398g;

    /* renamed from: h */
    public final /* synthetic */ C12560v f36399h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12459u(C12439m c12439m, C12560v c12560v, d dVar) {
        super(2, dVar);
        this.f36398g = c12439m;
        this.f36399h = c12560v;
    }

    /* renamed from: i */
    public final d<s> m22973i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12459u(this.f36398g, this.f36399h, dVar);
    }

    /* renamed from: k */
    public final Object m22972k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12459u(this.f36398g, this.f36399h, dVar).m22971s(s.a);
    }

    /* renamed from: s */
    public final Object m22971s(Object obj) {
        Object obj2;
        AbstractC12438l abstractC12438l;
        a aVar = a.a;
        int i = this.f36397f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12439m c12439m = this.f36398g;
            AbstractC12438l abstractC12438l2 = (AbstractC12438l) c12439m.f57683a;
            if (abstractC12438l2 != null) {
                C12560v c12560v = this.f36399h;
                this.f36396e = abstractC12438l2;
                this.f36397f = 1;
                obj2 = c12439m.m23014Jj(c12560v, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                abstractC12438l = abstractC12438l2;
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            abstractC12438l = (AbstractC12438l) this.f36396e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        abstractC12438l.mo23019w5((AbstractC15816a) obj2, VideoPlayerContext.POPUP_CALLER_ID.getValue());
        return s.a;
    }
}
