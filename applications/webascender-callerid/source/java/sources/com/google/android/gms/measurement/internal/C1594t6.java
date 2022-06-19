package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.internal.referrer.Payload;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.t6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t6.class */
public final class C1594t6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: f */
    final /* synthetic */ u6 f4506f;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        r4 r4Var;
        try {
            try {
                ((l5) this.f4506f).a.c().w().m1570a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    r4Var = ((l5) this.f4506f).a;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        ((l5) this.f4506f).a.G();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter(Payload.RFR);
                        if (bundle != null) {
                            z = false;
                        }
                        ((l5) this.f4506f).a.e().r(new RunnableC1589s6(this, z, data, str, queryParameter));
                        r4Var = ((l5) this.f4506f).a;
                    }
                    r4Var = ((l5) this.f4506f).a;
                }
            } catch (Exception e) {
                ((l5) this.f4506f).a.c().o().m1569b("Throwable caught in onActivityCreated", e);
                r4Var = ((l5) this.f4506f).a;
            }
            r4Var.Q().z(activity, bundle);
        } catch (Throwable th) {
            ((l5) this.f4506f).a.Q().z(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        ((l5) this.f4506f).a.Q().D(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ((l5) this.f4506f).a.Q().B(activity);
        y8 C = ((l5) this.f4506f).a.C();
        ((l5) C).a.e().r(new RunnableC1583r8(C, ((l5) C).a.a().m3165c()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        y8 C = ((l5) this.f4506f).a.C();
        ((l5) C).a.e().r(new RunnableC1577q8(C, ((l5) C).a.a().m3165c()));
        ((l5) this.f4506f).a.Q().A(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ((l5) this.f4506f).a.Q().C(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
