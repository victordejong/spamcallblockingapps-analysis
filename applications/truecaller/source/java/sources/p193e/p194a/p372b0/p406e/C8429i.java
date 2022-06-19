package p193e.p194a.p372b0.p406e;

import com.truecaller.account.network.TokenErrorResponseDto;
import com.truecaller.log.UnmutedException;
import e.m.e.k;
import e.m.e.u;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1070n2.p1071a.AbstractC18464a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
import u3.l0;
/* renamed from: e.a.b0.e.i */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/i.class */
public final class C8429i implements AbstractC8428h {

    /* renamed from: a */
    public final AbstractC8438a f26112a;

    /* renamed from: b */
    public final AbstractC18464a f26113b;

    /* renamed from: c */
    public final AbstractC19222c f26114c;

    @Inject
    public C8429i(AbstractC8438a abstractC8438a, AbstractC18464a abstractC18464a, AbstractC19222c abstractC19222c) {
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC18464a, "accountRequestHelper");
        l.e(abstractC19222c, "clock");
        this.f26112a = abstractC8438a;
        this.f26113b = abstractC18464a;
        this.f26114c = abstractC19222c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0058, code lost:
        if (r7 != null) goto L29;
     */
    @Override // p193e.p194a.p372b0.p406e.AbstractC8428h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo28589a() {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            e.a.b0.e.r.a r0 = r0.f26112a     // Catch: java.lang.Throwable -> L69
            java.lang.String r1 = "auth_token_cross_domain"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> L69
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L5e
            r0 = r4
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L69
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 <= 0) goto L24
            r0 = 1
            r5 = r0
            goto L26
        L24:
            r0 = 0
            r5 = r0
        L26:
            r0 = 0
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L30
            goto L32
        L30:
            r0 = 0
            r4 = r0
        L32:
            r0 = r4
            if (r0 == 0) goto L5e
            r0 = r3
            java.lang.String r1 = "xd_t_f_t"
            boolean r0 = r0.m28586d(r1)     // Catch: java.lang.Throwable -> L69
            if (r0 != 0) goto L4d
            r0 = r3
            java.lang.String r1 = "xd_t_e_t"
            boolean r0 = r0.m28586d(r1)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L4d
            r0 = r6
            r5 = r0
            goto L4f
        L4d:
            r0 = 0
            r5 = r0
        L4f:
            r0 = r5
            if (r0 == 0) goto L56
            r0 = r4
            r7 = r0
        L56:
            r0 = r7
            if (r0 == 0) goto L5e
            goto L64
        L5e:
            r0 = r3
            java.lang.String r0 = r0.m28588b()     // Catch: java.lang.Throwable -> L69
            r7 = r0
        L64:
            r0 = r3
            monitor-exit(r0)
            r0 = r7
            return r0
        L69:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8429i.mo28589a():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c3, code lost:
        if (s1.f0.r.p(r0) != false) goto L23;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m28588b() {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p406e.C8429i.m28588b():java.lang.String");
    }

    /* renamed from: c */
    public final void m28587c(int i, l0 l0Var) throws IOException {
        if (l0Var != null) {
            try {
                TokenErrorResponseDto tokenErrorResponseDto = (TokenErrorResponseDto) new k().d(l0Var.j(), TokenErrorResponseDto.class);
                if (tokenErrorResponseDto != null) {
                    Long nextCallDuration = tokenErrorResponseDto.getNextCallDuration();
                    if (i != 403 || nextCallDuration == null || nextCallDuration.longValue() <= 0) {
                        C10480a.m26061I1(new UnmutedException.C4143b(i, Integer.valueOf(tokenErrorResponseDto.getStatus()), tokenErrorResponseDto.getMessage()));
                    } else {
                        long mo13819c = this.f26114c.mo13819c();
                        AbstractC8438a abstractC8438a = this.f26112a;
                        abstractC8438a.putLong("xd_t_f_t", mo13819c);
                        abstractC8438a.putLong("xd_t_r_d_u", TimeUnit.SECONDS.toMillis(nextCallDuration.longValue()) + mo13819c);
                        abstractC8438a.remove("auth_token_cross_domain");
                    }
                }
            } catch (u e) {
                StringBuilder m8728C = C22128a.m8728C("Unable to parse xDC token error: ");
                m8728C.append(e.getMessage());
                C10480a.m26061I1(new UnmutedException.C4143b(200, null, m8728C.toString()));
            }
        }
    }

    /* renamed from: d */
    public final boolean m28586d(String str) {
        return this.f26112a.getLong(str, -1L).longValue() > this.f26114c.mo13819c();
    }
}
