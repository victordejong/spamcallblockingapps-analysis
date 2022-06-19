package p193e.p194a.p997k3;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import e.m.f.a.j;
import io.agora.rtc.Constants;
import javax.inject.Inject;
import p193e.p194a.p372b0.p416j.AbstractC8480b;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k3.f */
/* loaded from: classes8-dex2jar.jar:e/a/k3/f.class */
public final class C16453f implements AbstractC16452e {

    /* renamed from: a */
    public final j f46194a;

    /* renamed from: b */
    public final AbstractC8480b f46195b;

    @e(c = "com.truecaller.data.HistoryEventFactoryImpl", f = "HistoryEventFactory.kt", l = {111}, m = "createFromCallLogBackupItem")
    /* renamed from: e.a.k3.f$a */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/f$a.class */
    public static final class C16454a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46196d;

        /* renamed from: e */
        public int f46197e;

        /* renamed from: g */
        public Object f46199g;

        /* renamed from: h */
        public Object f46200h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16454a(d dVar) {
            super(dVar);
            C16453f.this = r4;
        }

        /* renamed from: s */
        public final Object m17383s(Object obj) {
            this.f46196d = obj;
            this.f46197e |= Integer.MIN_VALUE;
            return C16453f.this.mo17385c(null, null, this);
        }
    }

    @e(c = "com.truecaller.data.HistoryEventFactoryImpl", f = "HistoryEventFactory.kt", l = {Constants.ERR_WATERMARKR_INFO}, m = "createFromRawNumber")
    /* renamed from: e.a.k3.f$b */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/f$b.class */
    public static final class C16455b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46201d;

        /* renamed from: e */
        public int f46202e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16455b(d dVar) {
            super(dVar);
            C16453f.this = r4;
        }

        /* renamed from: s */
        public final Object m17382s(Object obj) {
            this.f46201d = obj;
            this.f46202e |= Integer.MIN_VALUE;
            return C16453f.this.mo17386b(null, null, this);
        }
    }

    @e(c = "com.truecaller.data.HistoryEventFactoryImpl$populateNormalizeNumber$2", f = "HistoryEventFactory.kt", l = {141}, m = "invokeSuspend")
    /* renamed from: e.a.k3.f$c */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/f$c.class */
    public static final class C16456c extends i implements p<i0, d<? super HistoryEvent.C3826b>, Object> {

        /* renamed from: e */
        public int f46204e;

        /* renamed from: g */
        public final /* synthetic */ HistoryEvent.C3826b f46206g;

        /* renamed from: h */
        public final /* synthetic */ String f46207h;

        /* renamed from: i */
        public final /* synthetic */ String f46208i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16456c(HistoryEvent.C3826b c3826b, String str, String str2, d dVar) {
            super(2, dVar);
            C16453f.this = r5;
            this.f46206g = c3826b;
            this.f46207h = str;
            this.f46208i = str2;
        }

        /* renamed from: i */
        public final d<s> m17381i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16456c(this.f46206g, this.f46207h, this.f46208i, dVar);
        }

        /* renamed from: k */
        public final Object m17380k(Object obj, Object obj2) {
            return m17381i(obj, (d) obj2).m17379s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0107  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m17379s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 319
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p997k3.C16453f.C16456c.m17379s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C16453f(j jVar, AbstractC8480b abstractC8480b) {
        l.e(jVar, "phoneNumberUtil");
        l.e(abstractC8480b, "countryRepository");
        this.f46194a = jVar;
        this.f46195b = abstractC8480b;
    }

    @Override // p193e.p194a.p997k3.AbstractC16452e
    /* renamed from: a */
    public HistoryEvent mo17387a(Contact contact, int i, Long l, long j) {
        l.e(contact, AnalyticsConstants.CONTACT);
        HistoryEvent historyEvent = new HistoryEvent((HistoryEvent.C3825a) null);
        historyEvent.setTcId(contact.getTcId());
        historyEvent.f11535b = contact.m35498s();
        Number m35493v = contact.m35493v();
        if (m35493v != null) {
            historyEvent.f11536c = m35493v.m35473l();
            historyEvent.f11535b = m35493v.m35479e();
            historyEvent.f11549p = m35493v.m35475i();
            historyEvent.f11537d = m35493v.getCountryCode();
        }
        historyEvent.f11550q = i;
        historyEvent.f11540g = null;
        historyEvent.f11541h = System.currentTimeMillis();
        historyEvent.f11542i = j;
        l.d(historyEvent, "with(HistoryEvent.Builde…ration)\n        }.build()");
        return historyEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    @Override // p193e.p194a.p997k3.AbstractC16452e
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17386b(java.lang.String r7, java.lang.String r8, s1.w.d<? super com.truecaller.data.entity.HistoryEvent> r9) {
        /*
            r6 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p997k3.C16453f.C16455b
            if (r0 == 0) goto L2c
            r0 = r9
            e.a.k3.f$b r0 = (p193e.p194a.p997k3.C16453f.C16455b) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f46202e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f46202e = r1
            r0 = r10
            r9 = r0
            goto L36
        L2c:
            e.a.k3.f$b r0 = new e.a.k3.f$b
            r1 = r0
            r2 = r6
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L36:
            r0 = r9
            java.lang.Object r0 = r0.f46201d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f46202e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L67
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r7 = r0
            goto L8f
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            com.truecaller.data.entity.HistoryEvent$b r0 = new com.truecaller.data.entity.HistoryEvent$b
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r9
            r1 = 1
            r0.f46202e = r1
            r0 = r6
            r1 = r10
            r2 = r7
            r3 = r8
            r4 = r9
            java.lang.Object r0 = r0.m17384d(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r12
            if (r0 != r1) goto L8f
            r0 = r12
            return r0
        L8f:
            r0 = r7
            com.truecaller.data.entity.HistoryEvent$b r0 = (com.truecaller.data.entity.HistoryEvent.C3826b) r0
            com.truecaller.data.entity.HistoryEvent r0 = r0.f11557a
            r7 = r0
            r0 = r7
            java.lang.String r1 = "HistoryEvent.Builder()\n …Iso)\n            .build()"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p997k3.C16453f.mo17386b(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    @Override // p193e.p194a.p997k3.AbstractC16452e
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17385c(com.truecaller.data.entity.CallLogBackupItem r7, java.lang.String r8, s1.w.d<? super com.truecaller.data.entity.HistoryEvent> r9) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p997k3.C16453f.mo17385c(com.truecaller.data.entity.CallLogBackupItem, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: d */
    public final Object m17384d(HistoryEvent.C3826b c3826b, String str, String str2, d<? super HistoryEvent.C3826b> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C16456c(c3826b, str, str2, null), dVar);
    }
}
