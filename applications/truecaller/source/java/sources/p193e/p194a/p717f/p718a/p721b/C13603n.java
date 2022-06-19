package p193e.p194a.p717f.p718a.p721b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$listenToVideoPlayingState$2", f = "OngoingCallPresenter.kt", l = {718}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.n */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/n.class */
public final class C13603n extends i implements p<AbstractC15868b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39437e;

    /* renamed from: f */
    public int f39438f;

    /* renamed from: g */
    public final /* synthetic */ C13590j f39439g;

    /* renamed from: h */
    public final /* synthetic */ C13642g f39440h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13603n(C13590j c13590j, C13642g c13642g, d dVar) {
        super(2, dVar);
        this.f39439g = c13590j;
        this.f39440h = c13642g;
    }

    /* renamed from: i */
    public final d<s> m21512i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13603n c13603n = new C13603n(this.f39439g, this.f39440h, dVar);
        c13603n.f39437e = obj;
        return c13603n;
    }

    /* renamed from: k */
    public final Object m21511k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13603n c13603n = new C13603n(this.f39439g, this.f39440h, dVar);
        c13603n.f39437e = obj;
        return c13603n.m21510s(s.a);
    }

    /* renamed from: s */
    public final Object m21510s(Object obj) {
        a aVar = a.a;
        int i = this.f39438f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15868b abstractC15868b = (AbstractC15868b) this.f39437e;
            if (!(abstractC15868b instanceof AbstractC15868b.C15874f) && !(abstractC15868b instanceof AbstractC15868b.C15869a) && !(abstractC15868b instanceof AbstractC15868b.C15873e)) {
                this.f39439g.f39374n = false;
            } else {
                this.f39439g.f39374n = true;
                C13590j c13590j = this.f39439g;
                C13642g c13642g = this.f39440h;
                this.f39438f = 1;
                if (c13590j.m21546Sj(c13642g, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
