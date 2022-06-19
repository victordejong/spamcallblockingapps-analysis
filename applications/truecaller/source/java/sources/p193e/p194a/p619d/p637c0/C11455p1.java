package p193e.p194a.p619d.p637c0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.api.RtcTokenDto;
import com.truecaller.voip.api.RtcTokenRequestDto;
import com.truecaller.voip.api.RtcTokenWithEncryptionDto;
import com.truecaller.voip.api.RtcTokenWithEncryptionRequestDto;
import com.truecaller.voip.api.RtmTokenDto;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import q3.a.i0;
import s1.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import x3.b;
/* renamed from: e.a.d.c0.p1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1.class */
public final class C11455p1 implements AbstractC11440o1 {

    /* renamed from: a */
    public volatile String f33639a;

    /* renamed from: b */
    public volatile k<RtcTokenRequestDto, RtcTokenDto> f33640b;

    /* renamed from: c */
    public volatile k<RtcTokenWithEncryptionRequestDto, RtcTokenWithEncryptionDto> f33641c;

    /* renamed from: d */
    public final g f33642d = C25225a.m3978P1(C11456a.f33646b);

    /* renamed from: e */
    public final g f33643e = C25225a.m3978P1(C11457b.f33647b);

    /* renamed from: f */
    public final f f33644f;

    /* renamed from: g */
    public final a<AbstractC11744a> f33645g;

    /* renamed from: e.a.d.c0.p1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1$a.class */
    public static final class C11456a extends m implements s1.z.b.a<ConcurrentHashMap<String, C11422k>> {

        /* renamed from: b */
        public static final C11456a f33646b = new C11456a();

        public C11456a() {
            super(0);
        }

        public Object invoke() {
            return new ConcurrentHashMap();
        }
    }

    /* renamed from: e.a.d.c0.p1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1$b.class */
    public static final class C11457b extends m implements s1.z.b.a<ConcurrentHashMap<String, String>> {

        /* renamed from: b */
        public static final C11457b f33647b = new C11457b();

        public C11457b() {
            super(0);
        }

        public Object invoke() {
            return new ConcurrentHashMap();
        }
    }

    @e(c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtcToken$2", f = "VoipTokenProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1$c.class */
    public static final class C11458c extends i implements p<i0, d<? super RtcTokenDto>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f33649f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11458c(String str, d dVar) {
            super(2, dVar);
            C11455p1.this = r5;
            this.f33649f = str;
        }

        /* renamed from: i */
        public final d<s> m24650i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11458c(this.f33649f, dVar);
        }

        /* renamed from: k */
        public final Object m24649k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11458c(this.f33649f, dVar).m24648s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24648s(java.lang.Object r5) {
            /*
                r4 = this;
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                com.truecaller.voip.api.RtcTokenRequestDto r0 = new com.truecaller.voip.api.RtcTokenRequestDto
                r1 = r0
                r2 = r4
                java.lang.String r2 = r2.f33649f
                r1.<init>(r2)
                r6 = r0
                r0 = r4
                e.a.d.c0.p1 r0 = p193e.p194a.p619d.p637c0.C11455p1.this
                r7 = r0
                r0 = r7
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r7
                s1.k<com.truecaller.voip.api.RtcTokenRequestDto, com.truecaller.voip.api.RtcTokenDto> r0 = r0.f33640b     // Catch: java.lang.Throwable -> Lbc
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L45
                r0 = r5
                java.lang.Object r0 = r0.a     // Catch: java.lang.Throwable -> Lbc
                com.truecaller.voip.api.RtcTokenRequestDto r0 = (com.truecaller.voip.api.RtcTokenRequestDto) r0     // Catch: java.lang.Throwable -> Lbc
                r1 = r6
                boolean r0 = s1.z.c.l.a(r0, r1)     // Catch: java.lang.Throwable -> Lbc
                if (r0 == 0) goto L34
                goto L36
            L34:
                r0 = 0
                r5 = r0
            L36:
                r0 = r5
                if (r0 == 0) goto L45
                r0 = r5
                java.lang.Object r0 = r0.b     // Catch: java.lang.Throwable -> Lbc
                com.truecaller.voip.api.RtcTokenDto r0 = (com.truecaller.voip.api.RtcTokenDto) r0     // Catch: java.lang.Throwable -> Lbc
                r5 = r0
                goto L47
            L45:
                r0 = 0
                r5 = r0
            L47:
                r0 = r7
                r0.m24651j()
                r0 = r5
                if (r0 == 0) goto L6b
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "Cache is found. Returning cached rtc token:"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r0 = r0.toString()
                r0 = r5
                return r0
            L6b:
                r0 = r4
                e.a.d.c0.p1 r0 = p193e.p194a.p619d.p637c0.C11455p1.this
                o3.a<e.a.d.p.a> r0 = r0.f33645g
                java.lang.Object r0 = r0.get()
                e.a.d.p.a r0 = (p193e.p194a.p619d.p651p.AbstractC11744a) r0
                r1 = r6
                x3.b r0 = r0.m24059m(r1)
                r5 = r0
                r0 = r5
                x3.a0 r0 = r0.execute()     // Catch: java.lang.Exception -> L8e
                java.lang.Object r0 = r0.b     // Catch: java.lang.Exception -> L8e
                r5 = r0
                goto L95
            L8e:
                r5 = move-exception
                r0 = r5
                com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
                r0 = 0
                r5 = r0
            L95:
                r0 = r5
                com.truecaller.voip.api.RtcTokenDto r0 = (com.truecaller.voip.api.RtcTokenDto) r0
                r7 = r0
                r0 = r7
                if (r0 != 0) goto La0
                r0 = 0
                return r0
            La0:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "Fetched rtc token:"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r0 = r0.toString()
                r0 = r7
                return r0
            Lbc:
                r5 = move-exception
                r0 = r7
                r0.m24651j()
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11455p1.C11458c.m24648s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtcTokenWithEncryption$2", f = "VoipTokenProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p1$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1$d.class */
    public static final class C11459d extends i implements p<i0, d<? super RtcTokenWithEncryptionDto>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f33651f;

        /* renamed from: g */
        public final /* synthetic */ String f33652g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11459d(String str, String str2, d dVar) {
            super(2, dVar);
            C11455p1.this = r5;
            this.f33651f = str;
            this.f33652g = str2;
        }

        /* renamed from: i */
        public final d<s> m24647i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11459d(this.f33651f, this.f33652g, dVar);
        }

