package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.telecom.TelecomManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p372b0.p410f.AbstractC8440a;
import s1.z.c.l;
/* renamed from: e.a.b0.q.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/g.class */
public final class C8581g implements AbstractC8577e {

    /* renamed from: a */
    public final TelecomManager f26399a;

    /* renamed from: b */
    public final AbstractC8440a f26400b;

    @Inject
    public C8581g(Context context, AbstractC8440a abstractC8440a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8440a, "declineCallErrorsTracker");
        this.f26400b = abstractC8440a;
        Object systemService = context.getSystemService("telecom");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telecom.TelecomManager");
        this.f26399a = (TelecomManager) systemService;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8577e
    /* renamed from: a */
    public boolean mo28341a() {
        boolean z;
        try {
            z = this.f26399a.endCall();
        } catch (Exception e) {
            this.f26400b.mo28558a(2, e);
            z = false;
        }
        return z;
    }
}
