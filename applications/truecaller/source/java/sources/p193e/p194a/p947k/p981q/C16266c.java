package p193e.p194a.p947k.p981q;

import com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p969c.AbstractC16083t0;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import q3.a.i0;
import q3.a.n;
import q3.a.w2.h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker$downloadVideo$2$1", f = "VideoCallerIdCachingWorker.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.q.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/q/c.class */
public final class C16266c extends i implements p<AbstractC16262b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f45819e;

    /* renamed from: f */
    public final /* synthetic */ n f45820f;

    /* renamed from: g */
    public final /* synthetic */ VideoCallerIdCachingWorker f45821g;

    /* renamed from: h */
    public final /* synthetic */ String f45822h;

    /* renamed from: i */
    public final /* synthetic */ String f45823i;

    /* renamed from: j */
    public final /* synthetic */ long f45824j;

    /* renamed from: k */
    public final /* synthetic */ boolean f45825k;

    /* renamed from: l */
    public final /* synthetic */ i0 f45826l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16266c(n nVar, d dVar, VideoCallerIdCachingWorker videoCallerIdCachingWorker, String str, String str2, long j, boolean z, i0 i0Var) {
        super(2, dVar);
        this.f45820f = nVar;
        this.f45821g = videoCallerIdCachingWorker;
        this.f45822h = str;
        this.f45823i = str2;
        this.f45824j = j;
        this.f45825k = z;
        this.f45826l = i0Var;
    }

    /* renamed from: i */
    public final d<s> m17660i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16266c c16266c = new C16266c(this.f45820f, dVar, this.f45821g, this.f45822h, this.f45823i, this.f45824j, this.f45825k, this.f45826l);
        c16266c.f45819e = obj;
        return c16266c;
    }

    /* renamed from: k */
    public final Object m17659k(Object obj, Object obj2) {
        C16266c m17660i = m17660i(obj, (d) obj2);
        s sVar = s.a;
        m17660i.m17658s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m17658s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC16262b abstractC16262b = (AbstractC16262b) this.f45819e;
        if (abstractC16262b instanceof AbstractC16262b.C16263a) {
            if (this.f45825k) {
                AbstractC16111h abstractC16111h = this.f45821g.f16225d;
                if (abstractC16111h == null) {
                    l.l("videoCallerId");
                    throw null;
                }
                h<AbstractC16083t0> mo17836j = abstractC16111h.mo17836j();
                AbstractC16262b.C16263a c16263a = (AbstractC16262b.C16263a) abstractC16262b;
                mo17836j.offer(new AbstractC16083t0.C16084a(this.f45822h, c16263a.f45816b.f68355a.f4989a, c16263a.f45815a));
                this.f45821g.f16228g.add(c16263a.f45816b);
            }
            C19291g.m13552f1(this.f45820f, Boolean.TRUE);
        } else if (abstractC16262b instanceof AbstractC16262b.C16264b) {
            C19291g.m13552f1(this.f45820f, Boolean.FALSE);
        } else {
            boolean z = abstractC16262b instanceof AbstractC16262b.C16265c;
        }
        return s.a;
    }
}
