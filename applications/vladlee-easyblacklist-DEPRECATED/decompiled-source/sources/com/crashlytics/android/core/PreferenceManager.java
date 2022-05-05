package com.crashlytics.android.core;

import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c;
import p000a.p001a.p002a.p003a.p004a.p011f.C0108d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/PreferenceManager.class */
public class PreferenceManager {
    static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final String PREF_MIGRATION_COMPLETE = "preferences_migration_complete";
    private static final boolean SHOULD_ALWAYS_SEND_REPORTS_DEFAULT = false;
    private final CrashlyticsCore kit;
    private final AbstractC0107c preferenceStore;

    public PreferenceManager(AbstractC0107c cVar, CrashlyticsCore crashlyticsCore) {
        this.preferenceStore = cVar;
        this.kit = crashlyticsCore;
    }

    public static PreferenceManager create(AbstractC0107c cVar, CrashlyticsCore crashlyticsCore) {
        return new PreferenceManager(cVar, crashlyticsCore);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldAlwaysSendReports(boolean z) {
        AbstractC0107c cVar = this.preferenceStore;
        cVar.mo10189a(cVar.mo10188b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldAlwaysSendReports() {
        if (!this.preferenceStore.mo10190a().contains(PREF_MIGRATION_COMPLETE)) {
            C0108d dVar = new C0108d(this.kit);
            if (!this.preferenceStore.mo10190a().contains(PREF_ALWAYS_SEND_REPORTS_KEY) && dVar.mo10190a().contains(PREF_ALWAYS_SEND_REPORTS_KEY)) {
                boolean z = dVar.mo10190a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
                AbstractC0107c cVar = this.preferenceStore;
                cVar.mo10189a(cVar.mo10188b().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
            }
            AbstractC0107c cVar2 = this.preferenceStore;
            cVar2.mo10189a(cVar2.mo10188b().putBoolean(PREF_MIGRATION_COMPLETE, true));
        }
        return this.preferenceStore.mo10190a().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }
}