        /* renamed from: k */
        public final Object m24646k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11459d(this.f33651f, this.f33652g, dVar).m24645s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0144 A[RETURN] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24645s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 333
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11455p1.C11459d.m24645s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.util.VoipTokenProviderImpl$rtmToken$2", f = "VoipTokenProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p1$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p1$e.class */
    public static final class C11460e extends i implements p<i0, d<? super String>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11460e(d dVar) {
            super(2, dVar);
            C11455p1.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24644i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11460e(dVar);
        }

        /* renamed from: k */
        public final Object m24643k(Object obj, Object obj2) {
            Object obj3;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11455p1 c11455p1 = C11455p1.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                String str = c11455p1.f33639a;
                if (str == null) {
                    b<RtmTokenDto> m24069c = ((AbstractC11744a) c11455p1.f33645g.get()).m24069c();
                    Objects.requireNonNull(c11455p1);
                    try {
                        obj3 = m24069c.execute().b;
                    } catch (Exception e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                        obj3 = null;
                    }
                    RtmTokenDto rtmTokenDto = (RtmTokenDto) obj3;
                    if (rtmTokenDto == null) {
                        str = null;
                    } else {
                        String str2 = "Fetched rtm token:" + rtmTokenDto;
                        str = rtmTokenDto.getToken();
                    }
                }
                return str;
            } finally {
                c11455p1.f33639a = null;
            }
        }

        /* renamed from: s */
        public final Object m24642s(Object obj) {
            Object obj2;
            C25225a.m3932a3(obj);
            C11455p1 c11455p1 = C11455p1.this;
            try {
                String str = c11455p1.f33639a;
                if (str != null) {
                    return str;
                }
                try {
                    obj2 = ((AbstractC11744a) C11455p1.this.f33645g.get()).m24069c().execute().b;
                } catch (Exception e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    obj2 = null;
                }
                RtmTokenDto rtmTokenDto = (RtmTokenDto) obj2;
                if (rtmTokenDto == null) {
                    return null;
                }
                String str2 = "Fetched rtm token:" + rtmTokenDto;
                return rtmTokenDto.getToken();
            } finally {
                c11455p1.f33639a = null;
            }
        }
    }

    @Inject
    public C11455p1(@Named("IO") f fVar, a<AbstractC11744a> aVar) {
        l.e(fVar, "asyncContext");
        l.e(aVar, "voipRestApi");
        this.f33644f = fVar;
        this.f33645g = aVar;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: a */
    public void mo24660a(RtcTokenRequestDto rtcTokenRequestDto, RtcTokenDto rtcTokenDto) {
        l.e(rtcTokenRequestDto, "request");
        l.e(rtcTokenDto, "response");
        this.f33640b = new k<>(rtcTokenRequestDto, rtcTokenDto);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: b */
    public void mo24659b(String str, C11422k c11422k) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(c11422k, "encryptionData");
        String str2 = "Storing cross dc encryption data. Channel id: " + str + " encryption data: " + c11422k;
        ((ConcurrentHashMap) this.f33642d.getValue()).put(str, c11422k);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: c */
    public void mo24658c(RtcTokenWithEncryptionRequestDto rtcTokenWithEncryptionRequestDto, RtcTokenWithEncryptionDto rtcTokenWithEncryptionDto) {
        l.e(rtcTokenWithEncryptionRequestDto, "request");
        l.e(rtcTokenWithEncryptionDto, "response");
        this.f33641c = new k<>(rtcTokenWithEncryptionRequestDto, rtcTokenWithEncryptionDto);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: d */
    public void mo24657d(String str) {
        l.e(str, AnalyticsConstants.TOKEN);
        this.f33639a = str;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: e */
    public Object mo24656e(String str, String str2, d<? super RtcTokenWithEncryptionDto> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33644f, new C11459d(str, str2, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: f */
    public Object mo24655f(d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33644f, new C11460e(null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: g */
    public void mo24654g(String str, String str2) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, "identifier");
        ((ConcurrentHashMap) this.f33643e.getValue()).put(str, str2);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: h */
    public Object mo24653h(String str, d<? super RtcTokenDto> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33644f, new C11458c(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11440o1
    /* renamed from: i */
    public void mo24652i() {
        this.f33639a = null;
    }

    /* renamed from: j */
    public final void m24651j() {
        this.f33641c = null;
        this.f33640b = null;
    }
}
