package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
/* renamed from: com.facebook.appevents.g */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/g.class */
public class C2271g {

    /* renamed from: a */
    public C2273h f2677a;

    /* renamed from: com.facebook.appevents.g$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/g$a.class */
    public enum EnumC2272a {
        AUTO,
        EXPLICIT_ONLY
    }

    public C2271g(Context context, String str, AccessToken accessToken) {
        this.f2677a = new C2273h(context, str, accessToken);
    }

    /* renamed from: a */
    public static String m35335a(Context context) {
        return C2273h.m35324a(context);
    }

    /* renamed from: a */
    public static void m35336a(Application application, String str) {
        C2273h.m35325a(application, str);
    }

    /* renamed from: a */
    public static void m35334a(Context context, String str) {
        C2273h.m35323a(context, str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public static void m35333a(String str) {
        C2273h.m35310c(str);
    }

    /* renamed from: b */
    public static EnumC2272a m35330b() {
        return C2273h.m35309d();
    }

    /* renamed from: b */
    public static C2271g m35329b(Context context) {
        return new C2271g(context, null, null);
    }

    /* renamed from: c */
    public static String m35328c() {
        return C2255b.m35374b();
    }

    /* renamed from: d */
    public static void m35327d() {
        C2273h.m35305h();
    }

    /* renamed from: a */
    public void m35337a() {
        this.f2677a.m35326a();
    }

    /* renamed from: a */
    public void m35332a(String str, double d, Bundle bundle) {
        this.f2677a.m35320a(str, d, bundle);
    }

    /* renamed from: a */
    public void m35331a(String str, Bundle bundle) {
        this.f2677a.m35319a(str, bundle);
    }
}
