package p193e.p194a.p437c.p606w;

import javax.inject.Inject;
import p193e.p194a.p437c.p523a0.AbstractC9666u;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.w.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/d0.class */
public final class C10759d0 implements AbstractC10754b0 {

    /* renamed from: a */
    public final AbstractC9666u f31951a;

    /* renamed from: b */
    public final AbstractC10859z f31952b;

    @e(c = "com.truecaller.insights.repository.OtpRepositoryImpl", f = "OtpRepository.kt", l = {43}, m = "getOtpNumbersSince")
    /* renamed from: e.a.c.w.d0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/d0$a.class */
    public static final class C10760a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31953d;

        /* renamed from: e */
        public int f31954e;

        /* renamed from: g */
        public Object f31956g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10760a(d dVar) {
            super(dVar);
            C10759d0.this = r4;
        }

        /* renamed from: s */
        public final Object m25659s(Object obj) {
            this.f31953d = obj;
            this.f31954e |= Integer.MIN_VALUE;
            return C10759d0.this.m25660a(null, this);
        }
    }

    @Inject
    public C10759d0(AbstractC9666u abstractC9666u, AbstractC10859z abstractC10859z) {
        l.e(abstractC9666u, "otpDataSource");
        l.e(abstractC10859z, "otpCache");
        this.f31951a = abstractC9666u;
        this.f31952b = abstractC10859z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m25660a(java.util.Date r6, s1.w.d<? super java.util.Set<java.lang.String>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p606w.C10759d0.C10760a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.w.d0$a r0 = (p193e.p194a.p437c.p606w.C10759d0.C10760a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f31954e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f31954e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.w.d0$a r0 = new e.a.c.w.d0$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f31953d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f31954e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L68
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.f31956g
            e.a.c.w.d0 r0 = (p193e.p194a.p437c.p606w.C10759d0) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r7 = r0
            goto L90
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L68:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.a0.u r0 = r0.f31951a
            r8 = r0
            r0 = r7
            r1 = r5
            r0.f31956g = r1
            r0 = r7
            r1 = 1
            r0.f31954e = r1
            r0 = r8
            e.a.c.a0.v r0 = (p193e.p194a.p437c.p523a0.C9667v) r0
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m27330b(r1, r2)
            r7 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L8e
            r0 = r10
            return r0
        L8e:
            r0 = r5
            r6 = r0
        L90:
            r0 = r7
            java.util.Set r0 = (java.util.Set) r0
            r7 = r0
            r0 = r6
            e.a.c.w.z r0 = r0.f31952b
            r1 = r7
            r0.mo25550a(r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.C10759d0.m25660a(java.util.Date, s1.w.d):java.lang.Object");
    }
}
