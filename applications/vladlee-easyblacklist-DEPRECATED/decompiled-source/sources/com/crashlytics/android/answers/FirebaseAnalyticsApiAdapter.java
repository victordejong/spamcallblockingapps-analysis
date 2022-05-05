package com.crashlytics.android.answers;

import android.content.Context;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/FirebaseAnalyticsApiAdapter.class */
public class FirebaseAnalyticsApiAdapter {
    private final Context context;
    private EventLogger eventLogger;
    private final FirebaseAnalyticsEventMapper eventMapper;

    public FirebaseAnalyticsApiAdapter(Context context) {
        this(context, new FirebaseAnalyticsEventMapper());
    }

    public FirebaseAnalyticsApiAdapter(Context context, FirebaseAnalyticsEventMapper firebaseAnalyticsEventMapper) {
        this.context = context;
        this.eventMapper = firebaseAnalyticsEventMapper;
    }

    public EventLogger getFirebaseAnalytics() {
        if (this.eventLogger == null) {
            this.eventLogger = AppMeasurementEventLogger.getEventLogger(this.context);
        }
        return this.eventLogger;
    }

    public void processEvent(SessionEvent sessionEvent) {
        String concat;
        AbstractC0150o c;
        EventLogger firebaseAnalytics = getFirebaseAnalytics();
        if (firebaseAnalytics == null) {
            c = C0137d.m10155c();
            concat = "Firebase analytics logging was enabled, but not available...";
        } else {
            FirebaseAnalyticsEvent mapEvent = this.eventMapper.mapEvent(sessionEvent);
            if (mapEvent == null) {
                c = C0137d.m10155c();
                concat = "Fabric event was not mappable to Firebase event: ".concat(String.valueOf(sessionEvent));
            } else {
                firebaseAnalytics.logEvent(mapEvent.getEventName(), mapEvent.getEventParams());
                if ("levelEnd".equals(sessionEvent.predefinedType)) {
                    firebaseAnalytics.logEvent("post_score", mapEvent.getEventParams());
                    return;
                }
                return;
            }
        }
        c.mo10135a(Answers.TAG, concat);
    }
}
