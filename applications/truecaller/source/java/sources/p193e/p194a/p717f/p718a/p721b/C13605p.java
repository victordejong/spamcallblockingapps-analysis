package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.incallui.service.CallState;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p717f.C13729v;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p734z.AbstractC13809c0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$maybeShowVoipButton$1", f = "OngoingCallPresenter.kt", l = {295}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.p */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/p.class */
public final class C13605p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39444e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39445f;

    /* renamed from: g */
    public final /* synthetic */ CallState f39446g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13605p(C13590j c13590j, CallState callState, d dVar) {
        super(2, dVar);
        this.f39445f = c13590j;
        this.f39446g = callState;
    }

    /* renamed from: i */
    public final d<s> m21506i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13605p(this.f39445f, this.f39446g, dVar);
    }

    /* renamed from: k */
    public final Object m21505k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13605p(this.f39445f, this.f39446g, dVar).m21504s(s.a);
    }

    /* renamed from: s */
    public final Object m21504s(Object obj) {
        a aVar = a.a;
        int i = this.f39444e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C13590j c13590j = this.f39445f;
            AbstractC13809c0 abstractC13809c0 = c13590j.f39385y;
            AbstractC13738f abstractC13738f = (AbstractC13738f) C19291g.m13593R0(c13590j.f39380t.mo21236a());
            CallState callState = this.f39446g;
            boolean mo21193n = this.f39445f.f39376p.mo21193n();
            this.f39444e = 1;
            Object m21244a = ((C13729v) abstractC13809c0).m21244a(abstractC13738f, callState, mo21193n, this);
            obj = m21244a;
            if (m21244a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f39445f.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21582So(booleanValue);
        }
        C13590j c13590j2 = this.f39445f;
        Objects.requireNonNull(c13590j2);
        if (booleanValue && !c13590j2.f39386z.getBoolean("voipTooltip")) {
            AbstractC13589i abstractC13589i2 = (AbstractC13589i) c13590j2.f57683a;
            if (C12864a2.m22540r(abstractC13589i2 != null ? Boolean.valueOf(abstractC13589i2.mo21553wu()) : null)) {
                c13590j2.f39386z.putBoolean("voipTooltip", true);
            }
        }
        return s.a;
    }
}
