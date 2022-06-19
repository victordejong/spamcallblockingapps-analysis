package p193e.p194a.p619d.p663x.p664q;

import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.manager.rtc.AgoraRtcManager$cancelFetchingStateAfterDelay$1", f = "RtcManager.kt", l = {415, 455}, m = "invokeSuspend")
/* renamed from: e.a.d.x.q.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/q/b.class */
public final class C12223b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35697e;

    /* renamed from: f */
    public Object f35698f;

    /* renamed from: g */
    public int f35699g;

    /* renamed from: h */
    public final /* synthetic */ C12225d f35700h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12223b(C12225d c12225d, d dVar) {
        super(2, dVar);
        this.f35700h = c12225d;
    }

    /* renamed from: i */
    public final d<s> m23430i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12223b(this.f35700h, dVar);
    }

    /* renamed from: k */
    public final Object m23429k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12223b(this.f35700h, dVar).m23428s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009b A[Catch: all -> 0x00bf, TryCatch #0 {all -> 0x00bf, blocks: (B:20:0x0085, B:22:0x009b, B:23:0x00b0, B:23:0x00b0), top: B:30:0x0085 }] */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23428s(java.lang.Object r5) {
        /*
            r4 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r6 = r0
            r0 = r4
            int r0 = r0.f35699g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L42
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L3b
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L31
            r0 = r4
            java.lang.Object r0 = r0.f35698f
            q3.a.b3.c r0 = (q3.a.b3.c) r0
            r6 = r0
            r0 = r4
            java.lang.Object r0 = r0.f35697e
            e.a.d.c0.r r0 = (p193e.p194a.p619d.p637c0.C11464r) r0
            r8 = r0
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r5 = r0
            goto L85
        L31:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L3b:
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L58
        L42:
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r4
            r1 = 1
            r0.f35699g = r1
            r0 = 2000(0x7d0, double:9.88E-321)
            r1 = r4
            java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
            r1 = r6
            if (r0 != r1) goto L58
            r0 = r6
            return r0
        L58:
            r0 = r4
            e.a.d.x.q.d r0 = r0.f35700h
            e.a.d.c0.r<e.a.d.x.q.i> r0 = r0.f35708c
            r8 = r0
            r0 = r8
            q3.a.b3.c r0 = r0.f33655b
            r5 = r0
            r0 = r4
            r1 = r8
            r0.f35697e = r1
            r0 = r4
            r1 = r5
            r0.f35698f = r1
            r0 = r4
            r1 = 2
            r0.f35699g = r1
            r0 = r5
            r1 = 0
            r2 = r4
            java.lang.Object r0 = r0.b(r1, r2)
            r1 = r6
            if (r0 != r1) goto L85
            r0 = r6
            return r0
        L85:
            r0 = r8
            e.a.d.c0.r$a r0 = r0.mo24640h()     // Catch: java.lang.Throwable -> Lbf
            r6 = r0
            r0 = r4
            e.a.d.x.q.d r0 = r0.f35700h     // Catch: java.lang.Throwable -> Lbf
            e.a.d.c0.r<e.a.d.x.q.i> r0 = r0.f35708c     // Catch: java.lang.Throwable -> Lbf
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> Lbf
            boolean r0 = r0 instanceof p193e.p194a.p619d.p663x.p664q.AbstractC12237i.C12238a     // Catch: java.lang.Throwable -> Lbf
            if (r0 == 0) goto Lb0
            e.a.d.x.q.i$b r0 = new e.a.d.x.q.i$b     // Catch: java.lang.Throwable -> Lbf
            r8 = r0
            r0 = r8
            s1.u.u r1 = s1.u.u.a     // Catch: java.lang.Throwable -> Lbf
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lbf
            r0 = r6
            r1 = r8
            r0.mo24639a(r1)     // Catch: java.lang.Throwable -> Lbf
        Lb0:
            s1.s r0 = s1.s.a     // Catch: java.lang.Throwable -> Lbf java.lang.Throwable -> Lbf
            r8 = r0
            r0 = r5
            r1 = 0
            r0.c(r1)
            r0 = r8
            return r0
        Lbf:
            r8 = move-exception
            r0 = r5
            r1 = 0
            r0.c(r1)
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p664q.C12223b.m23428s(java.lang.Object):java.lang.Object");
    }
}
