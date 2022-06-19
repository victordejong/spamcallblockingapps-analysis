package p193e.p194a.p936j3;

import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p936j3.AbstractC15549f;
import s1.z.c.l;
/* renamed from: e.a.j3.g */
/* loaded from: classes8-dex2jar.jar:e/a/j3/g.class */
public final class C15552g implements AbstractC15549f {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC15547d> f44005a;

    /* renamed from: b */
    public final AbstractC19870l f44006b;

    /* renamed from: e.a.j3.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/g$a.class */
    public static final class C15553a<R> implements AbstractC19851d0<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15549f.AbstractC15550a f44007a;

        public C15553a(AbstractC15549f.AbstractC15550a abstractC15550a) {
            this.f44007a = abstractC15550a;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Integer num) {
            Integer num2 = num;
            this.f44007a.mo18696a((num2 != null && num2.intValue() == 200) ? 1 : 0);
        }
    }

    /* renamed from: e.a.j3.g$b */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/g$b.class */
    public static final class C15554b<R> implements AbstractC19851d0<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15549f.AbstractC15551b f44008a;

        /* renamed from: b */
        public final /* synthetic */ String f44009b;

        public C15554b(AbstractC15549f.AbstractC15551b abstractC15551b, String str) {
            this.f44008a = abstractC15551b;
            this.f44009b = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Integer num) {
            Integer num2 = num;
            this.f44008a.mo10691a((num2 != null && num2.intValue() == 201) ? 1 : (num2 != null && num2.intValue() == 200) ? 2 : (num2 != null && num2.intValue() == 402) ? 3 : 0, this.f44009b);
        }
    }

    /* renamed from: e.a.j3.g$c */
    /* loaded from: classes8-dex2jar.jar:e/a/j3/g$c.class */
    public static final class C15555c<R> implements AbstractC19851d0<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15549f.AbstractC15550a f44010a;

        public C15555c(AbstractC15549f.AbstractC15550a abstractC15550a) {
            this.f44010a = abstractC15550a;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Integer num) {
            Integer num2 = num;
            this.f44010a.mo18696a((num2 != null && num2.intValue() == 200) ? 1 : 0);
        }
    }

    @Inject
    public C15552g(AbstractC19854f<AbstractC15547d> abstractC19854f, AbstractC19870l abstractC19870l) {
        l.e(abstractC19854f, "contactRequestNetworkHelper");
        l.e(abstractC19870l, "actorsThreads");
        this.f44005a = abstractC19854f;
        this.f44006b = abstractC19870l;
    }

    @Override // p193e.p194a.p936j3.AbstractC15549f
    /* renamed from: a */
    public void mo18695a(String str, AbstractC15549f.AbstractC15550a abstractC15550a) {
        l.e(str, "webId");
        l.e(abstractC15550a, "callback");
        this.f44005a.mo11854a().mo18698b(str).mo11830e(this.f44006b.mo11845d(), new C15553a(abstractC15550a));
    }

    @Override // p193e.p194a.p936j3.AbstractC15549f
    /* renamed from: b */
    public void mo18694b(String str, AbstractC15549f.AbstractC15550a abstractC15550a) {
        l.e(str, "webId");
        l.e(abstractC15550a, "callback");
        this.f44005a.mo11854a().mo18699a(str).mo11830e(this.f44006b.mo11845d(), new C15555c(abstractC15550a));
    }

    @Override // p193e.p194a.p936j3.AbstractC15549f
    /* renamed from: c */
    public void mo18693c(String str, String str2, AbstractC15549f.AbstractC15551b abstractC15551b) {
        l.e(str, "receiver");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(abstractC15551b, "callback");
        this.f44005a.mo11854a().mo18697c(str, str2).mo11830e(this.f44006b.mo11845d(), new C15554b(abstractC15551b, str2));
    }
}
