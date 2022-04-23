package p000a.p001a.p002a.p003a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;
/* renamed from: a.a.a.a.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a.class */
public final class C0000a {

    /* renamed from: a */
    private final Application f0a;

    /* renamed from: b */
    private C0001a f1b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a$a.class */
    public static final class C0001a {

        /* renamed from: a */
        private final Set<Application.ActivityLifecycleCallbacks> f2a = new HashSet();

        /* renamed from: b */
        private final Application f3b;

        C0001a(Application application) {
            this.f3b = application;
        }

        /* renamed from: a */
        static /* synthetic */ void m10408a(C0001a aVar) {
            for (Application.ActivityLifecycleCallbacks activityLifecycleCallbacks : aVar.f2a) {
                aVar.f3b.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
            }
        }

        /* renamed from: a */
        static /* synthetic */ boolean m10407a(C0001a aVar, AbstractC0002b bVar) {
            if (aVar.f3b == null) {
                return false;
            }
            C0135b bVar2 = new C0135b(aVar, bVar);
            aVar.f3b.registerActivityLifecycleCallbacks(bVar2);
            aVar.f2a.add(bVar2);
            return true;
        }
    }

    /* renamed from: a.a.a.a.a$b */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a$b.class */
    public static abstract class AbstractC0002b {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public C0000a(Context context) {
        this.f0a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f1b = new C0001a(this.f0a);
        }
    }

    /* renamed from: a */
    public final void m10410a() {
        C0001a aVar = this.f1b;
        if (aVar != null) {
            C0001a.m10408a(aVar);
        }
    }

    /* renamed from: a */
    public final boolean m10409a(AbstractC0002b bVar) {
        C0001a aVar = this.f1b;
        return aVar != null && C0001a.m10407a(aVar, bVar);
    }
}
