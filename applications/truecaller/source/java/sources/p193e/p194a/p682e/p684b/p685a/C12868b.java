package p193e.p194a.p682e.p684b.p685a;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.BuildConfig;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.e.b.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/a/b.class */
public final class C12868b {

    /* renamed from: a */
    public final String f37413a = BuildConfig.GIT_REVISION;

    /* renamed from: b */
    public final String f37414b = "12.21.6";

    /* renamed from: c */
    public final Context f37415c;

    @Inject
    public C12868b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f37415c = context;
    }
}
