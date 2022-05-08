package com.google.ads.consent;

import com.google.p051a.p052a.AbstractC1371c;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentData.class */
public class ConsentData {
    private static final String SDK_PLATFORM = "android";
    private static final String SDK_VERSION = "1.0.7";
    @AbstractC1371c(m6359a = "consent_source")
    private String consentSource;
    @AbstractC1371c(m6359a = "providers")
    private HashSet<AdProvider> adProviders = new HashSet<>();
    @AbstractC1371c(m6359a = "consented_providers")
    private HashSet<AdProvider> consentedAdProviders = new HashSet<>();
    @AbstractC1371c(m6359a = "pub_ids")
    private HashSet<String> publisherIds = new HashSet<>();
    @AbstractC1371c(m6359a = "tag_for_under_age_of_consent")
    private Boolean underAgeOfConsent = Boolean.FALSE;
    @AbstractC1371c(m6359a = "consent_state")
    private ConsentStatus consentStatus = ConsentStatus.UNKNOWN;
    @AbstractC1371c(m6359a = "is_request_in_eea_or_unknown")
    private boolean isRequestLocationInEeaOrUnknown = false;
    @AbstractC1371c(m6359a = "has_any_npa_pub_id")
    private boolean hasNonPersonalizedPublisherId = false;
    @AbstractC1371c(m6359a = "version")
    private final String sdkVersionString = SDK_VERSION;
    @AbstractC1371c(m6359a = "plat")
    private final String sdkPlatformString = "android";
    @AbstractC1371c(m6359a = "raw_response")
    private String rawResponse = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6153a(ConsentStatus consentStatus) {
        this.consentStatus = consentStatus;
    }

    /* renamed from: a */
    public final void m6152a(String str) {
        this.consentSource = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6151a(HashSet<AdProvider> hashSet) {
        this.adProviders = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6150a(boolean z) {
        this.underAgeOfConsent = Boolean.valueOf(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6154a() {
        return this.underAgeOfConsent.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final HashSet<AdProvider> m6149b() {
        return this.adProviders;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6148b(String str) {
        this.rawResponse = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6147b(HashSet<String> hashSet) {
        this.publisherIds = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m6146b(boolean z) {
        this.isRequestLocationInEeaOrUnknown = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final ConsentStatus m6145c() {
        return this.consentStatus;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6144c(HashSet<AdProvider> hashSet) {
        this.consentedAdProviders = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m6143c(boolean z) {
        this.hasNonPersonalizedPublisherId = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final boolean m6142d() {
        return this.isRequestLocationInEeaOrUnknown;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final HashSet<AdProvider> m6141e() {
        return this.consentedAdProviders;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final boolean m6140f() {
        return this.hasNonPersonalizedPublisherId;
    }

    /* renamed from: g */
    public final String m6139g() {
        return this.sdkVersionString;
    }

    /* renamed from: h */
    public final String m6138h() {
        return this.sdkPlatformString;
    }
}
