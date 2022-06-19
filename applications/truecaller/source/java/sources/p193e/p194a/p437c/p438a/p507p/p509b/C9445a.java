package p193e.p194a.p437c.p438a.p507p.p509b;

import com.truecaller.insights.smartcards.SmartCardStatus;
import java.util.Objects;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p510c.C9466e;
import p193e.p194a.p437c.p610y.C10889m;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
@e(c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$filterRelevantUpcomingCards$1", f = "GetInsightsSmartFeedUseCase.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/a.class */
public final class C9445a extends i implements p<AbstractC9460d, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28660e;

    /* renamed from: f */
    public final /* synthetic */ C9456g f28661f;

    /* renamed from: g */
    public final /* synthetic */ C9466e f28662g;

    /* renamed from: h */
    public final /* synthetic */ Set f28663h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9445a(C9456g c9456g, C9466e c9466e, Set set, d dVar) {
        super(2, dVar);
        this.f28661f = c9456g;
        this.f28662g = c9466e;
        this.f28663h = set;
    }

    /* renamed from: i */
    public final d<s> m27564i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C9445a c9445a = new C9445a(this.f28661f, this.f28662g, this.f28663h, dVar);
        c9445a.f28660e = obj;
        return c9445a;
    }

    /* renamed from: k */
    public final Object m27563k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C9445a c9445a = new C9445a(this.f28661f, this.f28662g, this.f28663h, dVar);
        c9445a.f28660e = obj;
        return c9445a.m27562s(s.a);
    }

    /* renamed from: s */
    public final Object m27562s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC9460d abstractC9460d = (AbstractC9460d) this.f28660e;
        boolean z = false;
        if (!this.f28662g.f28711b && (abstractC9460d instanceof AbstractC9460d.C9465e)) {
            C9456g c9456g = this.f28661f;
            AbstractC9460d.C9465e c9465e = (AbstractC9460d.C9465e) abstractC9460d;
            C10889m c10889m = c9465e.f28709c;
            Objects.requireNonNull(c9456g);
            b P = new b().P();
            b P2 = c10889m.f32338e.P();
            int ordinal = c10889m.f32337d.f32320a.ordinal();
            if (!(ordinal == 2 || ordinal == 3 || ordinal == 4 || ordinal == 5 ? P2.y(2).a(P) <= 0 : !(ordinal == 7 ? P2.y(2).a(P) > 0 : !(ordinal == 10 && P2.P().a(P) >= 0 && c10889m.f32337d.f32321b == SmartCardStatus.DeliveryReadyForPickup)))) {
                this.f28663h.add(c9465e.f28709c.f32340g);
                return Boolean.valueOf(z);
            }
        }
        z = true;
        return Boolean.valueOf(z);
    }
}
