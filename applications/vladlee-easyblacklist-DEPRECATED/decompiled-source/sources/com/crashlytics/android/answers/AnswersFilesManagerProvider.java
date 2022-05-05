package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import p000a.p001a.p002a.p003a.p004a.p006b.C0014ad;
import p000a.p001a.p002a.p003a.p004a.p009d.C0086h;
import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0105a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersFilesManagerProvider.class */
public class AnswersFilesManagerProvider {
    static final String SESSION_ANALYTICS_FILE_NAME = "session_analytics.tap";
    static final String SESSION_ANALYTICS_TO_SEND_DIR = "session_analytics_to_send";
    final Context context;
    final AbstractC0105a fileStore;

    public AnswersFilesManagerProvider(Context context, AbstractC0105a aVar) {
        this.context = context;
        this.fileStore = aVar;
    }

    public SessionAnalyticsFilesManager getAnalyticsFilesManager() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return new SessionAnalyticsFilesManager(this.context, new SessionEventTransform(), new C0014ad(), new C0086h(this.context, this.fileStore.mo10191a(), SESSION_ANALYTICS_FILE_NAME, SESSION_ANALYTICS_TO_SEND_DIR));
        }
        throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
    }
}
