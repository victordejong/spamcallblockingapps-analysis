package com.crashlytics.android.answers;

import android.content.Context;
import java.util.UUID;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0032m;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d;
import p000a.p001a.p002a.p003a.p004a.p012g.C0110b;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsFilesManager.class */
class SessionAnalyticsFilesManager extends AbstractC0079b<SessionEvent> {
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION = ".tap";
    private static final String SESSION_ANALYTICS_TO_SEND_FILE_PREFIX = "sa";
    private C0110b analyticsSettingsData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionAnalyticsFilesManager(Context context, SessionEventTransform sessionEventTransform, AbstractC0032m mVar, AbstractC0082d dVar) {
        super(context, sessionEventTransform, mVar, dVar, 100);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b
    protected String generateUniqueRollOverFileName() {
        UUID randomUUID = UUID.randomUUID();
        return "sa_" + randomUUID.toString() + AbstractC0079b.ROLL_OVER_FILE_NAME_SEPARATOR + this.currentTimeProvider.mo10310a() + SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b
    public int getMaxByteSizePerFile() {
        C0110b bVar = this.analyticsSettingsData;
        return bVar == null ? super.getMaxByteSizePerFile() : bVar.f211c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b
    public int getMaxFilesToKeep() {
        C0110b bVar = this.analyticsSettingsData;
        return bVar == null ? super.getMaxFilesToKeep() : bVar.f213e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnalyticsSettingsData(C0110b bVar) {
        this.analyticsSettingsData = bVar;
    }
}
