package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import p000a.p001a.p002a.p003a.p004a.p012g.C0110b;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy.class */
class DisabledSessionAnalyticsManagerStrategy implements SessionAnalyticsManagerStrategy {
    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0084f
    public void cancelTimeBasedFileRollOver() {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void deleteAllEvents() {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void processEvent(SessionEvent.Builder builder) {
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0084f
    public boolean rollFileOver() {
        return false;
    }

    public void scheduleTimeBasedRollOverIfNeeded() {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void sendEvents() {
    }

    @Override // com.crashlytics.android.answers.SessionAnalyticsManagerStrategy
    public void setAnalyticsSettingsData(C0110b bVar, String str) {
    }
}
