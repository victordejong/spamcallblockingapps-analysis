package p193e.p194a.p437c.p438a.p494m.p496b;

import com.truecaller.insights.models.InsightsReminder;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p598v.p603h.C10741g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.presentation.ReminderViewModel$showSmartNotif$1", f = "ReminderViewModel.kt", l = {43, 44}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/k.class */
public final class C9270k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f28215e;

    /* renamed from: f */
    public int f28216f;

    /* renamed from: g */
    public final /* synthetic */ C9266i f28217g;

    /* renamed from: h */
    public final /* synthetic */ InsightsReminder f28218h;

    @e(c = "com.truecaller.insights.ui.qa.presentation.ReminderViewModel$showSmartNotif$1$1$1", f = "ReminderViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.b.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/k$a.class */
    public static final class C9271a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ C10741g f28219e;

        /* renamed from: f */
        public final /* synthetic */ C9270k f28220f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9271a(C10741g c10741g, d dVar, C9270k c9270k) {
            super(2, dVar);
            this.f28219e = c10741g;
            this.f28220f = c9270k;
        }

        /* renamed from: i */
        public final d<s> m27761i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9271a(this.f28219e, dVar, this.f28220f);
        }

        /* renamed from: k */
        public final Object m27760k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10741g c10741g = this.f28219e;
            C9270k c9270k = this.f28220f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c9270k.f28217g.f28205f.mo26213e(c10741g);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27759s(Object obj) {
            C25225a.m3932a3(obj);
            this.f28220f.f28217g.f28205f.mo26213e(this.f28219e);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9270k(C9266i c9266i, InsightsReminder insightsReminder, d dVar) {
        super(2, dVar);
        this.f28217g = c9266i;
        this.f28218h = insightsReminder;
    }

    /* renamed from: i */
    public final d<s> m27764i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9270k(this.f28217g, this.f28218h, dVar);
    }

    /* renamed from: k */
    public final Object m27763k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9270k(this.f28217g, this.f28218h, dVar).m27762s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27762s(java.lang.Object r7) {
        /*
            r6 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r6
            int r0 = r0.f28216f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3b
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L34
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L2a
            r0 = r6
            java.lang.Object r0 = r0.f28215e
            java.util.Iterator r0 = (java.util.Iterator) r0
            r10 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r7 = r0
            goto L75
        L2a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L34:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L6b
        L3b:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            e.a.c.a.m.b.i r0 = r0.f28217g
            e.a.c.v.a r0 = r0.f28202c
            r10 = r0
            r0 = r6
            com.truecaller.insights.models.InsightsReminder r0 = r0.f28218h
            java.util.List r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3962T1(r0)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f28216f = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.mo25700g(r1, r2)
            r10 = r0
            r0 = r10
            r7 = r0
            r0 = r10
            r1 = r8
            if (r0 != r1) goto L6b
            r0 = r8
            return r0
        L6b:
            r0 = r7
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L75:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb7
            r0 = r7
            java.lang.Object r0 = r0.next()
            e.a.c.v.h.g r0 = (p193e.p194a.p437c.p598v.p603h.C10741g) r0
            r11 = r0
            r0 = r6
            e.a.c.a.m.b.i r0 = r0.f28217g
            s1.w.f r0 = r0.f28203d
            r10 = r0
            e.a.c.a.m.b.k$a r0 = new e.a.c.a.m.b.k$a
            r1 = r0
            r2 = r11
            r3 = 0
            r4 = r6
            r1.<init>(r2, r3, r4)
            r11 = r0
            r0 = r6
            r1 = r7
            r0.f28215e = r1
            r0 = r6
            r1 = 2
            r0.f28216f = r1
            r0 = r10
            r1 = r11
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r1 = r8
            if (r0 != r1) goto L75
            r0 = r8
            return r0
        Lb7:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p496b.C9270k.m27762s(java.lang.Object):java.lang.Object");
    }
}
