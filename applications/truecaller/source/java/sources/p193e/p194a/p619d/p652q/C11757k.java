package p193e.p194a.p619d.p652q;

import android.content.Context;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.q.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/k.class */
public final class C11757k implements AbstractC11756j {

    /* renamed from: a */
    public final f f34552a;

    /* renamed from: b */
    public final Context f34553b;

    /* renamed from: c */
    public final AbstractC12095d f34554c;

    /* renamed from: d */
    public final AbstractC11824d f34555d;

    /* renamed from: e.a.d.q.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/k$a.class */
    public static final class C11758a extends Connection {
    }

    @Inject
    public C11757k(@Named("UI") f fVar, Context context, AbstractC12095d abstractC12095d, AbstractC11824d abstractC11824d) {
        l.e(fVar, "uiContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC11824d, "groupCallManager");
        this.f34552a = fVar;
        this.f34553b = context;
        this.f34554c = abstractC12095d;
        this.f34555d = abstractC11824d;
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11756j
    /* renamed from: a */
    public Connection mo24044a() {
        C11758a c11758a = new C11758a();
        c11758a.setDisconnected(new DisconnectCause(4));
        return c11758a;
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11756j
    /* renamed from: b */
    public AbstractC11755i mo24043b(boolean z) {
        return (this.f34554c.mo23617g() || this.f34555d.mo23954i()) ? new C11775u(this.f34552a, this.f34555d, this.f34554c) : (LegacyVoipService.f16356l || LegacyIncomingVoipService.f16365l) ? new C11746b(this.f34552a, this.f34553b, z) : null;
    }
}
