package com.crashlytics.android.answers;

import android.content.Context;
import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c;
import p000a.p001a.p002a.p003a.p004a.p011f.C0108d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersPreferenceManager.class */
class AnswersPreferenceManager {
    static final String PREFKEY_ANALYTICS_LAUNCHED = "analytics_launched";
    static final String PREF_STORE_NAME = "settings";
    private final AbstractC0107c prefStore;

    AnswersPreferenceManager(AbstractC0107c cVar) {
        this.prefStore = cVar;
    }

    public static AnswersPreferenceManager build(Context context) {
        return new AnswersPreferenceManager(new C0108d(context, PREF_STORE_NAME));
    }

    public boolean hasAnalyticsLaunched() {
        return this.prefStore.mo10190a().getBoolean(PREFKEY_ANALYTICS_LAUNCHED, false);
    }

    public void setAnalyticsLaunched() {
        AbstractC0107c cVar = this.prefStore;
        cVar.mo10189a(cVar.mo10188b().putBoolean(PREFKEY_ANALYTICS_LAUNCHED, true));
    }
}
