package p193e.p194a.p437c.p598v;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.InsightsReminder;
import com.truecaller.insights.reminders.receiver.InsightsReminderActionReceiver;
import javax.inject.Inject;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import p193e.p194a.p437c.p598v.p603h.AbstractC10734c;
import p193e.p194a.p437c.p598v.p603h.C10733b;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.c.v.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/e.class */
public final class C10717e implements AbstractC10716d {

    /* renamed from: a */
    public final AbstractC10256f f31869a;

    @Inject
    public C10717e(AbstractC10256f abstractC10256f) {
        l.e(abstractC10256f, "smsIntents");
        this.f31869a = abstractC10256f;
    }

    @Override // p193e.p194a.p437c.p598v.AbstractC10716d
    /* renamed from: a */
    public PendingIntent mo25688a(Context context, InsightsReminder insightsReminder, C10733b c10733b, int i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(insightsReminder, "reminder");
        l.e(c10733b, "pendingAction");
        Bundle bundle = new Bundle();
        bundle.putString("com.truecaller.insights.reminders.notifications.EXTRAS.REF_ID", insightsReminder.getUniqueRefId());
        bundle.putString("com.truecaller.insights.reminders.notifications.EXTRAS.META_JSON", insightsReminder.getMetaJsonString());
        bundle.putString("com.truecaller.insights.reminders.notifications.EXTRAS.CATEGORY", insightsReminder.getCategory());
        bundle.putInt("com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID", i);
        AbstractC10734c abstractC10734c = c10733b.f31890b;
        if (abstractC10734c instanceof AbstractC10734c.C10735a) {
            bundle.putString("com.truecaller.insights.reminders.notifications.EXTRAS.CONCRETE_ACTION", ((AbstractC10734c.C10735a) abstractC10734c).f31891a.mo25679a());
        }
        Intent intent = new Intent(context, InsightsReminderActionReceiver.class);
        intent.setAction(c10733b.f31890b.mo25678a());
        intent.putExtras(bundle);
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, (int) ((e) bVar).a, intent, 201326592);
        l.d(broadcast, "PendingIntent.getBroadca…ingIntent.FLAG_IMMUTABLE)");
        return broadcast;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0166  */
    @Override // p193e.p194a.p437c.p598v.AbstractC10716d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p437c.p580r.p590k.C10647e mo25687b(android.content.Context r8, com.truecaller.insights.models.InsightsReminder r9, p193e.p194a.p437c.p598v.p603h.C10733b r10, int r11) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p598v.C10717e.mo25687b(android.content.Context, com.truecaller.insights.models.InsightsReminder, e.a.c.v.h.b, int):e.a.c.r.k.e");
    }
}
