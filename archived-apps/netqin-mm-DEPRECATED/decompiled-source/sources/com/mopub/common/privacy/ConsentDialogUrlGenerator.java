package com.mopub.common.privacy;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogUrlGenerator.class */
public class ConsentDialogUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f33857e;

    /* renamed from: f */
    public final String f33858f;

    /* renamed from: g */
    public final String f33859g;

    /* renamed from: h */
    public Boolean f33860h;

    /* renamed from: i */
    public boolean f33861i;

    /* renamed from: j */
    public String f33862j;

    /* renamed from: k */
    public String f33863k;

    public ConsentDialogUrlGenerator(Context context, String str, String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f33857e = context.getApplicationContext();
        this.f33858f = str;
        this.f33859g = str2;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4707b(str, Constants.GDPR_CONSENT_HANDLER);
        m4712a("id", this.f33858f);
        m4712a("current_consent_status", this.f33859g);
        m4712a("nv", "5.11.1");
        m4709b();
        m4706c();
        m4712a("language", ClientMetadata.getCurrentLanguage(this.f33857e));
        m4713a("gdpr_applies", this.f33860h);
        m4713a("force_gdpr_applies", Boolean.valueOf(this.f33861i));
        m4712a("consented_vendor_list_version", this.f33862j);
        m4712a("consented_privacy_policy_version", this.f33863k);
        m4712a("bundle", ClientMetadata.getInstance(this.f33857e).getAppPackageName());
        return m4705d();
    }

    public ConsentDialogUrlGenerator withConsentedPrivacyPolicyVersion(String str) {
        this.f33863k = str;
        return this;
    }

    public ConsentDialogUrlGenerator withConsentedVendorListVersion(String str) {
        this.f33862j = str;
        return this;
    }

    public ConsentDialogUrlGenerator withForceGdprApplies(boolean z) {
        this.f33861i = z;
        return this;
    }

    public ConsentDialogUrlGenerator withGdprApplies(Boolean bool) {
        this.f33860h = bool;
        return this;
    }
}
