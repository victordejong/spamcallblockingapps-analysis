package p193e.p194a.p437c.p438a.p446c.p449f;

import com.truecaller.insights.utils.BannerState;
import com.truecaller.insights.workers.InsightsReSyncWorker;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/p.class */
public final class C8821p extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C8819o f26908b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8821p(C8819o c8819o) {
        super(1);
        this.f26908b = c8819o;
    }

    /* renamed from: d */
    public Object m28031d(Object obj) {
        if (((Boolean) obj).booleanValue()) {
            this.f26908b.f26900b.mo26819s(BannerState.DISMISSED);
            C8819o c8819o = this.f26908b;
            AbstractC10060c abstractC10060c = c8819o.f26902d;
            C10530c m28034e = c8819o.m28034e();
            m28034e.m25822f("model_download_success");
            abstractC10060c.mo26757a(m28034e.m25827a());
            this.f26908b.f26900b.mo26827o(System.currentTimeMillis());
            InsightsReSyncWorker.C4131a.m35138c(InsightsReSyncWorker.f12965g, "re_run_context_translations", true, false, 4);
        } else {
            C8819o c8819o2 = this.f26908b;
            AbstractC10060c abstractC10060c2 = c8819o2.f26902d;
            C10530c m28034e2 = c8819o2.m28034e();
            m28034e2.m25822f("model_download_failure");
            abstractC10060c2.mo26757a(m28034e2.m25827a());
        }
        return s.a;
    }
}
