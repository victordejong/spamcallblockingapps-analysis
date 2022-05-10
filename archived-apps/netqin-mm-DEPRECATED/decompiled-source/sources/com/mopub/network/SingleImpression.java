package com.mopub.network;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/SingleImpression.class */
public class SingleImpression {

    /* renamed from: a */
    public final String f35057a;

    /* renamed from: b */
    public final ImpressionData f35058b;

    public SingleImpression(String str, ImpressionData impressionData) {
        this.f35057a = str;
        this.f35058b = impressionData;
    }

    public void sendImpression() {
        String str = this.f35057a;
        if (str != null) {
            ImpressionsEmitter.m3793a(str, this.f35058b);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "SingleImpression ad unit id may not be null.");
        }
    }
}
