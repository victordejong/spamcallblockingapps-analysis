package p193e.p194a.p717f.p718a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.InCallUIPresenter$subscribeToPlayingState$1", f = "InCallUIPresenter.kt", l = {220}, m = "invokeSuspend")
/* renamed from: e.a.f.a.s */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/s.class */
public final class C13656s extends i implements p<AbstractC15868b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39580e;

    /* renamed from: f */
    public int f39581f;

    /* renamed from: g */
    public final /* synthetic */ C13649n f39582g;

    /* renamed from: h */
    public final /* synthetic */ C13642g f39583h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13656s(C13649n c13649n, C13642g c13642g, d dVar) {
        super(2, dVar);
        this.f39582g = c13649n;
        this.f39583h = c13642g;
    }

    /* renamed from: i */
    public final d<s> m21352i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13656s c13656s = new C13656s(this.f39582g, this.f39583h, dVar);
        c13656s.f39580e = obj;
        return c13656s;
    }

    /* renamed from: k */
    public final Object m21351k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13656s c13656s = new C13656s(this.f39582g, this.f39583h, dVar);
        c13656s.f39580e = obj;
        return c13656s.m21350s(s.a);
    }

    /* renamed from: s */
    public final Object m21350s(Object obj) {
        a aVar = a.a;
        int i = this.f39581f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC15868b abstractC15868b = (AbstractC15868b) this.f39580e;
            if ((abstractC15868b instanceof AbstractC15868b.C15871c) || (abstractC15868b instanceof AbstractC15868b.C15874f) || (abstractC15868b instanceof AbstractC15868b.C15869a) || (abstractC15868b instanceof AbstractC15868b.C15873e)) {
                this.f39582g.f39546i = true;
                C13649n c13649n = this.f39582g;
                C13642g c13642g = this.f39583h;
                this.f39581f = 1;
                if (c13649n.m21370Kj(c13642g, this) == aVar) {
                    return aVar;
                }
            } else if ((abstractC15868b instanceof AbstractC15868b.C15872d) || (abstractC15868b instanceof AbstractC15868b.C15870b)) {
                this.f39582g.f39546i = false;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
