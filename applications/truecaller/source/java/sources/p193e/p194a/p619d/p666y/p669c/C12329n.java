package p193e.p194a.p619d.p666y.p669c;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.RemoteViews;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.notification.missed.MissedVoipCallMessageBroadcast;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.C11433m0;
import p193e.p194a.p849h4.AbstractC14920n;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.y.c.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/c/n.class */
public final class C12329n implements AbstractC12326k {

    /* renamed from: a */
    public final RemoteViews f36000a;

    /* renamed from: b */
    public final RemoteViews f36001b;

    /* renamed from: c */
    public final g f36002c = C25225a.m3978P1(new C12328m(this));

    /* renamed from: d */
    public final g f36003d = C25225a.m3978P1(new C12327l(this));

    /* renamed from: e */
    public final Context f36004e;

    /* renamed from: f */
    public final AbstractC11421j1 f36005f;

    /* renamed from: g */
    public final C11433m0 f36006g;

    @e(c = "com.truecaller.voip.notification.missed.MissedVoipNotificationImpl", f = "MissedVoipNotification.kt", l = {58, 72}, m = "showMissedNotification")
    /* renamed from: e.a.d.y.c.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/c/n$a.class */
    public static final class C12330a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36007d;

        /* renamed from: e */
        public int f36008e;

        /* renamed from: g */
        public Object f36010g;

        /* renamed from: h */
        public Object f36011h;

        /* renamed from: i */
        public Object f36012i;

        /* renamed from: j */
        public Object f36013j;

        /* renamed from: k */
        public Object f36014k;

        /* renamed from: l */
        public Object f36015l;

        /* renamed from: m */
        public long f36016m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12330a(d dVar) {
            super(dVar);
            C12329n.this = r4;
        }

        /* renamed from: s */
        public final Object m23257s(Object obj) {
            this.f36007d = obj;
            this.f36008e |= Integer.MIN_VALUE;
            return C12329n.this.m23258e(null, 0L, this);
        }
    }

    @Inject
    public C12329n(Context context, AbstractC11421j1 abstractC11421j1, C11433m0 c11433m0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC11421j1, "voipSupport");
        l.e(c11433m0, "voipBitmapUtil");
        this.f36004e = context;
        this.f36005f = abstractC11421j1;
        this.f36006g = c11433m0;
        this.f36000a = new RemoteViews(context.getPackageName(), C4781R.layout.notification_missed_voip);
        this.f36001b = new RemoteViews(context.getPackageName(), C4781R.layout.notification_missed_voip_big);
    }

    /* renamed from: a */
    public final PendingIntent m23262a(String str) {
        PendingIntent pendingIntent;
        if (Build.VERSION.SDK_INT >= 31) {
            Context context = this.f36004e;
            pendingIntent = PendingIntent.getActivity(context, C4781R.C4783id.voip_missed_call_notification_action_call_back, this.f36005f.mo24110h(context, str), 201326592);
            l.d(pendingIntent, "PendingIntent.getActivit…G_IMMUTABLE\n            )");
        } else {
            Context context2 = this.f36004e;
            int i = C4781R.C4783id.voip_missed_call_notification_action_call_back;
            l.e(context2, AnalyticsConstants.CONTEXT);
            l.e(str, "number");
            Intent putExtra = new Intent(context2, MissedVoipCallMessageBroadcast.class).setAction("com.truecaller.voip.ACTION_ACTION_CALL").putExtra("com.truecaller.voip.extra.EXTRA_NUMBER", str);
            l.d(putExtra, "Intent(context, MissedVo…tra(EXTRA_NUMBER, number)");
            pendingIntent = PendingIntent.getBroadcast(context2, i, putExtra, 201326592);
            l.d(pendingIntent, "PendingIntent.getBroadca…G_IMMUTABLE\n            )");
        }
        return pendingIntent;
    }

    /* renamed from: b */
    public final PendingIntent m23261b(List<String> list) {
        PendingIntent pendingIntent;
        if (Build.VERSION.SDK_INT >= 31) {
            Context context = this.f36004e;
            pendingIntent = PendingIntent.getActivity(context, C4781R.C4783id.voip_missed_call_notification_action_call_back_group, this.f36005f.mo24109i(context, list), 201326592);
            l.d(pendingIntent, "PendingIntent.getActivit…G_IMMUTABLE\n            )");
        } else {
            Context context2 = this.f36004e;
            int i = C4781R.C4783id.voip_missed_call_notification_action_call_back_group;
            l.e(context2, AnalyticsConstants.CONTEXT);
            l.e(list, "numbers");
            Intent putStringArrayListExtra = new Intent(context2, MissedVoipCallMessageBroadcast.class).setAction("com.truecaller.voip.ACTION_GROUP_CALL").putStringArrayListExtra("com.truecaller.voip.extra.EXTRA_GROUP_NUMBERS", new ArrayList<>(list));
            l.d(putStringArrayListExtra, "Intent(context, MissedVo…BERS, ArrayList(numbers))");
            pendingIntent = PendingIntent.getBroadcast(context2, i, putStringArrayListExtra, 201326592);
            l.d(pendingIntent, "PendingIntent.getBroadca…G_IMMUTABLE\n            )");
        }
        return pendingIntent;
    }

    /* renamed from: c */
    public final C26450q m23260c() {
        return (C26450q) this.f36003d.getValue();
    }

    /* renamed from: d */
    public final AbstractC14920n m23259d() {
        return (AbstractC14920n) this.f36002c.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03da  */
    /* JADX WARN: Type inference failed for: r0v11, types: [e.a.d.c0.j1] */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m23258e(p193e.p194a.p619d.p637c0.AbstractC11376b r10, long r11, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p666y.p669c.C12329n.m23258e(e.a.d.c0.b, long, s1.w.d):java.lang.Object");
    }
}
