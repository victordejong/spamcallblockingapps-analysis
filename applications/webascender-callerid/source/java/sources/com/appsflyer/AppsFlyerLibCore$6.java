package com.appsflyer;

import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.referrer.Referrer;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$6.class */
final /* synthetic */ class AppsFlyerLibCore$6 {

    /* renamed from: ı */
    static final /* synthetic */ int[] f2906;

    /* renamed from: ι */
    static final /* synthetic */ int[] f2907;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
    static {
        int[] iArr = new int[Referrer.State.values().length];
        f2906 = iArr;
        try {
            iArr[Referrer.State.FINISHED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f2906[Referrer.State.STARTED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        int[] iArr2 = new int[AppsFlyerProperties.EmailsCryptType.values().length];
        f2907 = iArr2;
        try {
            iArr2[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f2907[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
    }
}
