package p193e.p194a.p804h.p830o0;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import javax.inject.Inject;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p703e3.p710k.AbstractC13429e;
import p193e.p194a.p912i4.AbstractC15287q;
import s1.z.c.l;
/* renamed from: e.a.h.o0.e */
/* loaded from: classes2-dex2jar.jar:e/a/h/o0/e.class */
public final class C14712e implements AbstractC13429e {

    /* renamed from: a */
    public final String f42211a = "notificationPushCallerId";

    /* renamed from: b */
    public final Context f42212b;

    /* renamed from: c */
    public final AbstractC15287q f42213c;

    @Inject
    public C14712e(Context context, AbstractC15287q abstractC15287q) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15287q, "notificationIconHelper");
        this.f42212b = context;
        this.f42213c = abstractC15287q;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13429e
    /* renamed from: a */
    public String mo19741a() {
        return this.f42211a;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13429e
    /* renamed from: b */
    public Intent mo19740b(Contact contact, boolean z, boolean z2, String str) {
        l.e(contact, AnalyticsConstants.CONTACT);
        Intent addFlags = C20940n.m10485c(C20940n.f58889a, this.f42212b, contact, SourceType.CallNotification, z, z2, null, str, 32).addFlags(268468224);
        l.d(addFlags, "DetailsViewIntentBuilder…FLAG_ACTIVITY_CLEAR_TASK)");
        return addFlags;
    }
}
