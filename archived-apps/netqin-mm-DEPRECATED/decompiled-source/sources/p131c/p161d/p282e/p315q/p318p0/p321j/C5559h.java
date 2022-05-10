package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.p0.j.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/h.class */
public class C5559h implements FirebaseInAppMessagingDisplay, Application.ActivityLifecycleCallbacks {
    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
    public void displayMessage(AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        C5562j.m23515a("Created activity: " + activity.getClass().getName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        C5562j.m23515a("Destroyed activity: " + activity.getClass().getName());
    }

    public void onActivityPaused(Activity activity) {
        C5562j.m23515a("Pausing activity: " + activity.getClass().getName());
    }

    public void onActivityResumed(Activity activity) {
        C5562j.m23515a("Resumed activity: " + activity.getClass().getName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        C5562j.m23515a("SavedInstance activity: " + activity.getClass().getName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        C5562j.m23515a("Started activity: " + activity.getClass().getName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        C5562j.m23515a("Stopped activity: " + activity.getClass().getName());
    }
}
