package p193e.p194a.p619d.p657v;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.groupcall.action.InviteResult;
import com.truecaller.voip.groupcall.call.CallDirection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.p658k.AbstractC11860a;
import p193e.p194a.p619d.p657v.p658k.AbstractC11861a0;
import p193e.p194a.p619d.p657v.p658k.AbstractC11893d0;
import p193e.p194a.p619d.p657v.p658k.AbstractC11897e;
import p193e.p194a.p619d.p657v.p658k.AbstractC11913g;
import p193e.p194a.p619d.p657v.p658k.AbstractC11923i0;
import p193e.p194a.p619d.p657v.p658k.AbstractC11925j;
import p193e.p194a.p619d.p657v.p658k.AbstractC11940m;
import p193e.p194a.p619d.p657v.p658k.AbstractC11966p;
import p193e.p194a.p619d.p657v.p658k.AbstractC11976r;
import p193e.p194a.p619d.p657v.p658k.AbstractC11997v;
import p193e.p194a.p619d.p657v.p658k.AbstractC12004w0;
import p193e.p194a.p619d.p657v.p658k.AbstractC12015z;
import p193e.p194a.p619d.p661w.C12094c;
import q3.a.n0;
import q3.a.p1;
import q3.a.x2.i1;
import s1.z.c.l;
/* renamed from: e.a.d.v.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/c.class */
public final class C11823c implements AbstractC11925j, AbstractC11861a0, AbstractC11897e, AbstractC11860a, AbstractC12004w0, AbstractC11940m, AbstractC11893d0, AbstractC11923i0, AbstractC11966p, AbstractC11913g, AbstractC11997v, AbstractC11976r, AbstractC11822b {

    /* renamed from: a */
    public final i1<AbstractC11840h> f34740a;

    /* renamed from: b */
    public final String f34741b;

    /* renamed from: c */
    public final CallDirection f34742c;

    /* renamed from: d */
    public final C11464r<C11519b> f34743d;

    /* renamed from: e */
    public final C11839g f34744e;

    /* renamed from: f */
    public final AbstractC11598i f34745f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11925j f34746g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC11861a0 f34747h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC11897e f34748i;

    /* renamed from: j */
    public final /* synthetic */ AbstractC11860a f34749j;

    /* renamed from: k */
    public final /* synthetic */ AbstractC12004w0 f34750k;

    /* renamed from: l */
    public final /* synthetic */ AbstractC11940m f34751l;

    /* renamed from: m */
    public final /* synthetic */ AbstractC11893d0 f34752m;

    /* renamed from: n */
    public final /* synthetic */ AbstractC11923i0 f34753n;

    /* renamed from: o */
    public final /* synthetic */ AbstractC11966p f34754o;

    /* renamed from: p */
    public final /* synthetic */ AbstractC11913g f34755p;

    /* renamed from: q */
    public final /* synthetic */ AbstractC11997v f34756q;

    /* renamed from: r */
    public final /* synthetic */ AbstractC11976r f34757r;

