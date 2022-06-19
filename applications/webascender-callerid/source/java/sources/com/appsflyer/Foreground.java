package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground.class */
public class Foreground {
    public static long CHECK_DELAY = 500;
    public static Listener listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.Foreground$5 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$5.class */
    public static final class C06425 implements Application.ActivityLifecycleCallbacks {

        /* renamed from: ɩ */
        final /* synthetic */ Listener f2931;

        /* renamed from: Ι */
        boolean f2932;

        /* renamed from: ι */
        boolean f2933 = true;

        /* renamed from: ı */
        private Executor f2930 = Executors.newSingleThreadExecutor();

        C06425(Listener listener) {
            this.f2931 = listener;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(final Activity activity, Bundle bundle) {
            this.f2930.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.3
                @Override // java.lang.Runnable
                public final void run() {
                    AFDeepLinkManager.getInstance().collectIntentsFromActivities(activity.getIntent());
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(final Activity activity) {
            this.f2930.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.2
                @Override // java.lang.Runnable
                public final void run() {
                    C06425.this.f2933 = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.Foreground.5.2.5
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                C06425 c06425 = C06425.this;
                                if (!c06425.f2932 || !c06425.f2933) {
                                    return;
                                }
                                c06425.f2932 = false;
                                try {
                                    c06425.f2931.onBecameBackground(applicationContext);
                                } catch (Exception e) {
                                    AFLogger.afErrorLog("Listener threw exception! ", e);
                                }
                            }
                        }, Foreground.CHECK_DELAY);
                    } catch (Throwable th) {
                        AFLogger.afErrorLog("Background task failed with a throwable: ", th);
                    }
                }
            });
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(final Activity activity) {
            this.f2930.execute(new Runnable() { // from class: com.appsflyer.Foreground.5.5
                @Override // java.lang.Runnable
                public final void run() {
                    C06425 c06425 = C06425.this;
                    if (!c06425.f2932) {
                        try {
                            c06425.f2931.onBecameForeground(activity);
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e);
                        }
                    }
                    C06425 c064252 = C06425.this;
                    c064252.f2933 = false;
                    c064252.f2932 = true;
                }
            });
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
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$Listener.class */
    public interface Listener {
        void onBecameBackground(Context context);

        void onBecameForeground(Activity activity);
    }

    /* renamed from: ǃ */
    static void m4108(Context context, Listener listener2) {
        listener = listener2;
        C06425 c06425 = new C06425(listener2);
        if (context instanceof Activity) {
            c06425.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(c06425);
    }
}
