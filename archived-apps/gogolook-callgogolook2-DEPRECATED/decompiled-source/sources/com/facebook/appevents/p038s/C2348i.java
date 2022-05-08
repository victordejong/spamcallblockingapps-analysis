package com.facebook.appevents.p038s;

import android.os.Bundle;
import androidx.work.PeriodicWorkRequest;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.C2283m;
import com.facebook.internal.C2503y;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Locale;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.s.i */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/i.class */
public class C2348i {

    /* renamed from: a */
    public static final String f2869a = "com.facebook.appevents.s.i";

    /* renamed from: b */
    public static final long[] f2870b = {PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, 1800000, 3600000, 21600000, AdUtils.TRACK_INSTALL_PERIOD, AdUtils.ONE_DAY, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, NumberInfo.Whoscall.Tag.EXPIRE_INTERVAL, 31536000000L};

    /* renamed from: a */
    public static int m35078a(long j) {
        int i = 0;
        while (true) {
            long[] jArr = f2870b;
            if (i >= jArr.length || jArr[i] >= j) {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static void m35079a() {
        C2503y.m34557a(EnumC6151v.APP_EVENTS, f2869a, "Clock skew detected");
    }

    /* renamed from: a */
    public static void m35077a(String str, C2347h hVar, String str2) {
        Long valueOf = Long.valueOf(hVar.m35090a() - hVar.m35086d().longValue());
        if (valueOf.longValue() < 0) {
            m35079a();
            valueOf = 0L;
        }
        Long valueOf2 = Long.valueOf(hVar.m35085e());
        Long l = valueOf2;
        if (valueOf2.longValue() < 0) {
            m35079a();
            l = 0L;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", hVar.m35088b());
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(m35078a(valueOf.longValue()))));
        C2349j f = hVar.m35084f();
        bundle.putString("fb_mobile_launch_source", f != null ? f.toString() : "Unclassified");
        bundle.putLong("_logTime", hVar.m35086d().longValue() / 1000);
        new C2283m(str, str2, null).m35301a("fb_mobile_deactivate_app", l.longValue() / 1000.0d, bundle);
    }

    /* renamed from: a */
    public static void m35076a(String str, C2349j jVar, String str2) {
        String jVar2 = jVar != null ? jVar.toString() : "Unclassified";
        Bundle bundle = new Bundle();
        bundle.putString("fb_mobile_launch_source", jVar2);
        C2283m mVar = new C2283m(str, str2, null);
        mVar.m35300a("fb_mobile_activate_app", bundle);
        if (C2283m.m35292c() != C2271g.EnumC2272a.EXPLICIT_ONLY) {
            mVar.m35303a();
        }
    }
}
