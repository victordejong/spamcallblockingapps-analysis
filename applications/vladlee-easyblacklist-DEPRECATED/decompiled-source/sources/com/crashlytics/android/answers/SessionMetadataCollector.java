package com.crashlytics.android.answers;

import android.content.Context;
import java.util.Map;
import java.util.UUID;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionMetadataCollector.class */
public class SessionMetadataCollector {
    private final Context context;
    private final C0043x idManager;
    private final String versionCode;
    private final String versionName;

    public SessionMetadataCollector(Context context, C0043x xVar, String str, String str2) {
        this.context = context;
        this.idManager = xVar;
        this.versionCode = str;
        this.versionName = str2;
    }

    public SessionEventMetadata getMetadata() {
        Map<C0043x.EnumC0044a, String> g = this.idManager.m10288g();
        String c = this.idManager.m10292c();
        String b = this.idManager.m10293b();
        Boolean i = this.idManager.m10286i();
        String str = g.get(C0043x.EnumC0044a.FONT_TOKEN);
        String k = C0026j.m10318k(this.context);
        return new SessionEventMetadata(c, UUID.randomUUID().toString(), b, i, str, k, C0043x.m10291d() + "/" + C0043x.m10290e(), C0043x.m10289f(), this.versionCode, this.versionName);
    }
}
