package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"CommitPrefEdits"})
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/PreferenceManager.class */
public class PreferenceManager {
    static final String PREF_ALWAYS_SEND_REPORTS_KEY = "always_send_reports_opt_in";
    private static final String PREF_MIGRATION_COMPLETE = "preferences_migration_complete";
    private static final boolean SHOULD_ALWAYS_SEND_REPORTS_DEFAULT = false;
    private final CrashlyticsCore kit;
    private final PreferenceStore preferenceStore;

    public PreferenceManager(PreferenceStore preferenceStore, CrashlyticsCore crashlyticsCore) {
        this.preferenceStore = preferenceStore;
        this.kit = crashlyticsCore;
    }

    public static PreferenceManager create(PreferenceStore preferenceStore, CrashlyticsCore crashlyticsCore) {
        return new PreferenceManager(preferenceStore, crashlyticsCore);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldAlwaysSendReports(boolean z) {
        this.preferenceStore.save(this.preferenceStore.edit().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldAlwaysSendReports() {
        if (!this.preferenceStore.get().contains(PREF_MIGRATION_COMPLETE)) {
            PreferenceStoreImpl preferenceStoreImpl = new PreferenceStoreImpl(this.kit);
            if (!this.preferenceStore.get().contains(PREF_ALWAYS_SEND_REPORTS_KEY) && preferenceStoreImpl.get().contains(PREF_ALWAYS_SEND_REPORTS_KEY)) {
                this.preferenceStore.save(this.preferenceStore.edit().putBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, preferenceStoreImpl.get().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false)));
            }
            this.preferenceStore.save(this.preferenceStore.edit().putBoolean(PREF_MIGRATION_COMPLETE, true));
        }
        return this.preferenceStore.get().getBoolean(PREF_ALWAYS_SEND_REPORTS_KEY, false);
    }
}
