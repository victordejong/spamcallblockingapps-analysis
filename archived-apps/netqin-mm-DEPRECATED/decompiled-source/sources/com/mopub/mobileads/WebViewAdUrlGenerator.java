package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.ExternalViewabilitySessionManager;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewAdUrlGenerator.class */
public class WebViewAdUrlGenerator extends AdUrlGenerator {

    /* renamed from: n */
    public final boolean f34432n;

    public WebViewAdUrlGenerator(Context context, boolean z) {
        super(context);
        this.f34432n = z;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4707b(str, Constants.AD_HANDLER);
        m4714a("6");
        m4744a(ClientMetadata.getInstance(this.f33630e));
        m4741b(true);
        m4711a(this.f34432n);
        m4740c(ExternalViewabilitySessionManager.ViewabilityVendor.getEnabledVendorKey());
        return m4705d();
    }
}
