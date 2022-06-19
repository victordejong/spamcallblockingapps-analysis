package p193e.p194a.p912i4;

import android.content.Context;
import android.service.notification.StatusBarNotification;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.Stack;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p372b0.p430q.C8620y;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p804h.p836t0.AbstractC14738b;
import p193e.p194a.p804h.p836t0.C14737a;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.i4.w */
/* loaded from: classes11-dex2jar.jar:e/a/i4/w.class */
public final class C15294w extends AbstractC15284n {

    /* renamed from: a */
    public final Stack<C15293v> f43520a = new Stack<>();

    /* renamed from: b */
    public p1 f43521b;

    /* renamed from: c */
    public final Context f43522c;

    /* renamed from: d */
    public final AbstractC14738b f43523d;

    /* renamed from: e */
    public final AbstractC16480g f43524e;

    /* renamed from: f */
    public final C16461b f43525f;

    /* renamed from: g */
    public final C14737a f43526g;

    /* renamed from: h */
    public final f f43527h;

    /* renamed from: i */
    public final C8620y f43528i;

    @e(c = "com.truecaller.notifications.WhatsAppNotificationHandler$onNotificationRemoved$1", f = "WhatsAppNotificationHandler.kt", l = {57}, m = "invokeSuspend")
    /* renamed from: e.a.i4.w$a */
    /* loaded from: classes11-dex2jar.jar:e/a/i4/w$a.class */
    public static final class C15295a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43529e;

        /* renamed from: g */
        public final /* synthetic */ StatusBarNotification f43531g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15295a(StatusBarNotification statusBarNotification, d dVar) {
            super(2, dVar);
            C15294w.this = r5;
            this.f43531g = statusBarNotification;
        }

        /* renamed from: i */
        public final d<s> m18951i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15295a(this.f43531g, dVar);
        }

        /* renamed from: k */
        public final Object m18950k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15295a(this.f43531g, dVar).m18949s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x01e7, code lost:
            if (r7.m35475i() != r0) goto L52;
         */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01a0  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m18949s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 745
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p912i4.C15294w.C15295a.m18949s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C15294w(Context context, AbstractC14738b abstractC14738b, AbstractC16480g abstractC16480g, C16461b c16461b, C14737a c14737a, @Named("Async") f fVar, C8620y c8620y) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14738b, "whatsAppInCallLog");
        l.e(abstractC16480g, "localContactSearcher");
        l.e(c16461b, "aggregatedContactDao");
        l.e(c14737a, "whatsAppEventSaver");
        l.e(fVar, "coroutineContext");
        l.e(c8620y, "phoneNumberExtractor");
        this.f43522c = context;
        this.f43523d = abstractC14738b;
        this.f43524e = abstractC16480g;
        this.f43525f = c16461b;
        this.f43526g = c14737a;
        this.f43527h = fVar;
        this.f43528i = c8620y;
    }

    @Override // p193e.p194a.p912i4.AbstractC15284n
    /* renamed from: b */
    public void mo18947b(StatusBarNotification statusBarNotification) {
        l.e(statusBarNotification, "statusBarNotification");
        if (!m18952e(statusBarNotification)) {
            return;
        }
        p1 p1Var = this.f43521b;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f43520a.push(C10480a.m25902r3(statusBarNotification, this.f43522c));
    }

    @Override // p193e.p194a.p912i4.AbstractC15284n
    /* renamed from: c */
    public void mo18953c(StatusBarNotification statusBarNotification) {
        l.e(statusBarNotification, "statusBarNotification");
        if (!m18952e(statusBarNotification)) {
            return;
        }
        p1 p1Var = this.f43521b;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f43521b = s1.a.a.a.v0.f.d.w2(h1.a, this.f43527h, (j0) null, new C15295a(statusBarNotification, null), 2, (Object) null);
    }

    /* renamed from: e */
    public final boolean m18952e(StatusBarNotification statusBarNotification) {
        return this.f43523d.isEnabled() && !statusBarNotification.isClearable() && !(l.a(SupportMessenger.WHATSAPP, statusBarNotification.getPackageName()) ^ true) && !(l.a(statusBarNotification.getNotification().category, "call") ^ true);
    }
}
