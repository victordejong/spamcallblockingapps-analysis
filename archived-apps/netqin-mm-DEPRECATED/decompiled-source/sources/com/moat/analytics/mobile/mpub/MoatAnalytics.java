package com.moat.analytics.mobile.mpub;

import android.app.Application;
import com.moat.analytics.mobile.mpub.AbstractC8661v;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/MoatAnalytics.class */
public abstract class MoatAnalytics {

    /* renamed from: a */
    public static MoatAnalytics f33422a;

    public static MoatAnalytics getInstance() {
        MoatAnalytics moatAnalytics;
        synchronized (MoatAnalytics.class) {
            try {
                if (f33422a == null) {
                    try {
                        f33422a = new C8641k();
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                        f33422a = new AbstractC8661v.C8662a();
                    }
                }
                moatAnalytics = f33422a;
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
