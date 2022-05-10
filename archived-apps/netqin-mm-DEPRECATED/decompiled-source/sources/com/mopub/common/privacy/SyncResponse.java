package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncResponse.class */
public class SyncResponse {

    /* renamed from: a */
    public final boolean f33898a;

    /* renamed from: b */
    public final boolean f33899b;

    /* renamed from: c */
    public final boolean f33900c;

    /* renamed from: d */
    public final boolean f33901d;

    /* renamed from: e */
    public final boolean f33902e;

    /* renamed from: f */
    public final boolean f33903f;

    /* renamed from: g */
    public final String f33904g;

    /* renamed from: h */
    public final String f33905h;

    /* renamed from: i */
    public final String f33906i;

    /* renamed from: j */
    public final String f33907j;

    /* renamed from: k */
    public final String f33908k;

    /* renamed from: l */
    public final String f33909l;

    /* renamed from: m */
    public final String f33910m;

    /* renamed from: n */
    public final String f33911n;

    /* renamed from: o */
    public final String f33912o;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/SyncResponse$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public String f33913a;

        /* renamed from: b */
        public String f33914b;

        /* renamed from: c */
        public String f33915c;

        /* renamed from: d */
        public String f33916d;

        /* renamed from: e */
        public String f33917e;

        /* renamed from: f */
        public String f33918f;

        /* renamed from: g */
        public String f33919g;

        /* renamed from: h */
        public String f33920h;

        /* renamed from: i */
        public String f33921i;

        /* renamed from: j */
        public String f33922j;

        /* renamed from: k */
        public String f33923k;

        /* renamed from: l */
        public String f33924l;

        /* renamed from: m */
        public String f33925m;

        /* renamed from: n */
        public String f33926n;

        /* renamed from: o */
        public String f33927o;

        public SyncResponse build() {
            return new SyncResponse(this.f33913a, this.f33914b, this.f33915c, this.f33916d, this.f33917e, this.f33918f, this.f33919g, this.f33920h, this.f33921i, this.f33922j, this.f33923k, this.f33924l, this.f33925m, this.f33926n, this.f33927o);
        }

        public Builder setCallAgainAfterSecs(String str) {
            this.f33925m = str;
            return this;
        }

        public Builder setConsentChangeReason(String str) {
            this.f33927o = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyLink(String str) {
            this.f33922j = str;
            return this;
        }

        public Builder setCurrentPrivacyPolicyVersion(String str) {
            this.f33921i = str;
            return this;
        }

        public Builder setCurrentVendorListIabFormat(String str) {
            this.f33923k = str;
            return this;
        }

        public Builder setCurrentVendorListIabHash(String str) {
            this.f33924l = str;
            return this;
        }

        public Builder setCurrentVendorListLink(String str) {
            this.f33920h = str;
            return this;
        }

        public Builder setCurrentVendorListVersion(String str) {
            this.f33919g = str;
            return this;
        }

        public Builder setExtras(String str) {
            this.f33926n = str;
            return this;
        }

        public Builder setForceExplicitNo(String str) {
            this.f33914b = str;
            return this;
        }

        public Builder setForceGdprApplies(String str) {
            this.f33918f = str;
            return this;
        }

        public Builder setInvalidateConsent(String str) {
            this.f33915c = str;
            return this;
        }

        public Builder setIsGdprRegion(String str) {
            this.f33913a = str;
            return this;
        }

        public Builder setIsWhitelisted(String str) {
            this.f33917e = str;
            return this;
        }

        public Builder setReacquireConsent(String str) {
            this.f33916d = str;
            return this;
        }
    }

    public SyncResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str5);
        Preconditions.checkNotNull(str7);
        Preconditions.checkNotNull(str8);
        Preconditions.checkNotNull(str9);
        Preconditions.checkNotNull(str10);
        Preconditions.checkNotNull(str12);
        this.f33898a = !"0".equals(str);
        this.f33899b = "1".equals(str2);
        this.f33900c = "1".equals(str3);
        this.f33901d = "1".equals(str4);
        this.f33902e = "1".equals(str5);
        this.f33903f = "1".equals(str6);
        this.f33904g = str7;
        this.f33905h = str8;
        this.f33906i = str9;
        this.f33907j = str10;
        this.f33908k = str11;
        this.f33909l = str12;
        this.f33910m = str13;
        this.f33911n = str14;
        this.f33912o = str15;
    }

    /* renamed from: a */
    public String m4518a() {
        return this.f33911n;
    }

    public String getCallAgainAfterSecs() {
        return this.f33910m;
    }

    public String getConsentChangeReason() {
        return this.f33912o;
    }

    public String getCurrentPrivacyPolicyLink() {
        return this.f33907j;
    }

    public String getCurrentPrivacyPolicyVersion() {
        return this.f33906i;
    }

    public String getCurrentVendorListIabFormat() {
        return this.f33908k;
    }

    public String getCurrentVendorListIabHash() {
        return this.f33909l;
    }

    public String getCurrentVendorListLink() {
        return this.f33905h;
    }

    public String getCurrentVendorListVersion() {
        return this.f33904g;
    }

    public boolean isForceExplicitNo() {
        return this.f33899b;
    }

    public boolean isForceGdprApplies() {
        return this.f33903f;
    }

    public boolean isGdprRegion() {
        return this.f33898a;
    }

    public boolean isInvalidateConsent() {
        return this.f33900c;
    }

    public boolean isReacquireConsent() {
        return this.f33901d;
    }

    public boolean isWhitelisted() {
        return this.f33902e;
    }
}
