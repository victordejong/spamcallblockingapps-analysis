package p131c.p161d.p282e.p335s.p337p;

import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
/* renamed from: c.d.e.s.p.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/p/a.class */
public final class C5913a extends InstallationResponse {

    /* renamed from: a */
    public final String f19245a;

    /* renamed from: b */
    public final String f19246b;

    /* renamed from: c */
    public final String f19247c;

    /* renamed from: d */
    public final TokenResult f19248d;

    /* renamed from: e */
    public final InstallationResponse.ResponseCode f19249e;

    /* renamed from: c.d.e.s.p.a$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/p/a$b.class */
    public static final class C5915b extends InstallationResponse.AbstractC7846a {

        /* renamed from: a */
        public String f19250a;

        /* renamed from: b */
        public String f19251b;

        /* renamed from: c */
        public String f19252c;

        /* renamed from: d */
        public TokenResult f19253d;

        /* renamed from: e */
        public InstallationResponse.ResponseCode f19254e;

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: a */
        public InstallationResponse.AbstractC7846a mo7285a(InstallationResponse.ResponseCode responseCode) {
            this.f19254e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: a */
        public InstallationResponse.AbstractC7846a mo7284a(TokenResult tokenResult) {
            this.f19253d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: a */
        public InstallationResponse.AbstractC7846a mo7283a(String str) {
            this.f19251b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: a */
        public InstallationResponse mo7286a() {
            return new C5913a(this.f19250a, this.f19251b, this.f19252c, this.f19253d, this.f19254e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: b */
        public InstallationResponse.AbstractC7846a mo7282b(String str) {
            this.f19252c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC7846a
        /* renamed from: c */
        public InstallationResponse.AbstractC7846a mo7281c(String str) {
            this.f19250a = str;
            return this;
        }
    }

    public C5913a(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.f19245a = str;
        this.f19246b = str2;
        this.f19247c = str3;
        this.f19248d = tokenResult;
        this.f19249e = responseCode;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: a */
    public TokenResult mo7292a() {
        return this.f19248d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: b */
    public String mo7291b() {
        return this.f19246b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: c */
    public String mo7290c() {
        return this.f19247c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: d */
    public InstallationResponse.ResponseCode mo7289d() {
        return this.f19249e;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: e */
    public String mo7288e() {
        return this.f19245a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f19245a;
        if (str != null ? str.equals(installationResponse.mo7288e()) : installationResponse.mo7288e() == null) {
            String str2 = this.f19246b;
            if (str2 != null ? str2.equals(installationResponse.mo7291b()) : installationResponse.mo7291b() == null) {
                String str3 = this.f19247c;
                if (str3 != null ? str3.equals(installationResponse.mo7290c()) : installationResponse.mo7290c() == null) {
                    TokenResult tokenResult = this.f19248d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.mo7292a()) : installationResponse.mo7292a() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f19249e;
                        if (responseCode != null) {
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f19245a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f19246b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f19247c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        TokenResult tokenResult = this.f19248d;
        int hashCode4 = tokenResult == null ? 0 : tokenResult.hashCode();
        InstallationResponse.ResponseCode responseCode = this.f19249e;
        if (responseCode != null) {
            i = responseCode.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f19245a + ", fid=" + this.f19246b + ", refreshToken=" + this.f19247c + ", authToken=" + this.f19248d + ", responseCode=" + this.f19249e + "}";
    }
}
