package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.crashlytics.android.answers.BackgroundManager;
import com.crashlytics.android.answers.SessionEvent;
import java.util.concurrent.ScheduledExecutorService;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0000a;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0036q;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
import p000a.p001a.p002a.p003a.p004a.p010e.C0090b;
import p000a.p001a.p002a.p003a.p004a.p011f.C0106b;
import p000a.p001a.p002a.p003a.p004a.p012g.C0110b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsManager.class */
public class SessionAnalyticsManager implements BackgroundManager.Listener {
    static final String EXECUTOR_SERVICE = "Answers Events Handler";
    static final String ON_CRASH_ERROR_MSG = "onCrash called from main thread!!!";
    final BackgroundManager backgroundManager;
    final AnswersEventsHandler eventsHandler;
    private final long installedAt;
    final C0000a lifecycleManager;
    final AnswersPreferenceManager preferenceManager;

    SessionAnalyticsManager(AnswersEventsHandler answersEventsHandler, C0000a aVar, BackgroundManager backgroundManager, AnswersPreferenceManager answersPreferenceManager, long j) {
        this.eventsHandler = answersEventsHandler;
        this.lifecycleManager = aVar;
        this.backgroundManager = backgroundManager;
        this.preferenceManager = answersPreferenceManager;
        this.installedAt = j;
    }

    public static SessionAnalyticsManager build(AbstractC0147l lVar, Context context, C0043x xVar, String str, String str2, long j) {
        SessionMetadataCollector sessionMetadataCollector = new SessionMetadataCollector(context, xVar, str, str2);
        AnswersFilesManagerProvider answersFilesManagerProvider = new AnswersFilesManagerProvider(context, new C0106b(lVar));
        C0090b bVar = new C0090b(C0137d.m10155c());
        C0000a aVar = new C0000a(context);
        ScheduledExecutorService b = C0036q.m10301b(EXECUTOR_SERVICE);
        return new SessionAnalyticsManager(new AnswersEventsHandler(lVar, context, answersFilesManagerProvider, sessionMetadataCollector, bVar, b, new FirebaseAnalyticsApiAdapter(context)), aVar, new BackgroundManager(b), AnswersPreferenceManager.build(context), j);
    }

    public void disable() {
        this.lifecycleManager.m10410a();
        this.eventsHandler.disable();
    }

    public void enable() {
        this.eventsHandler.enable();
        this.lifecycleManager.m10409a(new AnswersLifecycleCallbacks(this, this.backgroundManager));
        this.backgroundManager.registerListener(this);
        if (isFirstLaunch()) {
            onInstall(this.installedAt);
            this.preferenceManager.setAnalyticsLaunched();
        }
    }

    boolean isFirstLaunch() {
        return !this.preferenceManager.hasAnalyticsLaunched();
    }

    @Override // com.crashlytics.android.answers.BackgroundManager.Listener
    public void onBackground() {
        C0137d.m10155c().mo10135a(Answers.TAG, "Flush events when app is backgrounded");
        this.eventsHandler.flushEvents();
    }

    public void onCrash(String str, String str2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            C0137d.m10155c().mo10135a(Answers.TAG, "Logged crash");
            this.eventsHandler.processEventSync(SessionEvent.crashEventBuilder(str, str2));
            return;
        }
        throw new IllegalStateException(ON_CRASH_ERROR_MSG);
    }

    public void onCustom(CustomEvent customEvent) {
        C0137d.m10155c().mo10135a(Answers.TAG, "Logged custom event: ".concat(String.valueOf(customEvent)));
        this.eventsHandler.processEventAsync(SessionEvent.customEventBuilder(customEvent));
    }

    public void onError(String str) {
    }

    public void onInstall(long j) {
        C0137d.m10155c().mo10135a(Answers.TAG, "Logged install");
        this.eventsHandler.processEventAsyncAndFlush(SessionEvent.installEventBuilder(j));
    }

    public void onLifecycle(Activity activity, SessionEvent.Type type) {
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a(Answers.TAG, "Logged lifecycle event: " + type.name());
        this.eventsHandler.processEventAsync(SessionEvent.lifecycleEventBuilder(type, activity));
    }

    public void onPredefined(PredefinedEvent predefinedEvent) {
        C0137d.m10155c().mo10135a(Answers.TAG, "Logged predefined event: ".concat(String.valueOf(predefinedEvent)));
        this.eventsHandler.processEventAsync(SessionEvent.predefinedEventBuilder(predefinedEvent));
    }

    public void setAnalyticsSettingsData(C0110b bVar, String str) {
        this.backgroundManager.setFlushOnBackground(bVar.f218j);
        this.eventsHandler.setAnalyticsSettingsData(bVar, str);
    }
}
