package p193e.p194a.p947k.p969c;

import android.content.Context;
import com.appsflyer.AppsFlyerProperties;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.videocallerid.p142v1.ShareVideo;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1238t2.p1239a.p1261j.p1262a.C20500b;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.C13953a;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13973c;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13981h;
import p3.a.g;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.e;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
/* renamed from: e.a.k.c.n1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/n1.class */
public final class C16032n1 extends AbstractC13981h<C20500b.C20502b, C20500b.C20501a> implements AbstractC16021k1 {

    /* renamed from: o */
    public final f f45199o;

    @e(c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl", f = "VideoCallerIdStubManager.kt", l = {115}, m = "shareVideoUpdated")
    /* renamed from: e.a.k.c.n1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/n1$a.class */
    public static final class C16033a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45200d;

        /* renamed from: e */
        public int f45201e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16033a(d dVar) {
            super(dVar);
            C16032n1.this = r4;
        }

        /* renamed from: s */
        public final Object m17978s(Object obj) {
            this.f45200d = obj;
            this.f45201e |= Integer.MIN_VALUE;
            return C16032n1.this.m17979l(null, null, 0L, 0L, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$shareVideoUpdated$2", f = "VideoCallerIdStubManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.n1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/n1$b.class */
    public static final class C16034b extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f45204f;

        /* renamed from: g */
        public final /* synthetic */ List f45205g;

        /* renamed from: h */
        public final /* synthetic */ long f45206h;

        /* renamed from: i */
        public final /* synthetic */ long f45207i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16034b(String str, List list, long j, long j2, d dVar) {
            super(1, dVar);
            C16032n1.this = r5;
            this.f45204f = str;
            this.f45205g = list;
            this.f45206h = j;
            this.f45207i = j2;
        }

        /* renamed from: d */
        public final Object m17977d(Object obj) {
            return m17976l((d) obj).m17975s(s.a);
        }

        /* renamed from: l */
        public final d<s> m17976l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C16034b(this.f45204f, this.f45205g, this.f45206h, this.f45207i, dVar);
        }

        /* renamed from: s */
        public final Object m17975s(Object obj) {
            C20500b.C20501a mo20911c;
            C25225a.m3932a3(obj);
            mo20911c = C16032n1.this.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20500b.C20501a c20501a = mo20911c;
            if (c20501a != null) {
                ShareVideo.Request.C3442a newBuilder = ShareVideo.Request.newBuilder();
                String str = this.f45204f;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setId(str);
                List list = this.f45205g;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.addAllRecipients(list);
                long j = this.f45206h;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setSizeBytes(j);
                long j2 = this.f45207i;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setDurationMillis(j2);
                ShareVideo.Request build = newBuilder.build();
                p3.a.d dVar = ((p3.a.q1.c) c20501a).a;
                p0<ShareVideo.Request, ShareVideo.Response> p0Var = C20500b.f57556b;
                p0<ShareVideo.Request, ShareVideo.Response> p0Var2 = p0Var;
                if (p0Var == null) {
                    synchronized (C20500b.class) {
                        try {
                            p0<ShareVideo.Request, ShareVideo.Response> p0Var3 = C20500b.f57556b;
                            p0Var2 = p0Var3;
                            if (p0Var3 == null) {
                                p0.b b = p0.b();
                                b.c = p0.d.a;
                                b.d = p0.a("truecaller.videocallerid.v1.VideoCallerId", "ShareVideo");
                                b.e = true;
                                ShareVideo.Request defaultInstance = ShareVideo.Request.getDefaultInstance();
                                ExtensionRegistryLite extensionRegistryLite = b.a;
                                b.a = new b.a(defaultInstance);
                                b.b = new b.a(ShareVideo.Response.getDefaultInstance());
                                p0Var2 = b.a();
                                C20500b.f57556b = p0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                ShareVideo.Response response = (ShareVideo.Response) p3.a.q1.e.a(dVar, p0Var2, ((p3.a.q1.c) c20501a).b, build);
                s1.z.c.l.d(response, "stub.shareVideo(request)");
                return Boolean.valueOf(response.isInitialized());
            }
            return Boolean.FALSE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16032n1(Context context, @Named("IO") f fVar, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, @Named("grpc_user_agent") String str, AbstractC13973c abstractC13973c, AbstractC13961b abstractC13961b, C13953a c13953a, AbstractC21396c abstractC21396c) {
        super(context, KnownEndpoints.VIDEO_CALLER_ID, abstractC8432l, abstractC8428h, abstractC19230g, 10, abstractC13973c, abstractC13967b, abstractC13954b, str, abstractC13961b, c13953a, abstractC21396c);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(abstractC8432l, "accountManager");
        s1.z.c.l.e(abstractC8428h, "temporaryAuthTokenManager");
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC13967b, "edgeLocationsManager");
        s1.z.c.l.e(abstractC13954b, "domainResolver");
        s1.z.c.l.e(str, "userAgent");
        s1.z.c.l.e(abstractC13973c, "channelNetworkChangesHandler");
        s1.z.c.l.e(abstractC13961b, "domainFrontingResolver");
        s1.z.c.l.e(c13953a, "crossDomainSupport");
        s1.z.c.l.e(abstractC21396c, "forcedUpdateManager");
        this.f45199o = fVar;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: f */
    public C20500b.C20501a mo9729f(p3.a.d dVar) {
        s1.z.c.l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20500b.C20501a c20501a = new C20500b.C20501a(dVar, p3.a.c.k.f(p3.a.q1.e.b, e.f.a), null);
        s1.z.c.l.d(c20501a, "VideoCallerIdGrpc.newBlockingStub(channel)");
        return c20501a;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: h */
    public C20500b.C20502b mo9728h(p3.a.d dVar) {
        s1.z.c.l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20500b.C20502b c20502b = new C20500b.C20502b(dVar, p3.a.c.k.f(p3.a.q1.e.b, e.f.c), null);
        s1.z.c.l.d(c20502b, "VideoCallerIdGrpc.newStub(channel)");
        return c20502b;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: j */
    public Collection<g> mo9727j() {
        return s1.u.s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b8  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17979l(java.util.List<java.lang.Long> r12, java.lang.String r13, long r14, long r16, s1.w.d<? super java.lang.Boolean> r18) {
        /*
            r11 = this;
            r0 = r18
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C16032n1.C16033a
            if (r0 == 0) goto L2f
            r0 = r18
            e.a.k.c.n1$a r0 = (p193e.p194a.p947k.p969c.C16032n1.C16033a) r0
            r19 = r0
            r0 = r19
            int r0 = r0.f45201e
            r20 = r0
            r0 = r20
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r19
            r1 = r20
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45201e = r1
            r0 = r19
            r18 = r0
            goto L3b
        L2f:
            e.a.k.c.n1$a r0 = new e.a.k.c.n1$a
            r1 = r0
            r2 = r11
            r3 = r18
            r1.<init>(r3)
            r18 = r0
        L3b:
            r0 = r18
            java.lang.Object r0 = r0.f45200d
            r19 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r21 = r0
            r0 = r18
            int r0 = r0.f45201e
            r20 = r0
            r0 = r20
            if (r0 == 0) goto L6e
            r0 = r20
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r19
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r19
            r12 = r0
            goto La6
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6e:
            r0 = r19
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            e.a.k.c.n1$b r0 = new e.a.k.c.n1$b
            r1 = r0
            r2 = r11
            r3 = r13
            r4 = r12
            r5 = r14
            r6 = r16
            r7 = 0
            r1.<init>(r3, r4, r5, r6, r7)
            r12 = r0
            r0 = r18
            r1 = 1
            r0.f45201e = r1
            r0 = r11
            s1.w.f r0 = r0.f45199o
            e.a.k.c.o1 r1 = new e.a.k.c.o1
            r2 = r1
            r3 = r12
            r4 = 0
            r2.<init>(r3, r4)
            r2 = r18
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r13 = r0
            r0 = r13
            r12 = r0
            r0 = r13
            r1 = r21
            if (r0 != r1) goto La6
            r0 = r21
            return r0
        La6:
            r0 = r12
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r12 = r0
            r0 = r12
            if (r0 == 0) goto Lb8
            r0 = r12
            boolean r0 = r0.booleanValue()
            r22 = r0
            goto Lbb
        Lb8:
            r0 = 0
            r22 = r0
        Lbb:
            r0 = r22
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16032n1.m17979l(java.util.List, java.lang.String, long, long, s1.w.d):java.lang.Object");
    }
}
