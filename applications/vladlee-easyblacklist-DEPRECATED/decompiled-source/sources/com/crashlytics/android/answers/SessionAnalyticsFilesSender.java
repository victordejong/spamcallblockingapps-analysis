package com.crashlytics.android.answers;

import java.io.File;
import java.util.List;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p006b.C0013ac;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0085g;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsFilesSender.class */
class SessionAnalyticsFilesSender extends AbstractC0007a implements AbstractC0085g {
    static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    static final String FILE_PARAM_NAME = "session_analytics_file_";
    private final String apiKey;

    public SessionAnalyticsFilesSender(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar, String str3) {
        super(lVar, str, str2, hVar, EnumC0092d.POST);
        this.apiKey = str3;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0085g
    public boolean send(List<File> list) {
        C0093e a = getHttpRequest().m10231a(AbstractC0007a.HEADER_CLIENT_TYPE, AbstractC0007a.ANDROID_CLIENT_TYPE).m10231a(AbstractC0007a.HEADER_CLIENT_VERSION, this.kit.getVersion()).m10231a(AbstractC0007a.HEADER_API_KEY, this.apiKey);
        int i = 0;
        for (File file : list) {
            a.m10229a(FILE_PARAM_NAME.concat(String.valueOf(i)), file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a(Answers.TAG, "Sending " + list.size() + " analytics files to " + getUrl());
        int b = a.m10227b();
        C0137d.m10155c().mo10135a(Answers.TAG, "Response code for analytics file send is ".concat(String.valueOf(b)));
        return C0013ac.m10379a(b) == 0;
    }
}
