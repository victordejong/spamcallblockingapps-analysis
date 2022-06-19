package p193e.p194a.p912i4;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.l;
/* renamed from: e.a.i4.r */
/* loaded from: classes11-dex2jar.jar:e/a/i4/r.class */
public final class C15289r extends AbstractC21765k {

    /* renamed from: b */
    public final String f43513b = "NotificationUpdateWorkAction";

    /* renamed from: c */
    public final Context f43514c;

    @Inject
    public C15289r(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f43514c = context;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        C12864a2.m22549j(this.f43514c);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f43513b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        Context context = this.f43514c;
        Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        return ((AbstractApplicationC8442a) context).mo28540W();
    }
}
