package p193e.p194a.p837h0.p845x;

import androidx.work.ListenableWorker;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.AbstractC14856t;
import s1.z.c.l;
/* renamed from: e.a.h0.x.i */
/* loaded from: classes9-dex2jar.jar:e/a/h0/x/i.class */
public final class C14885i extends AbstractC21765k {

    /* renamed from: h */
    public static final long f42557h = TimeUnit.HOURS.toMillis(2);

    /* renamed from: b */
    public final String f42558b = "TopSpammersSyncWorkAction";

    /* renamed from: c */
    public final a<AbstractC8432l> f42559c;

    /* renamed from: d */
    public final a<AbstractC14856t> f42560d;

    /* renamed from: e */
    public final AbstractC8541a f42561e;

    /* renamed from: f */
    public final AbstractC14840m f42562f;

    /* renamed from: g */
    public final AbstractC19222c f42563g;

    @Inject
    public C14885i(a<AbstractC8432l> aVar, a<AbstractC14856t> aVar2, AbstractC8541a abstractC8541a, AbstractC14840m abstractC14840m, AbstractC19222c abstractC19222c) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "topSpammerRepository");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC19222c, "clock");
        this.f42559c = aVar;
        this.f42560d = aVar2;
        this.f42561e = abstractC8541a;
        this.f42562f = abstractC14840m;
        this.f42563g = abstractC19222c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        try {
            if (((AbstractC14856t) this.f42560d.get()).mo19523b()) {
                ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c, "Result.success()");
                return c0417c;
            }
        } catch (Exception e) {
            C10480a.m26061I1(e);
        }
        ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
        l.d(c0416b, "Result.retry()");
        return c0416b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f42558b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
        if (r7.f42563g.mo13819c() > (r13 + r0)) goto L19;
     */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9061c() {
        /*
            r7 = this;
            r0 = r7
            o3.a<e.a.b0.e.l> r0 = r0.f42559c
            java.lang.Object r0 = r0.get()
            e.a.b0.e.l r0 = (p193e.p194a.p372b0.p406e.AbstractC8432l) r0
            boolean r0 = r0.mo28580d()
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L82
            r0 = r7
            e.a.b0.o.a r0 = r0.f42561e
            java.lang.String r1 = "key_feature_fetch_top_spammers"
            r2 = 0
            long r0 = r0.getLong(r1, r2)
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r10 = r0
            r0 = r10
            long r0 = r0.longValue()
            r11 = r0
            long r0 = p193e.p194a.p837h0.p845x.C14885i.f42557h
            r13 = r0
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L41
            r0 = 1
            r15 = r0
            goto L44
        L41:
            r0 = 0
            r15 = r0
        L44:
            r0 = r15
            if (r0 == 0) goto L4c
            goto L4e
        L4c:
            r0 = 0
            r10 = r0
        L4e:
            r0 = r10
            if (r0 == 0) goto L58
            r0 = r10
            long r0 = r0.longValue()
            r13 = r0
        L58:
            r0 = r7
            e.a.h0.m r0 = r0.f42562f
            long r0 = r0.mo19545w()
            r11 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L6d
            goto L84
        L6d:
            r0 = r7
            e.a.p5.c r0 = r0.f42563g
            long r0 = r0.mo13819c()
            r1 = r13
            r2 = r11
            long r1 = r1 + r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L82
            goto L84
        L82:
            r0 = 0
            r9 = r0
        L84:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p837h0.p845x.C14885i.mo9061c():boolean");
    }
}
