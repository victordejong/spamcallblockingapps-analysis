package p193e.p194a.p703e3.p709j;

import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p703e3.p710k.AbstractC13425a;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.f0.v;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.e3.j.c */
/* loaded from: classes6-dex2jar.jar:e/a/e3/j/c.class */
public final class C13410c implements AbstractC13409b {

    /* renamed from: a */
    public final C16487j f38902a;

    /* renamed from: b */
    public final C16461b f38903b;

    /* renamed from: c */
    public final AbstractC16498f f38904c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC19463a0> f38905d;

    /* renamed from: e */
    public final AbstractC19222c f38906e;

    /* renamed from: f */
    public final f f38907f;

    /* renamed from: g */
    public final AbstractC13415f f38908g;

    /* renamed from: h */
    public final AbstractC13425a f38909h;

    /* renamed from: i */
    public final C20592g f38910i;

    /* renamed from: j */
    public final AbstractC18765c f38911j;

    /* renamed from: k */
    public final AbstractC16111h f38912k;

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationHandlerImpl", f = "CallAlertNotificationHandler.kt", l = {229, 234}, m = "callContextMessage")
    /* renamed from: e.a.e3.j.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/c$a.class */
    public static final class C13411a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f38913d;

        /* renamed from: e */
        public int f38914e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13411a(d dVar) {
            super(dVar);
            C13410c.this = r4;
        }

        /* renamed from: s */
        public final Object m21852s(Object obj) {
            this.f38913d = obj;
            this.f38914e |= Integer.MIN_VALUE;
            return C13410c.this.m21854b(null, this);
        }
    }

    @e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationHandlerImpl", f = "CallAlertNotificationHandler.kt", l = {Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 163}, m = "maybeUpdateVideoCallerIDAndCache")
    /* renamed from: e.a.e3.j.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/j/c$b.class */
    public static final class C13412b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f38916d;

        /* renamed from: e */
        public int f38917e;

        /* renamed from: g */
        public Object f38919g;

        /* renamed from: h */
        public Object f38920h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13412b(d dVar) {
            super(dVar);
            C13410c.this = r4;
        }

        /* renamed from: s */
        public final Object m21851s(Object obj) {
            this.f38916d = obj;
            this.f38917e |= Integer.MIN_VALUE;
            return C13410c.this.m21853c(null, null, null, null, null, null, null, false, this);
        }
    }

    @Inject
    public C13410c(C16487j c16487j, C16461b c16461b, AbstractC16498f abstractC16498f, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19222c abstractC19222c, @Named("IO") f fVar, AbstractC13415f abstractC13415f, AbstractC13425a abstractC13425a, @Named("features_registry") C20592g c20592g, AbstractC18765c abstractC18765c, AbstractC16111h abstractC16111h) {
        l.e(c16487j, "rawContactDao");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC16498f, "numberProvider");
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC19222c, "clock");
        l.e(fVar, "asyncContext");
        l.e(abstractC13415f, "callAlertNotificationUI");
        l.e(abstractC13425a, "acsAdCacheManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC16111h, "videoCallerId");
        this.f38902a = c16487j;
        this.f38903b = c16461b;
        this.f38904c = abstractC16498f;
        this.f38905d = abstractC19854f;
        this.f38906e = abstractC19222c;
        this.f38907f = fVar;
        this.f38908g = abstractC13415f;
        this.f38909h = abstractC13425a;
        this.f38910i = c20592g;
        this.f38911j = abstractC18765c;
        this.f38912k = abstractC16111h;
    }

    /* renamed from: a */
    public final int m21855a(String str) {
        List U = str != null ? v.U(str, new String[]{","}, false, 0, 6) : null;
        ArrayList arrayList = null;
        if (U != null) {
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(U, 10));
            Iterator it = U.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                arrayList2.add(C13414e.f38938a.get((String) it.next()));
            }
        }
        return C17891a1.C17902k.m15567v(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21854b(p193e.p194a.p703e3.p704e.C13352a r8, s1.w.d<? super com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext> r9) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p709j.C13410c.m21854b(e.a.e3.e.a, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m21853c(p193e.p194a.p947k.AbstractC16111h r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.Long r22, java.lang.Long r23, boolean r24, s1.w.d<? super s1.s> r25) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p703e3.p709j.C13410c.m21853c(e.a.k.h, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Long, java.lang.Long, boolean, s1.w.d):java.lang.Object");
    }
}
