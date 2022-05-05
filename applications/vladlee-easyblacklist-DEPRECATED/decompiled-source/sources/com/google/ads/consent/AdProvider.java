package com.google.ads.consent;

import com.google.p051a.p052a.AbstractC1371c;
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/AdProvider.class */
public class AdProvider {
    @AbstractC1371c(m6359a = "company_id")

    /* renamed from: id */
    private String f5784id;
    @AbstractC1371c(m6359a = "company_name")
    private String name;
    @AbstractC1371c(m6359a = "policy_url")
    private String privacyPolicyUrlString;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdProvider adProvider = (AdProvider) obj;
        return this.f5784id.equals(adProvider.f5784id) && this.name.equals(adProvider.name) && this.privacyPolicyUrlString.equals(adProvider.privacyPolicyUrlString);
    }

    public String getId() {
        return this.f5784id;
    }

    public String getName() {
        return this.name;
    }

    public String getPrivacyPolicyUrlString() {
        return this.privacyPolicyUrlString;
    }

    public int hashCode() {
        return (((this.f5784id.hashCode() * 31) + this.name.hashCode()) * 31) + this.privacyPolicyUrlString.hashCode();
    }

    public void setId(String str) {
        this.f5784id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPrivacyPolicyUrlString(String str) {
        this.privacyPolicyUrlString = str;
    }
}
