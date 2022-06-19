package p193e.p194a.p673d0.p674a;

import android.content.Context;
import android.view.animation.AccelerateInterpolator;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.view.TintedImageView;
import s1.z.c.l;
/* renamed from: e.a.d0.a.h */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/h.class */
public final class RunnableC12434h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C12409a f36300a;

    public RunnableC12434h(C12409a c12409a) {
        this.f36300a = c12409a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f36300a.f36416a;
        l.d(context, AnalyticsConstants.CONTEXT);
        int integer = context.getResources().getInteger(17694720);
        TintedImageView m23081v = this.f36300a.m23081v();
        m23081v.setAlpha(0.0f);
        m23081v.setVisibility(0);
        m23081v.animate().alpha(0.7f).setDuration(integer).setInterpolator(new AccelerateInterpolator()).start();
    }
}
