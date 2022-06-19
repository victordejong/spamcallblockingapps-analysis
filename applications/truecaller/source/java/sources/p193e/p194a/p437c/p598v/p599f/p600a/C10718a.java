package p193e.p194a.p437c.p598v.p599f.p600a;

import android.content.Context;
import com.truecaller.insights.reminders.actions.binders.BillReminderMeta;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p598v.AbstractC10716d;
import p193e.p194a.p437c.p598v.p603h.C10737d;
import s1.f0.r;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.c.v.f.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/f/a/a.class */
public final class C10718a implements AbstractC10719b {

    /* renamed from: a */
    public final Context f31870a;

    /* renamed from: b */
    public final AbstractC19223c0 f31871b;

    /* renamed from: c */
    public final a<AbstractC10716d> f31872c;

    /* renamed from: d */
    public final AbstractC10060c f31873d;

    @Inject
    public C10718a(Context context, AbstractC19223c0 abstractC19223c0, a<AbstractC10716d> aVar, AbstractC10060c abstractC10060c) {
        l.e(context, "appContext");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(aVar, "notificationHelper");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f31870a = context;
        this.f31871b = abstractC19223c0;
        this.f31872c = aVar;
        this.f31873d = abstractC10060c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:4|(1:6)(1:7)|8|(4:10|(1:15)(1:14)|16|(16:18|20|(1:22)(1:23)|24|(1:26)(1:27)|28|(1:30)(1:31)|80|32|(1:34)(1:35)|36|(1:38)|40|41|82|(16:43|44|45|46|52|(1:54)(1:55)|56|(1:61)(1:60)|62|(1:64)(1:65)|66|(1:70)|71|(1:75)(1:76)|77|78)(2:47|48)))|19|20|(0)(0)|24|(0)(0)|28|(0)(0)|80|32|(0)(0)|36|(0)|40|41|82|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x020d, code lost:
        if (r25 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x02aa, code lost:
        r25 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x02af, code lost:
        r25 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02b1, code lost:
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r25, null);
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01e6 A[Catch: Exception -> 0x02af, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02af, blocks: (B:32:0x01da, B:34:0x01e6, B:36:0x01f3, B:38:0x0204, B:41:0x0217, B:43:0x0222, B:43:0x0222, B:44:0x0225), top: B:80:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0204 A[Catch: Exception -> 0x02af, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02af, blocks: (B:32:0x01da, B:34:0x01e6, B:36:0x01f3, B:38:0x0204, B:41:0x0217, B:43:0x0222, B:43:0x0222, B:44:0x0225), top: B:80:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0222 A[Catch: Exception -> 0x02af, Exception -> 0x02af, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x02af, blocks: (B:32:0x01da, B:34:0x01e6, B:36:0x01f3, B:38:0x0204, B:41:0x0217, B:43:0x0222, B:43:0x0222, B:44:0x0225), top: B:80:0x01da }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x029d A[Catch: Exception -> 0x02aa, TRY_ENTER, TryCatch #1 {Exception -> 0x02aa, blocks: (B:46:0x026f, B:47:0x029d, B:48:0x02a9), top: B:82:0x021f }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0328  */
    @Override // p193e.p194a.p437c.p598v.p599f.p600a.AbstractC10719b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p437c.p598v.p603h.C10741g mo25684a(com.truecaller.insights.models.InsightsReminder r21, p193e.p194a.p437c.p598v.p603h.C10740f r22, s1.k<java.lang.String, com.truecaller.common.payments.senderinfo.SenderInfo> r23) {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.p599f.p600a.C10718a.mo25684a(com.truecaller.insights.models.InsightsReminder, e.a.c.v.h.f, s1.k):e.a.c.v.h.g");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x010c, code lost:
        if (r16 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0267, code lost:
        if (r18 != null) goto L72;
     */
    @Override // p193e.p194a.p437c.p598v.p599f.p600a.AbstractC10719b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p437c.p598v.p603h.C10740f mo25683b(com.truecaller.insights.models.InsightsReminder r15, s1.k<java.lang.String, com.truecaller.common.payments.senderinfo.SenderInfo> r16) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.p599f.p600a.C10718a.mo25683b(com.truecaller.insights.models.InsightsReminder, s1.k):e.a.c.v.h.f");
    }

    /* renamed from: c */
    public final String m25686c(C10737d c10737d, String str, String str2) {
        String str3;
        l.e(str, "subCategory");
        if (l.a(str, "prepaid_expiry")) {
            str3 = "bill_prepaid";
        } else {
            if (c10737d != null) {
                String str4 = c10737d.f31894b;
                if (!(str4 == null || r.p(str4)) && r.n(c10737d.f31894b, "mobile", true)) {
                    str3 = "bill_postpaid";
                }
            }
            str3 = str2 != null ? C22128a.m8543z2("bill_", str2) : "bill_unknown";
        }
        return str3;
    }

    /* renamed from: d */
    public final String m25685d(BillReminderMeta billReminderMeta) {
        StringBuilder m8728C = C22128a.m8728C("xx");
        m8728C.append(w.o0(billReminderMeta.getAccountNumber(), 4));
        return m8728C.toString();
    }
}
