package com.mopub.common.privacy;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogUrlGenerator.class */
public class ConsentDialogUrlGenerator extends BaseUrlGenerator {
    @NonNull

    /* renamed from: e */
    public final Context f8237e;
    @NonNull

    /* renamed from: f */
    public final String f8238f;
    @NonNull

    /* renamed from: g */
    public final String f8239g;
    @Nullable

    /* renamed from: h */
    public Boolean f8240h;

    /* renamed from: i */
    public boolean f8241i;
    @Nullable

    /* renamed from: j */
    public String f8242j;
    @Nullable

    /* renamed from: k */
    public String f8243k;

    public ConsentDialogUrlGenerator(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f8237e = context.getApplicationContext();
        this.f8238f = str;
        this.f8239g = str2;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m30863b(str, Constants.GDPR_CONSENT_HANDLER);
        m30868a("id", this.f8238f);
        m30868a("current_consent_status", this.f8239g);
        m30868a("nv", "5.11.1");
        m30865b();
        m30862c();
        m30868a("language", ClientMetadata.getCurrentLanguage(this.f8237e));
        m30869a("gdpr_applies", this.f8240h);
        m30869a("force_gdpr_applies", Boolean.valueOf(this.f8241i));
        m30868a("consented_vendor_list_version", this.f8242j);
        m30868a("consented_privacy_policy_version", this.f8243k);
        m30868a("bundle", ClientMetadata.getInstance(this.f8237e).getAppPackageName());
        return m30861d();
    }

    public ConsentDialogUrlGenerator withConsentedPrivacyPolicyVersion(@Nullable String str) {
        this.f8243k = str;
        return this;
    }

    public ConsentDialogUrlGenerator withConsentedVendorListVersion(@Nullable String str) {
        this.f8242j = str;
        return this;
    }

    public ConsentDialogUrlGenerator withForceGdprApplies(boolean z) {
        this.f8241i = z;
        return this;
    }

    public ConsentDialogUrlGenerator withGdprApplies(@Nullable Boolean bool) {
        this.f8240h = bool;
        return this;
    }
}
