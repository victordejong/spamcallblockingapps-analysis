package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.appevents.C2271g;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.m */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/m.class */
public class C2283m {

    /* renamed from: a */
    public C2273h f2706a;

    public C2283m(Context context) {
        this.f2706a = new C2273h(context, (String) null, (AccessToken) null);
    }

    public C2283m(Context context, String str) {
        this.f2706a = new C2273h(context, str, (AccessToken) null);
    }

    public C2283m(String str, String str2, AccessToken accessToken) {
        this.f2706a = new C2273h(str, str2, accessToken);
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: a */
    public static void m35296a(Map<String, String> map) {
        C2288p.m35277a(map);
    }

    /* renamed from: b */
    public static Executor m35295b() {
        return C2273h.m35311c();
    }

    /* renamed from: c */
    public static C2271g.EnumC2272a m35292c() {
        return C2273h.m35309d();
    }

    /* renamed from: d */
    public static String m35291d() {
        return C2273h.m35307f();
    }

    /* renamed from: a */
    public void m35303a() {
        this.f2706a.m35326a();
    }

    /* renamed from: a */
    public void m35302a(String str) {
        this.f2706a.m35321a(str);
    }

    /* renamed from: a */
    public void m35301a(String str, double d, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35320a(str, d, bundle);
        }
    }

    /* renamed from: a */
    public void m35300a(String str, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35319a(str, bundle);
        }
    }

    /* renamed from: a */
    public void m35299a(String str, Double d, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35318a(str, d, bundle);
        }
    }

    /* renamed from: a */
    public void m35298a(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35316a(str, bigDecimal, currency, bundle);
        }
    }

    /* renamed from: a */
    public void m35297a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35315a(bigDecimal, currency, bundle);
        }
    }

    /* renamed from: b */
    public void m35294b(String str) {
        if (C6135n.m23742i()) {
            this.f2706a.m35318a(str, (Double) null, (Bundle) null);
        }
    }

    /* renamed from: b */
    public void m35293b(String str, Bundle bundle) {
        if (C6135n.m23742i()) {
            this.f2706a.m35318a(str, (Double) null, bundle);
        }
    }
}
