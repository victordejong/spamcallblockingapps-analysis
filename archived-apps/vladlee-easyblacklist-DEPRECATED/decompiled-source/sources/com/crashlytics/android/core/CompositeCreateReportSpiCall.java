package com.crashlytics.android.core;

import com.crashlytics.android.core.Report;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CompositeCreateReportSpiCall.class */
class CompositeCreateReportSpiCall implements CreateReportSpiCall {
    private final DefaultCreateReportSpiCall javaReportSpiCall;
    private final NativeCreateReportSpiCall nativeReportSpiCall;

    /* renamed from: com.crashlytics.android.core.CompositeCreateReportSpiCall$1 */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CompositeCreateReportSpiCall$1.class */
    /* synthetic */ class C13141 {
        static final /* synthetic */ int[] $SwitchMap$com$crashlytics$android$core$Report$Type = new int[Report.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$crashlytics$android$core$Report$Type[Report.Type.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$crashlytics$android$core$Report$Type[Report.Type.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public CompositeCreateReportSpiCall(DefaultCreateReportSpiCall defaultCreateReportSpiCall, NativeCreateReportSpiCall nativeCreateReportSpiCall) {
        this.javaReportSpiCall = defaultCreateReportSpiCall;
        this.nativeReportSpiCall = nativeCreateReportSpiCall;
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        int i = C13141.$SwitchMap$com$crashlytics$android$core$Report$Type[createReportRequest.report.getType().ordinal()];
        if (i == 1) {
            this.javaReportSpiCall.invoke(createReportRequest);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            this.nativeReportSpiCall.invoke(createReportRequest);
            return true;
        }
    }
}
