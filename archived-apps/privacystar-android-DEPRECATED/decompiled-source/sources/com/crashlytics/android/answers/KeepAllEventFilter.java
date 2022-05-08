package com.crashlytics.android.answers;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/KeepAllEventFilter.class */
class KeepAllEventFilter implements EventFilter {
    @Override // com.crashlytics.android.answers.EventFilter
    public boolean skipEvent(SessionEvent sessionEvent) {
        return false;
    }
}
