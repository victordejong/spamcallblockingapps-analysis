package com.appsflyer.internal.referrer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/Referrer.class */
public abstract class Referrer {
    public final Map<String, Object> map = new HashMap();

    /* renamed from: ɩ */
    State f3077 = State.NOT_STARTED;

    /* renamed from: ι */
    long f3078;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/Referrer$State.class */
    public enum State {
        NOT_STARTED,
        STARTED,
        FINISHED
    }

    public State getState() {
        return this.f3077;
    }

    /* renamed from: Ι */
    final void m4023(Context context) {
        this.f3078 = System.currentTimeMillis();
        this.f3077 = State.STARTED;
        final Application application = (Application) context.getApplicationContext();
        application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.appsflyer.internal.referrer.Referrer.4
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityResumed(Activity activity) {
                Referrer.this.map.put(Payload.LATENCY_FOREGROUND, Long.valueOf(System.currentTimeMillis() - Referrer.this.f3078));
                application.unregisterActivityLifecycleCallbacks(this);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityStopped(Activity activity) {
            }
        });
    }
}
