package p193e.p194a.p947k.p948a.p964k.p965z;

import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$pauseUntilFullyDownloaded$1", f = "VideoPlayingManager.kt", l = {407, 408}, m = "invokeSuspend")
/* renamed from: e.a.k.a.k.z.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/j.class */
public final class C15898j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44848e;

    /* renamed from: f */
    public final /* synthetic */ C15880h f44849f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC24196c0 f44850g;

    /* renamed from: h */
    public final /* synthetic */ String f44851h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15898j(C15880h c15880h, AbstractC24196c0 abstractC24196c0, String str, d dVar) {
        super(2, dVar);
        this.f44849f = c15880h;
        this.f44850g = abstractC24196c0;
        this.f44851h = str;
    }

    /* renamed from: i */
    public final d<s> m18163i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15898j(this.f44849f, this.f44850g, this.f44851h, dVar);
    }

    /* renamed from: k */
    public final Object m18162k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15898j(this.f44849f, this.f44850g, this.f44851h, dVar).m18161s(s.a);
    }

    /* renamed from: s */
    public final Object m18161s(Object obj) {
        a aVar = a.a;
        int i = this.f44848e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f44848e = 1;
            if (s1.a.a.a.v0.f.d.D0(2000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        C15880h c15880h = this.f44849f;
        AbstractC24196c0 abstractC24196c0 = this.f44850g;
        String str = this.f44851h;
        this.f44848e = 2;
        if (c15880h.m18206j(abstractC24196c0, str, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