    @Inject
    public C11823c(String str, CallDirection callDirection, C11464r<C11519b> c11464r, C11839g c11839g, AbstractC11598i abstractC11598i, C11852i c11852i, AbstractC11925j abstractC11925j, AbstractC11861a0 abstractC11861a0, AbstractC11897e abstractC11897e, AbstractC11860a abstractC11860a, AbstractC12004w0 abstractC12004w0, AbstractC11940m abstractC11940m, AbstractC11893d0 abstractC11893d0, AbstractC11923i0 abstractC11923i0, AbstractC11966p abstractC11966p, AbstractC11913g abstractC11913g, AbstractC11997v abstractC11997v, AbstractC11976r abstractC11976r) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(callDirection, "callDirection");
        l.e(c11464r, "audioState");
        l.e(c11839g, "peers");
        l.e(abstractC11598i, "callInfo");
        l.e(c11852i, "stateMachine");
        l.e(abstractC11925j, "connect");
        l.e(abstractC11861a0, "invite");
        l.e(abstractC11897e, "changeAudioRoute");
        l.e(abstractC11860a, "changeCallSetting");
        l.e(abstractC12004w0, "provideConnectedTime");
        l.e(abstractC11940m, "deleteUserOnRemote");
        l.e(abstractC11893d0, "logCallFinishedEvent");
        l.e(abstractC11923i0, "logStateChangedEvent");
        l.e(abstractC11966p, AnalyticsConstants.END);
        l.e(abstractC11913g, "collectPeerHistory");
        l.e(abstractC11997v, "endWhenDeletedOnRemote");
        l.e(abstractC11976r, "endWhenConnectionLost");
        this.f34746g = abstractC11925j;
        this.f34747h = abstractC11861a0;
        this.f34748i = abstractC11897e;
        this.f34749j = abstractC11860a;
        this.f34750k = abstractC12004w0;
        this.f34751l = abstractC11940m;
        this.f34752m = abstractC11893d0;
        this.f34753n = abstractC11923i0;
        this.f34754o = abstractC11966p;
        this.f34755p = abstractC11913g;
        this.f34756q = abstractC11997v;
        this.f34757r = abstractC11976r;
        this.f34741b = str;
        this.f34742c = callDirection;
        this.f34743d = c11464r;
        this.f34744e = c11839g;
        this.f34745f = abstractC11598i;
        this.f34740a = c11852i;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: Y */
    public i1 mo23966Y() {
        return this.f34743d;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: a */
    public i1 mo23965a() {
        return this.f34744e;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: b */
    public i1<C11821a> mo23922b() {
        return this.f34749j.mo23922b();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: c */
    public p1 mo23855c(AbstractC11514a abstractC11514a) {
        l.e(abstractC11514a, "route");
        return this.f34748i.mo23855c(abstractC11514a);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: d */
    public AbstractC11592d mo23964d() {
        return this.f34745f;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: e */
    public p1 mo23920e(boolean z) {
        return this.f34749j.mo23920e(z);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C12094c)) {
            return false;
        }
        return l.a(this.f34741b, ((C12094c) obj).f35377c);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC12004w0
    /* renamed from: f */
    public i1<Long> mo23704f() {
        return this.f34750k.mo23704f();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: g */
    public p1 mo23919g() {
        return this.f34749j.mo23919g();
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    public String getChannelId() {
        return this.f34741b;
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    public i1<AbstractC11840h> getState() {
        return this.f34740a;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11860a
    /* renamed from: h */
    public p1 mo23918h(boolean z) {
        return this.f34749j.mo23918h(z);
    }

    public int hashCode() {
        return this.f34741b.hashCode();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: i */
    public i1<Map<Integer, AbstractC12015z>> mo23905i() {
        return this.f34747h.mo23905i();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11925j
    /* renamed from: j */
    public p1 mo23816j(Set<String> set) {
        l.e(set, "inviteNumbers");
        return this.f34746g.mo23816j(set);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11966p
    /* renamed from: k */
    public p1 mo23767k(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "endState");
        return this.f34754o.mo23767k(abstractC11842b);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11893d0
    /* renamed from: l */
    public void mo23832l(Long l) {
        this.f34752m.mo23832l(l);
    }

    @Override // p193e.p194a.p619d.p657v.AbstractC11822b
    /* renamed from: m */
    public CallDirection mo23963m() {
        return this.f34742c;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11913g
    /* renamed from: n */
    public List<C11513x0> mo23828n() {
        return this.f34755p.mo23828n();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: o */
    public n0<InviteResult> mo23904o(Set<String> set) {
        l.e(set, "numbers");
        return this.f34747h.mo23904o(set);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11923i0
    /* renamed from: p */
    public void mo23795p(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "endState");
        this.f34753n.mo23795p(abstractC11842b);
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11897e
    /* renamed from: q */
    public p1 mo23854q() {
        return this.f34748i.mo23854q();
    }
}
