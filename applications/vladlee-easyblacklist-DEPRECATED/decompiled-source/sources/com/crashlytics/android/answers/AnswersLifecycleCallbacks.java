package com.crashlytics.android.answers;

import android.app.Activity;
import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import p000a.p001a.p002a.p003a.C0000a;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersLifecycleCallbacks.class */
class AnswersLifecycleCallbacks extends C0000a.AbstractC0002b {
    private final SessionAnalyticsManager analyticsManager;
    private final BackgroundManager backgroundManager;

    public AnswersLifecycleCallbacks(SessionAnalyticsManager sessionAnalyticsManager, BackgroundManager backgroundManager) {
        this.analyticsManager = sessionAnalyticsManager;
        this.backgroundManager = backgroundManager;
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityPaused(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.PAUSE);
        this.backgroundManager.onActivityPaused();
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityResumed(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.RESUME);
        this.backgroundManager.onActivityResumed();
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityStarted(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.START);
    }

    @Override // p000a.p001a.p002a.p003a.C0000a.AbstractC0002b
    public void onActivityStopped(Activity activity) {
        this.analyticsManager.onLifecycle(activity, SessionEvent.Type.STOP);
    }
}
