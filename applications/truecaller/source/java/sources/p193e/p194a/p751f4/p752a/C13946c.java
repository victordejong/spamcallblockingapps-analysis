package p193e.p194a.p751f4.p752a;

import com.truecaller.TrueApp;
import com.truecaller.analytics.heartbeat.HeartBeatType;
import com.truecaller.common.account.analytics.LogoutContext;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.io.IOException;
import java.util.HashMap;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.C26829f;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1070n2.p1071a.AbstractC18466c;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1157z0.AbstractC19605b;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1392y2.AbstractC21766l;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
import u3.e0;
import x3.a0;
/* renamed from: e.a.f4.a.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/a/c.class */
public final class C13946c implements AbstractC13945b {

    /* renamed from: a */
    public final a<AbstractC19463a0> f40355a;

    /* renamed from: b */
    public final a<e0> f40356b;

    /* renamed from: c */
    public final a<AbstractC8432l> f40357c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC17419h>> f40358d;

    /* renamed from: e */
    public final a<AbstractC21766l> f40359e;

    /* renamed from: f */
    public final a<AbstractC19605b> f40360f;

    @Inject
    public C13946c(a<AbstractC19463a0> aVar, a<e0> aVar2, a<AbstractC8432l> aVar3, a<AbstractC19854f<AbstractC17419h>> aVar4, a<AbstractC21766l> aVar5, a<AbstractC19605b> aVar6) {
        l.e(aVar, "eventsTracker");
        l.e(aVar2, "analyticsNetworkClient");
        l.e(aVar3, "accountManager");
        l.e(aVar4, "presenceManager");
        l.e(aVar5, "workActionFactory");
        l.e(aVar6, "heartBeatReporter");
        this.f40355a = aVar;
        this.f40356b = aVar2;
        this.f40357c = aVar3;
        this.f40358d = aVar4;
        this.f40359e = aVar5;
        this.f40360f = aVar6;
    }

    @Override // p193e.p194a.p751f4.p752a.AbstractC13945b
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo20951a(boolean z) {
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(m20949c(z, false)));
        l.d(m11834h, "Promise.wrap(deactivateAccount(deleteData, false))");
        return m11834h;
    }

    @Override // p193e.p194a.p751f4.p752a.AbstractC13945b
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo20950b(boolean z) {
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(m20949c(z, true)));
        l.d(m11834h, "Promise.wrap(deactivateAccount(deleteData, true))");
        return m11834h;
    }

    /* renamed from: c */
    public final boolean m20949c(boolean z, boolean z2) {
        a0 a0Var;
        if (!TrueApp.m36032b0().mo28540W()) {
            return false;
        }
        Object obj = this.f40359e.get();
        l.d(obj, "workActionFactory.get()");
        AbstractC21766l abstractC21766l = (AbstractC21766l) obj;
        l.e(abstractC21766l, "factory");
        HashMap hashMap = new HashMap();
        hashMap.put("exec_one_off", Boolean.TRUE);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder().putBoolea…DE_ONE_OFF, true).build()");
        n.F0(abstractC21766l.mo9105a("AppSettingsWorkAction", c26829f));
        ((AbstractC19605b) this.f40360f.get()).mo13105c(HeartBeatType.Deactivation);
        ((AbstractC19463a0) this.f40355a.get()).mo13109c((e0) this.f40356b.get());
        ((AbstractC17419h) ((AbstractC19854f) this.f40358d.get()).mo11854a()).mo16130b().mo11831c();
        try {
            if (z) {
                a0Var = ((AbstractC18466c) C8367d.m28633a(KnownEndpoints.ACCOUNT, AbstractC18466c.class)).m14892i().execute();
                l.d(a0Var, "AccountRestAdapter.deactivateAndDelete().execute()");
            } else {
                a0Var = ((AbstractC18466c) C8367d.m28633a(KnownEndpoints.ACCOUNT, AbstractC18466c.class)).deactivate().execute();
                l.d(a0Var, "AccountRestAdapter.deactivate().execute()");
            }
            if (!a0Var.b()) {
                return false;
            }
            String mo28569o = ((AbstractC8432l) this.f40357c.get()).mo28569o();
            if (mo28569o == null) {
                return true;
            }
            if (!(mo28569o.length() > 0)) {
                return true;
            }
            try {
                TrueApp.m36032b0().m36030d0(mo28569o, true, z2, LogoutContext.DEACTIVATE);
                return true;
            } catch (SecurityException e) {
                AssertionUtil.shouldNeverHappen(e, new String[0]);
                return true;
            }
        } catch (IOException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
            return false;
        } catch (RuntimeException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
            return false;
        }
    }
}
