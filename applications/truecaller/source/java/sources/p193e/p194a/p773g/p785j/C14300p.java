package p193e.p194a.p773g.p785j;

import android.app.Activity;
import android.content.Intent;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.g.j.p */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/p.class */
public final class C14300p {

    /* renamed from: a */
    public final a<AbstractC8621z> f41372a;

    @Inject
    public C14300p(a<AbstractC8621z> aVar) {
        l.e(aVar, "phoneNumberHelper");
        this.f41372a = aVar;
    }

    /* renamed from: a */
    public void m20280a(Activity activity, String str, AnalyticsContext analyticsContext) {
        l.e(activity, "activity");
        l.e(str, "normalizedNumber");
        l.e(analyticsContext, "analyticsContext");
        Participant m35455d = Participant.m35455d(str, (AbstractC8621z) this.f41372a.get(), "-1");
        l.d(m35455d, "Participant.buildFromNum…M_TOKEN_UNKNOWN\n        )");
        Intent intent = new Intent(activity, ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{m35455d});
        intent.putExtra("launch_source", analyticsContext.getValue());
        activity.startActivity(intent);
    }
}
