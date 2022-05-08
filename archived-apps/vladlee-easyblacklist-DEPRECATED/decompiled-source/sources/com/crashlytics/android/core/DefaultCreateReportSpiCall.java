package com.crashlytics.android.core;

import java.io.File;
import java.util.Map;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p006b.C0013ac;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/DefaultCreateReportSpiCall.class */
class DefaultCreateReportSpiCall extends AbstractC0007a implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";
    static final String MULTI_FILE_PARAM = "report[file";

    public DefaultCreateReportSpiCall(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar) {
        super(lVar, str, str2, hVar, EnumC0092d.POST);
    }

    DefaultCreateReportSpiCall(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar, EnumC0092d dVar) {
        super(lVar, str, str2, hVar, dVar);
    }

    private C0093e applyHeadersTo(C0093e eVar, CreateReportRequest createReportRequest) {
        C0093e a = eVar.m10231a(AbstractC0007a.HEADER_API_KEY, createReportRequest.apiKey).m10231a(AbstractC0007a.HEADER_CLIENT_TYPE, AbstractC0007a.ANDROID_CLIENT_TYPE).m10231a(AbstractC0007a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        for (Map.Entry<String, String> entry : createReportRequest.report.getCustomHeaders().entrySet()) {
            a = a.m10231a(entry.getKey(), entry.getValue());
        }
        return a;
    }

    private C0093e applyMultipartDataTo(C0093e eVar, Report report) {
        File[] files;
        eVar.m10223b(IDENTIFIER_PARAM, report.getIdentifier());
        if (report.getFiles().length == 1) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Adding single file " + report.getFileName() + " to report " + report.getIdentifier());
            return eVar.m10229a(FILE_PARAM, report.getFileName(), FILE_CONTENT_TYPE, report.getFile());
        }
        int i = 0;
        for (File file : report.getFiles()) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Adding file " + file.getName() + " to report " + report.getIdentifier());
            StringBuilder sb = new StringBuilder(MULTI_FILE_PARAM);
            sb.append(i);
            sb.append("]");
            eVar.m10229a(sb.toString(), file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        return eVar;
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        C0093e applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest), createReportRequest.report);
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int b = applyMultipartDataTo.m10227b();
        AbstractC0150o c2 = C0137d.m10155c();
        c2.mo10135a(CrashlyticsCore.TAG, "Create report request ID: " + applyMultipartDataTo.m10233a(AbstractC0007a.HEADER_REQUEST_ID));
        C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Result was: ".concat(String.valueOf(b)));
        return C0013ac.m10379a(b) == 0;
    }
}
