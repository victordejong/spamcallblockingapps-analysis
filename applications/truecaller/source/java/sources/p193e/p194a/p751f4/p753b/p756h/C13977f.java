package p193e.p194a.p751f4.p753b.p756h;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p3.a.c;
import p3.a.d;
import p3.a.f;
import p3.a.g;
import p3.a.o0;
import p3.a.p0;
import p3.a.w;
import p3.a.x;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.f */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/f.class */
public final class C13977f implements g {

    /* renamed from: e.a.f4.b.h.f$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/f$a.class */
    public static final class C13978a extends w.a<ReqT, RespT> {

        /* renamed from: b */
        public final /* synthetic */ String f40409b;

        /* renamed from: e.a.f4.b.h.f$a$a */
        /* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/f$a$a.class */
        public static final class C13979a extends x<RespT> {

            /* renamed from: b */
            public final /* synthetic */ f.a f40411b;

            public C13979a(f.a aVar) {
                C13978a.this = r4;
                this.f40411b = aVar;
            }

            /* renamed from: c */
            public void m20915c(RespT respt) {
                StringBuilder m8728C = C22128a.m8728C("<-- ");
                m8728C.append(C13978a.this.f40409b);
                m8728C.append(' ');
                m8728C.append(respt);
                m8728C.toString();
                C13978a.super.c(respt);
            }

            /* renamed from: e */
            public f.a<RespT> m20914e() {
                return this.f40411b;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13978a(String str, d dVar, p0 p0Var, c cVar, f fVar) {
            super(fVar);
            this.f40409b = str;
        }

        /* renamed from: d */
        public void m20917d(ReqT reqt) {
            StringBuilder m8728C = C22128a.m8728C("--> ");
            m8728C.append(this.f40409b);
            m8728C.append(' ');
            m8728C.append(reqt);
            m8728C.toString();
            C13977f.super.d(reqt);
        }

        /* renamed from: e */
        public void m20916e(f.a<RespT> aVar, o0 o0Var) {
            C13977f.super.e(new C13979a(aVar), o0Var);
        }
    }

    /* renamed from: a */
    public <ReqT, RespT> f<ReqT, RespT> m20918a(p0<ReqT, RespT> p0Var, c cVar, d dVar) {
        l.e(p0Var, AnalyticsConstants.METHOD);
        l.e(dVar, "next");
        String str = p0Var.b;
        l.d(str, "method.fullMethodName");
        return new C13978a(v.Z(str, '/', (String) null, 2), dVar, p0Var, cVar, dVar.h(p0Var, cVar));
    }
}
