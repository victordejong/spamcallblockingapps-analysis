package p193e.p194a.p717f;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.p734z.AbstractC13863x;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.f.r */
/* loaded from: classes10-dex2jar.jar:e/a/f/r.class */
public final class C13724r implements AbstractC13863x {

    /* renamed from: a */
    public final Context f39754a;

    /* renamed from: b */
    public final Provider<AbstractC19230g> f39755b;

    /* renamed from: c */
    public final Provider<AbstractC14965w> f39756c;

    /* renamed from: d */
    public final Provider<AbstractC8621z> f39757d;

    /* renamed from: e */
    public final Provider<AbstractC5854d> f39758e;

    /* renamed from: f */
    public final Provider<AbstractC13497p> f39759f;

    /* renamed from: g */
    public final Provider<AbstractC6248w> f39760g;

    @e(c = "com.truecaller.incallui.InCallUIRejectWithMessageHelperImpl", f = "InCallUIRejectWithMessageHelperImpl.kt", l = {44}, m = "sendMessage")
    /* renamed from: e.a.f.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/r$a.class */
    public static final class C13725a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39761d;

        /* renamed from: e */
        public int f39762e;

        /* renamed from: g */
        public Object f39764g;

        /* renamed from: h */
        public Object f39765h;

        /* renamed from: i */
        public Object f39766i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13725a(d dVar) {
            super(dVar);
            C13724r.this = r4;
        }

        /* renamed from: s */
        public final Object m21245s(Object obj) {
            this.f39761d = obj;
            this.f39762e |= Integer.MIN_VALUE;
            return C13724r.this.m21246b(null, null, this);
        }
    }

    @Inject
    public C13724r(Context context, Provider<AbstractC19230g> provider, Provider<AbstractC14965w> provider2, Provider<AbstractC8621z> provider3, Provider<AbstractC5854d> provider4, Provider<AbstractC13497p> provider5, Provider<AbstractC6248w> provider6) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(provider, "deviceInfoHelper");
        l.e(provider2, "tcPermissionUtil");
        l.e(provider3, "phoneNumberHelper");
        l.e(provider4, "draftSender");
        l.e(provider5, "multiSimManager");
        l.e(provider6, "readMessageStorage");
        this.f39754a = context;
        this.f39755b = provider;
        this.f39756c = provider2;
        this.f39757d = provider3;
        this.f39758e = provider4;
        this.f39759f = provider5;
        this.f39760g = provider6;
    }

    /* renamed from: a */
    public final void m21247a(Context context, Participant[] participantArr, String str) {
        Intent intent = new Intent(context, ConversationActivity.class);
        if (participantArr != null) {
            intent.putExtra("participants", participantArr);
        }
        if (str != null) {
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.TEXT", str);
            intent.putExtra("send_intent", intent2);
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0178, code lost:
        if (r10 != null) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e2  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m21246b(java.lang.String r10, java.lang.Integer r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.C13724r.m21246b(java.lang.String, java.lang.Integer, s1.w.d):java.lang.Object");
    }
}
