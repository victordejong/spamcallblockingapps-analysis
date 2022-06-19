package p193e.p194a.p619d.p620a;

import java.util.List;
import java.util.Objects;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12092a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.p1;
import q3.a.x2.i1;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.d.a.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/n.class */
public final class C11028n implements AbstractC12092a, AbstractC12093b {

    /* renamed from: a */
    public final C11033p f32613a;

    /* renamed from: b */
    public final AbstractC11824d f32614b;

    /* renamed from: c */
    public final String f32615c;

    /* renamed from: d */
    public final String f32616d;

    /* renamed from: e */
    public final /* synthetic */ C10975a0 f32617e;

    public C11028n(C11033p c11033p, AbstractC11824d abstractC11824d, AbstractC11556y0 abstractC11556y0, String str, String str2) {
        l.e(c11033p, "callInfo");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC11556y0, "idProvider");
        l.e(str, "callerSaid");
        l.e(str2, "assistantAvatarUrl");
        this.f32617e = new C10975a0(c11033p, abstractC11824d, abstractC11556y0);
        this.f32613a = c11033p;
        this.f32614b = abstractC11824d;
        this.f32615c = str;
        this.f32616d = str2;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: a */
    public p1 mo23587a() {
        return this.f32617e.mo23587a();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12131a
    /* renamed from: b */
    public p1 mo23586b() {
        return this.f32617e.mo23586b();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12151g
    /* renamed from: c */
    public p1 mo23549c() {
        return this.f32617e.mo23549c();
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: d */
    public AbstractC11592d mo23626d() {
        return this.f32613a;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12174m
    /* renamed from: e */
    public p1 mo23505e(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        return this.f32617e.mo23505e(abstractC12116b);
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12138c
    /* renamed from: f */
    public List<C11513x0> mo23560f(C11161a c11161a) {
        Objects.requireNonNull(this.f32617e);
        return s.a;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: g */
    public i1<C11161a> mo23625g() {
        return this.f32617e.f32513d;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public String getChannelId() {
        return this.f32617e.f32510a;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    public i1<AbstractC12114h> getState() {
        return this.f32617e.f32512c;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12092a
    /* renamed from: h */
    public String mo23628h() {
        return this.f32615c;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12092a
    /* renamed from: i */
    public String mo23627i() {
        return this.f32616d;
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12187w
    /* renamed from: k */
    public void mo23481k() {
        Objects.requireNonNull(this.f32617e);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12093b
    /* renamed from: l */
    public String mo23624l() {
        return (String) this.f32617e.f32511b.getValue();
    }
}
