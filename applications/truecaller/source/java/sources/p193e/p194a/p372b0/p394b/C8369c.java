package p193e.p194a.p372b0.p394b;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.b0.b.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/c.class */
public final class C8369c {

    /* renamed from: a */
    public static volatile boolean f25730a;

    /* renamed from: b */
    public static final C8369c f25731b = new C8369c();

    /* renamed from: a */
    public final void m28630a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (f25730a) {
            return;
        }
        synchronized (this) {
            if (!f25730a) {
                try {
                    ProviderInstaller.m38549a(context);
                } catch (Exception e) {
                    if (!(e instanceof GooglePlayServicesRepairableException) && !(e instanceof GooglePlayServicesNotAvailableException)) {
                        throw e;
                    }
                }
                f25730a = true;
            }
        }
    }
}
