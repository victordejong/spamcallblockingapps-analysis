package com.moat.analytics.mobile.inm;

import android.app.Application;
import com.moat.analytics.mobile.inm.AbstractC8580v;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/MoatAnalytics.class */
public abstract class MoatAnalytics {

    /* renamed from: a */
    public static MoatAnalytics f33205a;

    public static MoatAnalytics getInstance() {
        MoatAnalytics moatAnalytics;
        synchronized (MoatAnalytics.class) {
            try {
                if (f33205a == null) {
                    try {
                        f33205a = new C8560k();
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                        f33205a = new AbstractC8580v.C8581a();
                    }
                }
                moatAnalytics = f33205a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return moatAnalytics;
    }

    public abstract void prepareNativeDisplayTracking(String str);

    public abstract void start(Application application);

    public abstract void start(MoatOptions moatOptions, Application application);
}
