package p193e.p194a.p437c.p438a.p446c.p449f;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.reminders.view.RemindersActivity;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.c.f.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/h.class */
public final class C8810h extends m implements l<Context, s> {

    /* renamed from: b */
    public static final C8810h f26879b = new C8810h();

    public C8810h() {
        super(1);
    }

    /* renamed from: d */
    public Object m28045d(Object obj) {
        Context context = (Context) obj;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        context.startActivity(new Intent(context, RemindersActivity.class));
        return s.a;
    }
}
