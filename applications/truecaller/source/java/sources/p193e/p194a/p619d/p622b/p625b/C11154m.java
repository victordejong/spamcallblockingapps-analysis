package p193e.p194a.p619d.p622b.p625b;

import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p663x.p665r.AbstractC12283m;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.C12260g;
import p193e.p194a.p619d.p663x.p665r.C12286p;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$loginRtmAsync$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {175}, m = "invokeSuspend")
/* renamed from: e.a.d.b.b.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/m.class */
public final class C11154m extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f32973e;

    /* renamed from: f */
    public final /* synthetic */ C11139b f32974f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11154m(C11139b c11139b, d dVar) {
        super(2, dVar);
        this.f32974f = c11139b;
    }

    /* renamed from: i */
    public final d<s> m25102i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11154m(this.f32974f, dVar);
    }

    /* renamed from: k */
    public final Object m25101k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11154m(this.f32974f, dVar).m25100s(s.a);
    }

    /* renamed from: s */
    public final Object m25100s(Object obj) {
        a aVar = a.a;
        int i = this.f32973e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC12284n abstractC12284n = this.f32974f.f32947q;
            this.f32973e = 1;
            Object m13641B0 = C19291g.m13641B0(abstractC12284n, 0L, this, 1, null);
            obj = m13641B0;
            if (m13641B0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC12283m abstractC12283m = (AbstractC12283m) obj;
        if (!(abstractC12283m instanceof C12286p)) {
            if (!(abstractC12283m instanceof C12260g)) {
                throw new s1.i();
            }
            int ordinal = ((C12260g) abstractC12283m).f35821a.ordinal();
            this.f32974f.m25134Pj(VoipState.FAILED, ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? null : VoipStateReason.LOGIN_RTM_FAILED : VoipStateReason.GET_RTM_TOKEN_FAILED : VoipStateReason.GET_VOIP_ID_FAILED);
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
