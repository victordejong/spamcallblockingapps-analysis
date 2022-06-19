package p193e.p194a.p765f5.p772i;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import s1.z.c.l;
/* renamed from: e.a.f5.i.b */
/* loaded from: classes14-dex2jar.jar:e/a/f5/i/b.class */
public final class C14070b {

    /* renamed from: a */
    public final Context f40681a;

    /* renamed from: b */
    public final AbstractC8584h0 f40682b;

    @Inject
    public C14070b(Context context, AbstractC8584h0 abstractC8584h0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8584h0, "specialNumberResolver");
        this.f40681a = context;
        this.f40682b = abstractC8584h0;
    }

    /* renamed from: a */
    public boolean m20796a() {
        boolean z = false;
        try {
            ApplicationInfo applicationInfo = this.f40681a.getPackageManager().getApplicationInfo("se.bankgirot.swish", 0);
            l.d(applicationInfo, "context.packageManager.g…ionInfo(PACKAGE_SWISH, 0)");
            z = Boolean.valueOf(applicationInfo.enabled).booleanValue();
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }
}
