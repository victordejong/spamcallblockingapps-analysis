package com.crashlytics.android.core;

import java.io.File;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p006b.C0013ac;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/NativeCreateReportSpiCall.class */
class NativeCreateReportSpiCall extends AbstractC0007a implements CreateReportSpiCall {
    private static final String APP_META_FILE_MULTIPART_PARAM = "app_meta_file";
    private static final String BINARY_IMAGES_FILE_MULTIPART_PARAM = "binary_images_file";
    private static final String DEVICE_META_FILE_MULTIPART_PARAM = "device_meta_file";
    private static final String GZIP_FILE_CONTENT_TYPE = "application/octet-stream";
    private static final String KEYS_FILE_MULTIPART_PARAM = "keys_file";
    private static final String LOGS_FILE_MULTIPART_PARAM = "logs_file";
    private static final String METADATA_FILE_MULTIPART_PARAM = "crash_meta_file";
    private static final String MINIDUMP_FILE_MULTIPART_PARAM = "minidump_file";
    private static final String OS_META_FILE_MULTIPART_PARAM = "os_meta_file";
    private static final String REPORT_IDENTIFIER_PARAM = "report_id";
    private static final String SESSION_META_FILE_MULTIPART_PARAM = "session_meta_file";
    private static final String USER_META_FILE_MULTIPART_PARAM = "user_meta_file";

    public NativeCreateReportSpiCall(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar) {
        super(lVar, str, str2, hVar, EnumC0092d.POST);
    }

    private C0093e applyHeadersTo(C0093e eVar, String str) {
        eVar.m10231a(AbstractC0007a.HEADER_USER_AGENT, AbstractC0007a.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).m10231a(AbstractC0007a.HEADER_CLIENT_TYPE, AbstractC0007a.ANDROID_CLIENT_TYPE).m10231a(AbstractC0007a.HEADER_CLIENT_VERSION, this.kit.getVersion()).m10231a(AbstractC0007a.HEADER_API_KEY, str);
        return eVar;
    }

    private C0093e applyMultipartDataTo(C0093e eVar, Report report) {
        File[] files;
        String name;
        String str;
        eVar.m10223b(REPORT_IDENTIFIER_PARAM, report.getIdentifier());
        for (File file : report.getFiles()) {
            if (file.getName().equals("minidump")) {
                name = file.getName();
                str = MINIDUMP_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("metadata")) {
                name = file.getName();
                str = METADATA_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("binaryImages")) {
                name = file.getName();
                str = BINARY_IMAGES_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("session")) {
                name = file.getName();
                str = SESSION_META_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("app")) {
                name = file.getName();
                str = APP_META_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("device")) {
                name = file.getName();
                str = DEVICE_META_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("os")) {
                name = file.getName();
                str = OS_META_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("user")) {
                name = file.getName();
                str = USER_META_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("logs")) {
                name = file.getName();
                str = LOGS_FILE_MULTIPART_PARAM;
            } else if (file.getName().equals("keys")) {
                name = file.getName();
                str = KEYS_FILE_MULTIPART_PARAM;
            }
            eVar.m10229a(str, name, GZIP_FILE_CONTENT_TYPE, file);
        }
        return eVar;
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        C0093e applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest.apiKey), createReportRequest.report);
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int b = applyMultipartDataTo.m10227b();
        C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Result was: ".concat(String.valueOf(b)));
        return C0013ac.m10379a(b) == 0;
    }
}
