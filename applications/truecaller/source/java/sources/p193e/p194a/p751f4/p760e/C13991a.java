package p193e.p194a.p751f4.p760e;

import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p751f4.p752a.AbstractC13947d;
import p3.a.c;
import p3.a.d;
import p3.a.f;
import p3.a.g;
import p3.a.g1;
import p3.a.p0;
import p3.a.w;
import s1.z.c.l;
/* renamed from: e.a.f4.e.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/e/a.class */
public final class C13991a implements g {

    /* renamed from: a */
    public final AbstractC13947d f40454a;

    /* renamed from: b */
    public final AbstractC6392i0 f40455b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC6485m> f40456c;

    /* renamed from: e.a.f4.e.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/e/a$a.class */
    public static final class C13992a extends w.a<ReqT, RespT> {

        /* renamed from: c */
        public final /* synthetic */ d f40458c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13992a(d dVar, p0 p0Var, c cVar, f fVar) {
            super(fVar);
            C13991a.this = r4;
            this.f40458c = dVar;
        }

        /* renamed from: a */
        public void m20879a(String str, Throwable th) {
            f().a(str, th);
            g1 e = g1.e(th);
            l.d(e, UpdateKey.STATUS);
            g1.b bVar = e.a;
            g1 g1Var = g1.l;
            l.d(g1Var, "Status.UNAUTHENTICATED");
            if (bVar == g1Var.a) {
                try {
                    AbstractC13947d abstractC13947d = C13991a.this.f40454a;
                    String a = this.f40458c.a();
                    l.d(a, "next.authority()");
                    abstractC13947d.mo20948a(a);
                    return;
                } catch (IOException e2) {
                    return;
                }
            }
            g1 g1Var2 = g1.n;
            l.d(g1Var2, "Status.FAILED_PRECONDITION");
            if (bVar == g1Var2.a) {
                if (!l.a(e.b, "NOT_REGISTERED")) {
                    return;
                }
                C13991a.this.f40455b.mo31037l4(null);
                return;
            }
            g1 g1Var3 = g1.j;
            l.d(g1Var3, "Status.NOT_FOUND");
            if (bVar != g1Var3.a || !l.a(e.b, "GROUP")) {
                return;
            }
            C13991a.this.f40456c.mo11854a().mo30896d(false, false);
        }
    }

    public C13991a(AbstractC13947d abstractC13947d, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC6485m> abstractC19854f) {
        l.e(abstractC13947d, "credentialsChecker");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19854f, "imGroupManager");
        this.f40454a = abstractC13947d;
        this.f40455b = abstractC6392i0;
        this.f40456c = abstractC19854f;
    }

    /* renamed from: a */
    public <ReqT, RespT> f<ReqT, RespT> m20880a(p0<ReqT, RespT> p0Var, c cVar, d dVar) {
        l.e(p0Var, AnalyticsConstants.METHOD);
        l.e(dVar, "next");
        return new C13992a(dVar, p0Var, cVar, dVar.h(p0Var, cVar));
    }
}
