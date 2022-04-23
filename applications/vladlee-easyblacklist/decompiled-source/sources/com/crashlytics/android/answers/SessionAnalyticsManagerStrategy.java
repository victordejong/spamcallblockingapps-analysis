package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0084f;
import p000a.p001a.p002a.p003a.p004a.p012g.C0110b;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsManagerStrategy.class */
interface SessionAnalyticsManagerStrategy extends AbstractC0084f {
    void deleteAllEvents();

    void processEvent(SessionEvent.Builder builder);

    void sendEvents();

    void setAnalyticsSettingsData(C0110b bVar, String str);
}
