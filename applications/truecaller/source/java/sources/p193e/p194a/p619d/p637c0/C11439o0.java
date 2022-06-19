package p193e.p194a.p619d.p637c0;

import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11384c;
import p193e.p194a.p619d.p637c0.AbstractC11471s;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import s1.z.c.l;
/* renamed from: e.a.d.c0.o0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/o0.class */
public final class C11439o0 implements AbstractC11436n0 {

    /* renamed from: a */
    public final AbstractC11824d f33601a;

    /* renamed from: b */
    public final AbstractC12095d f33602b;

    /* renamed from: c */
    public final AbstractC11477t f33603c;

    @Inject
    public C11439o0(AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d, AbstractC11477t abstractC11477t) {
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC11477t, "nativeCallStateModel");
        this.f33601a = abstractC11824d;
        this.f33602b = abstractC12095d;
        this.f33603c = abstractC11477t;
    }

    /* renamed from: a */
    public AbstractC11384c m24688a(boolean z) {
        AbstractC12093b mo23619e = this.f33602b.mo23619e();
        if (mo23619e != null) {
            return new AbstractC11384c.C11385a(mo23619e.getChannelId());
        }
        AbstractC11822b mo23961b = this.f33601a.mo23961b();
        if (mo23961b != null) {
            return new AbstractC11384c.C11385a(mo23961b.getChannelId());
        }
        AbstractC11471s mo24583n = this.f33603c.mo24583n();
        if ((mo24583n instanceof AbstractC11471s.C11474c) || (mo24583n instanceof AbstractC11471s.C11473b)) {
            return new AbstractC11384c.C11385a(null, 1);
        }
        boolean z2 = mo24583n instanceof AbstractC11471s.C11472a;
        return LegacyVoipService.f16356l ? new AbstractC11384c.C11385a(null, 1) : (z || !LegacyIncomingVoipService.f16365l) ? AbstractC11384c.C11386b.f33452a : new AbstractC11384c.C11385a(null, 1);
    }
}
