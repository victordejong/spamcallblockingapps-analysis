package p193e.p194a.p437c.p438a.p446c.p449f;

import com.truecaller.insights.utils.BannerState;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/n.class */
public final class C8818n extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C8819o f26896b;

    /* renamed from: c */
    public final /* synthetic */ int f26897c;

    /* renamed from: d */
    public final /* synthetic */ C10530c f26898d;

    /* renamed from: e */
    public final /* synthetic */ String f26899e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8818n(C8819o c8819o, int i, C10530c c10530c, String str) {
        super(0);
        this.f26896b = c8819o;
        this.f26897c = i;
        this.f26898d = c10530c;
        this.f26899e = str;
    }

    public Object invoke() {
        AbstractC10028o abstractC10028o = this.f26896b.f26900b;
        if (this.f26897c < 3) {
            abstractC10028o.mo26819s(BannerState.DISMISSED_ONCE);
        } else {
            abstractC10028o.mo26819s(BannerState.DISMISSED);
        }
        abstractC10028o.mo26842g0(this.f26897c + 1);
        abstractC10028o.mo26827o(System.currentTimeMillis());
        this.f26898d.m25826b(this.f26899e);
        this.f26896b.f26902d.mo26757a(this.f26898d.m25827a());
        return s.a;
    }
}
