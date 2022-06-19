package p193e.p194a.p619d.p661w;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p661w.p662j.AbstractC12131a;
import p193e.p194a.p619d.p661w.p662j.AbstractC12132a0;
import p193e.p194a.p619d.p661w.p662j.AbstractC12138c;
import p193e.p194a.p619d.p661w.p662j.AbstractC12151g;
import p193e.p194a.p619d.p661w.p662j.AbstractC12174m;
import p193e.p194a.p619d.p661w.p662j.AbstractC12177o;
import p193e.p194a.p619d.p661w.p662j.AbstractC12183s;
import p193e.p194a.p619d.p661w.p662j.AbstractC12187w;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.i1;
import s1.z.c.l;
/* renamed from: e.a.d.w.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/c.class */
public final class C12094c implements AbstractC12151g, AbstractC12131a, AbstractC12174m, AbstractC12187w, AbstractC12132a0, AbstractC12183s, AbstractC12138c, AbstractC12177o, AbstractC12093b {

    /* renamed from: a */
    public final C12130i f35375a;

    /* renamed from: b */
    public final AbstractC11598i f35376b;

    /* renamed from: c */
    public final String f35377c;

    /* renamed from: d */
    public final String f35378d;

    /* renamed from: e */
    public final a1<C11161a> f35379e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC12151g f35380f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12131a f35381g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC12174m f35382h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC12187w f35383i;

    /* renamed from: j */
    public final /* synthetic */ AbstractC12132a0 f35384j;

    /* renamed from: k */
    public final /* synthetic */ AbstractC12183s f35385k;

    /* renamed from: l */
    public final /* synthetic */ AbstractC12138c f35386l;

    /* renamed from: m */
    public final /* synthetic */ AbstractC12177o f35387m;

    @Inject
    public C12094c(String str, String str2, a1<C11161a> a1Var, C12130i c12130i, AbstractC12151g abstractC12151g, AbstractC12131a abstractC12131a, AbstractC12187w abstractC12187w, AbstractC12174m abstractC12174m, AbstractC11598i abstractC11598i, AbstractC12132a0 abstractC12132a0, AbstractC12138c abstractC12138c, AbstractC12183s abstractC12183s, AbstractC12177o abstractC12177o) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, "senderVoipId");
        l.e(a1Var, "senderCallUser");
        l.e(c12130i, "stateMachine");
        l.e(abstractC12151g, "connectInvitation");
        l.e(abstractC12131a, "answerInvitation");
        l.e(abstractC12187w, "playRingtoneAndVibrate");
        l.e(abstractC12174m, "endInvitation");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC12132a0, "updatePeers");
        l.e(abstractC12138c, "collectPeerHistory");
        l.e(abstractC12183s, "logStateChangedEvent");
        l.e(abstractC12177o, "endWhenDeletedOnRemote");
        this.f35380f = abstractC12151g;
        this.f35381g = abstractC12131a;
        this.f35382h = abstractC12174m;
        this.f35383i = abstractC12187w;
        this.f35384j = abstractC12132a0;
        this.f35385k = abstractC12183s;
        this.f35386l = abstractC12138c;
        this.f35387m = abstractC12177o;
        this.f35377c = str;
        this.f35378d = str2;
        this.f35379e = a1Var;
        this.f35375a = c12130i;
        this.f35376b = abstractC11598i;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: a */
    public p1 mo23587a() {
        return this.f35381g.mo23587a();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: b */
    public p1 mo23586b() {
        return this.f35381g.mo23586b();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12151g
    /* renamed from: c */
    public p1 mo23549c() {
        return this.f35380f.mo23549c();
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: d */
    public AbstractC11592d mo23626d() {
        return this.f35376b;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12174m
    /* renamed from: e */
    public p1 mo23505e(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        return this.f35382h.mo23505e(abstractC12116b);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C12094c)) {
            return false;
        }
        return l.a(this.f35377c, ((C12094c) obj).f35377c);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12138c
    /* renamed from: f */
    public List<C11513x0> mo23560f(C11161a c11161a) {
        return this.f35386l.mo23560f(c11161a);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: g */
    public i1 mo23625g() {
        return this.f35379e;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public String getChannelId() {
        return this.f35377c;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public i1 getState() {
        return this.f35375a;
    }

    public int hashCode() {
        return this.f35377c.hashCode();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12183s
    /* renamed from: j */
    public void mo23491j(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        this.f35385k.mo23491j(abstractC12116b);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12187w
    /* renamed from: k */
    public void mo23481k() {
        this.f35383i.mo23481k();
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: l */
    public String mo23624l() {
        return this.f35378d;
    }
}
