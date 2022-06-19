package p193e.p194a.p947k.p968b;

import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import q3.a.i0;
import q3.a.w2.d0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.debug.ExoplayerDebuggingUtil$simulatePlayingEventsWithDebug$1", f = "ExoplayerDebuggingUtil.kt", l = {48}, m = "invokeSuspend")
/* renamed from: e.a.k.b.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/g.class */
public final class C15932g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44922e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC24196c0 f44923f;

    /* renamed from: g */
    public final /* synthetic */ int f44924g;

    /* renamed from: h */
    public final /* synthetic */ d0 f44925h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15932g(AbstractC24196c0 abstractC24196c0, int i, d0 d0Var, d dVar) {
        super(2, dVar);
        this.f44923f = abstractC24196c0;
        this.f44924g = i;
        this.f44925h = d0Var;
    }

    /* renamed from: i */
    public final d<s> m18125i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15932g(this.f44923f, this.f44924g, this.f44925h, dVar);
    }

    /* renamed from: k */
    public final Object m18124k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15932g(this.f44923f, this.f44924g, this.f44925h, dVar).m18123s(s.a);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003e -> B:14:0x0043). Please submit an issue!!! */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18123s(java.lang.Object r6) {
        /*
            r5 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r5
            int r0 = r0.f44922e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L25
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L1b
            r0 = r6
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            r6 = r0
            goto L43
        L1b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L25:
            r0 = r6
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            r9 = r0
        L2c:
            r0 = r9
            r1 = 1
            r0.f44922e = r1
            r0 = r9
            r6 = r0
            r0 = 1000(0x3e8, double:4.94E-321)
            r1 = r9
            java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
            r1 = r7
            if (r0 != r1) goto L43
            r0 = r7
            return r0
        L43:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r6
            e.m.a.c.c0 r2 = r2.f44923f
            long r2 = r2.getContentDuration()
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            long r0 = r0.longValue()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L65
            r0 = 1
            r11 = r0
            goto L68
        L65:
            r0 = 0
            r11 = r0
        L68:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L76
            goto L79
        L76:
            r0 = 0
            r10 = r0
        L79:
            r0 = r6
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L2c
            r0 = r6
            e.m.a.c.c0 r0 = r0.f44923f
            long r0 = r0.getCurrentPosition()
            double r0 = (double) r0
            r1 = r10
            long r1 = r1.longValue()
            double r1 = (double) r1
            double r0 = r0 / r1
            r1 = 100
            double r1 = (double) r1
            double r0 = r0 * r1
            int r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4005I2(r0)
            r8 = r0
            r0 = r6
            int r0 = r0.f44924g
            r1 = r8
            if (r0 <= r1) goto La8
            r0 = r6
            r9 = r0
            goto L2c
        La8:
            r0 = r6
            r9 = r0
            r0 = 99
            r1 = r8
            if (r0 < r1) goto L2c
            r0 = r6
            q3.a.w2.d0 r0 = r0.f44925h
            e.a.k.c.t$a r1 = p193e.p194a.p947k.p969c.AbstractC16077t.C16078a.f45313a
            p193e.p194a.p1129p5.p1132s0.C19291g.m13534l1(r0, r1)
            r0 = r6
            r9 = r0
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p968b.C15932g.m18123s(java.lang.Object):java.lang.Object");
    }
}
