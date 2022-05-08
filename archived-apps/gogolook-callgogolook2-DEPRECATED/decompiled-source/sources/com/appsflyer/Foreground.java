package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground.class */
public class Foreground {
    @VisibleForTesting
    public static long CHECK_DELAY = 500;
    public static Listener listener;

    /* renamed from: com.appsflyer.Foreground$4 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/Foreground$4.class */
    public static final class C18024 implements Application.ActivityLifecycleCallbacks {

        /* renamed from: ı */
        public final /* synthetic */ Listener f1738;

        /* renamed from: Ι */
        public boolean f1740;

        /* renamed from: ɩ */
        public boolean f1739 = true;

        /* renamed from: ι */
        public Executor f1741 = Executors.newSingleThreadExecutor();

        public C18024(Listener listener) {
            this.f1738 = listener;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(@NonNull final Activity activity, Bundle bundle) {
            this.f1741.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.4
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
        public final void onActivityPaused(@NonNull final Activity activity) {
            this.f1741.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.3
                @Override // java.lang.Runnable
                public final void run() {
                    C18024.this.f1739 = true;
                    final Context applicationContext = activity.getApplicationContext();
                    try {
                        new Timer().schedule(new TimerTask() { // from class: com.appsflyer.Foreground.4.3.3
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public final void run() {
                                C18024 r0 = C18024.this;
                                if (r0.f1740 && r0.f1739) {
                                    r0.f1740 = false;
                                    try {
                                        r0.f1738.onBecameBackground(applicationContext);
                                    } catch (Exception e) {
                                        AFLogger.afErrorLog("Listener threw exception! ", e);
                                    }
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
            this.f1741.execute(new Runnable() { // from class: com.appsflyer.Foreground.4.5
                @Override // java.lang.Runnable
                public final void run() {
                    C18024 r0 = C18024.this;
                    if (!r0.f1740) {
                        try {
                            r0.f1738.onBecameForeground(activity);
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Listener thrown an exception: ", e);
                        }
                    }
                    C18024 r02 = C18024.this;
                    r02.f1739 = false;
                    r02.f1740 = true;
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

    /* renamed from: ɩ */
    public static void m36198(Context context, Listener listener2) {
        listener = listener2;
        C18024 r0 = new C18024(listener2);
        if (context instanceof Activity) {
            r0.onActivityResumed((Activity) context);
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(r0);
    }
}
