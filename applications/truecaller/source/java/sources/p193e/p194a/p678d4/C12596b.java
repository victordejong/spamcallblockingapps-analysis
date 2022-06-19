package p193e.p194a.p678d4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.d4.b */
/* loaded from: classes11-dex2jar.jar:e/a/d4/b.class */
public final class C12596b implements AbstractC12595a {

    /* renamed from: a */
    public final Context f36730a;

    /* renamed from: b */
    public final AbstractC12597c f36731b;

    @Inject
    public C12596b(Context context, AbstractC12597c abstractC12597c) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f36730a = context;
        this.f36731b = abstractC12597c;
    }

    @Override // p193e.p194a.p678d4.AbstractC12595a
    /* renamed from: a */
    public String mo22846a() {
        String packageName = this.f36730a.getPackageName();
        l.d(packageName, "context.packageName");
        String t = r.t(packageName, ".debug", "", false, 4);
        return this.f36731b.mo22840d(AbstractC12603e.C12604a.f36737c) ? C22128a.m8562v(new Object[]{t}, 1, "market://details?id=%s", "java.lang.String.format(this, *args)") : this.f36731b.mo22840d(AbstractC12603e.C12605b.f36738c) ? C22128a.m8562v(new Object[]{t}, 1, "appmarket://details?id=%s", "java.lang.String.format(this, *args)") : null;
    }

    @Override // p193e.p194a.p678d4.AbstractC12595a
    /* renamed from: b */
    public boolean mo22845b() {
        return mo22846a() != null;
    }

    @Override // p193e.p194a.p678d4.AbstractC12595a
    /* renamed from: c */
    public String mo22844c() {
        String mo22846a = mo22846a();
        if (mo22846a == null) {
            mo22846a = "https://www.truecaller.com/download";
        }
        return mo22846a;
    }
}
