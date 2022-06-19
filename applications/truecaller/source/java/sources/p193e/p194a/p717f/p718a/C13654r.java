package p193e.p194a.p717f.p718a;

import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.service.CallType;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.InCallUIPresenter$maybeLoadVideoCallerId$2", f = "InCallUIPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.r */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/r.class */
public final class C13654r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39573e;

    /* renamed from: f */
    public final /* synthetic */ C13649n f39574f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC15836l.C15839c f39575g;

    /* renamed from: h */
    public final /* synthetic */ C13642g f39576h;

    @e(c = "com.truecaller.incallui.callui.InCallUIPresenter$maybeLoadVideoCallerId$2$1", f = "InCallUIPresenter.kt", l = {179, 183}, m = "invokeSuspend")
    /* renamed from: e.a.f.a.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/r$a.class */
    public static final class C13655a extends i implements p<CallState, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f39577e;

        /* renamed from: f */
        public int f39578f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13655a(d dVar) {
            super(2, dVar);
            C13654r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21355i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13655a c13655a = new C13655a(dVar);
            c13655a.f39577e = obj;
            return c13655a;
        }

        /* renamed from: k */
        public final Object m21354k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13655a c13655a = new C13655a(dVar);
            c13655a.f39577e = obj;
            return c13655a.m21353s(s.a);
        }

        /* renamed from: s */
        public final Object m21353s(Object obj) {
            C13649n c13649n;
            AbstractC15836l.C15839c c15839c;
            a aVar = a.a;
            int i = this.f39578f;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c13649n = (C13649n) this.f39577e;
                    C25225a.m3932a3(obj);
                    C13649n.m21372Ij(c13649n, (AbstractC15836l) obj, C13654r.this.f39576h);
                    return s.a;
                }
                AbstractC13648m abstractC13648m = (AbstractC13648m) this.f39577e;
                C25225a.m3932a3(obj);
                c15839c = (AbstractC15836l) obj;
                C13654r c13654r = C13654r.this;
                C13649n.m21372Ij(c13654r.f39574f, c15839c, c13654r.f39576h);
                return s.a;
            }
            C25225a.m3932a3(obj);
            CallState callState = (CallState) this.f39577e;
            if (callState == CallState.STATE_RINGING) {
                C13654r c13654r2 = C13654r.this;
                C13649n c13649n2 = c13654r2.f39574f;
                AbstractC13648m abstractC13648m2 = (AbstractC13648m) c13649n2.f57683a;
                if (abstractC13648m2 != null) {
                    AbstractC15836l.C15839c c15839c2 = c13654r2.f39575g;
                    c15839c = c15839c2;
                    if (c15839c2 == null) {
                        C13642g c13642g = c13654r2.f39576h;
                        this.f39577e = abstractC13648m2;
                        this.f39578f = 1;
                        Object mo18078i = c13649n2.f39557t.mo17867A().mo18078i(c13642g.f39533w, c13642g.f39515e, new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.LOOP_PARTLY, PlayingBehaviour.Fallback.LessThanPartly.DO_NOT_PLAY)), VideoPlayerContext.INCALLUI, !c13649n2.f39546i, this);
                        obj = mo18078i;
                        if (mo18078i == aVar) {
                            return aVar;
                        }
                        c15839c = (AbstractC15836l) obj;
                    }
                    C13654r c13654r3 = C13654r.this;
                    C13649n.m21372Ij(c13654r3.f39574f, c15839c, c13654r3.f39576h);
                }
            } else {
                C13654r c13654r4 = C13654r.this;
                C13649n c13649n3 = c13654r4.f39574f;
                AbstractC15836l.C15839c c15839c3 = c13654r4.f39575g;
                Objects.requireNonNull(c13649n3);
                if ((c15839c3 != null && c15839c3.f44673d) || !(callState == CallState.STATE_ACTIVE || callState == CallState.STATE_HOLDING)) {
                    C13654r c13654r5 = C13654r.this;
                    C13649n c13649n4 = c13654r5.f39574f;
                    AbstractC15836l.C15839c c15839c4 = c13654r5.f39575g;
                    Objects.requireNonNull(c13649n4);
                    if ((c15839c4 != null && c15839c4.f44673d) || callState != CallState.STATE_DISCONNECTED) {
                        C13654r.this.f39574f.m21369Lj();
                    }
                } else {
                    C13654r c13654r6 = C13654r.this;
                    c13649n = c13654r6.f39574f;
                    C13642g c13642g2 = c13654r6.f39576h;
                    this.f39577e = c13649n;
                    this.f39578f = 2;
                    obj = c13649n.f39547j.mo21183x() != CallType.INCOMING ? null : C19291g.m13591S(c13649n.f39557t.mo17867A(), c13642g2.f39533w, c13642g2.f39515e, new PlayingBehaviour.C4746b(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.FIRST_FRAME, PlayingBehaviour.Fallback.LessThanPartly.DO_NOT_PLAY)), VideoPlayerContext.INCALLUI, false, this, 16, null);
                    if (obj == aVar) {
                        return aVar;
                    }
                    C13649n.m21372Ij(c13649n, (AbstractC15836l) obj, C13654r.this.f39576h);
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13654r(C13649n c13649n, AbstractC15836l.C15839c c15839c, C13642g c13642g, d dVar) {
        super(2, dVar);
        this.f39574f = c13649n;
        this.f39575g = c15839c;
        this.f39576h = c13642g;
    }

    /* renamed from: i */
    public final d<s> m21358i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13654r c13654r = new C13654r(this.f39574f, this.f39575g, this.f39576h, dVar);
        c13654r.f39573e = obj;
        return c13654r;
    }

    /* renamed from: k */
    public final Object m21357k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13654r c13654r = new C13654r(this.f39574f, this.f39575g, this.f39576h, dVar);
        c13654r.f39573e = obj;
        s sVar = s.a;
        c13654r.m21356s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m21356s(Object obj) {
        C25225a.m3932a3(obj);
        C19291g.m13599P0((i0) this.f39573e, this.f39574f.f39547j.mo21199h(), new C13655a(null));
        return s.a;
    }
}
