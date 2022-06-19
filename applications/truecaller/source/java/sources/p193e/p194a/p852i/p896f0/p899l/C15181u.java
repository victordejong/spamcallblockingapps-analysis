package p193e.p194a.p852i.p896f0.p899l;

import com.truecaller.log.AssertionUtil;
import e.a.i.f0.m.b;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.f0.l.u */
/* loaded from: classes3-dex2jar.jar:e/a/i/f0/l/u.class */
public final class C15181u {

    /* renamed from: a */
    public final C15171c f43226a;

    /* renamed from: b */
    public int f43227b = -1;

    /* renamed from: c */
    public final AbstractC15183d f43228c;

    /* renamed from: d */
    public final long f43229d;

    public C15181u(AbstractC15183d abstractC15183d, long j) {
        l.e(abstractC15183d, "ad");
        this.f43228c = abstractC15183d;
        this.f43229d = j;
        this.f43226a = ((b) abstractC15183d).c;
    }

    /* renamed from: a */
    public final AbstractC15183d m19062a(int i) {
        AssertionUtil.isTrue(this.f43227b == -1, "Ad already taken");
        AbstractC15183d abstractC15183d = this.f43228c;
        this.f43227b = i;
        return abstractC15183d;
    }
}
