package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinSdkConfiguration;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/SdkConfigurationImpl.class */
public class SdkConfigurationImpl implements AppLovinSdkConfiguration {

    /* renamed from: a */
    public final C2341l f21593a;

    public SdkConfigurationImpl(C2341l lVar) {
        this.f21593a = lVar;
    }

    @Override // com.applovin.sdk.AppLovinSdkConfiguration
    public AppLovinSdkConfiguration.ConsentDialogState getConsentDialogState() {
        String str = (String) this.f21593a.m30291a(C2251d.C2256e.f8686i4);
        return "applies".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentDialogState.APPLIES : "does_not_apply".equalsIgnoreCase(str) ? AppLovinSdkConfiguration.ConsentDialogState.DOES_NOT_APPLY : AppLovinSdkConfiguration.ConsentDialogState.UNKNOWN;
    }

    public String toString() {
        return "AppLovinSdkConfiguration{consentDialogState=" + getConsentDialogState() + '}';
    }
}
