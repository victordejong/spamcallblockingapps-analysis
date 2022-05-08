package com.flurry.sdk;
/* renamed from: com.flurry.sdk.gd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gd.class */
public final class C3155gd {

    /* renamed from: a */
    public final AbstractC3518x f5155a;

    /* renamed from: b */
    public final String f5156b;

    /* renamed from: c */
    public final boolean f5157c;

    /* renamed from: d */
    public boolean f5158d = false;

    public C3155gd(AbstractC3518x xVar, String str, boolean z) {
        this.f5155a = xVar;
        this.f5156b = str;
        this.f5157c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3155gd.class != obj.getClass()) {
            return false;
        }
        C3155gd gdVar = (C3155gd) obj;
        if (this.f5157c != gdVar.f5157c || this.f5158d != gdVar.f5158d) {
            return false;
        }
        AbstractC3518x xVar = this.f5155a;
        if (xVar != null) {
            if (!xVar.equals(gdVar.f5155a)) {
                return false;
            }
        } else if (gdVar.f5155a != null) {
            return false;
        }
        String str = this.f5156b;
        return str != null ? str.equals(gdVar.f5156b) : gdVar.f5156b == null;
    }

    public final int hashCode() {
        AbstractC3518x xVar = this.f5155a;
        int i = 0;
        int hashCode = xVar != null ? xVar.hashCode() : 0;
        String str = this.f5156b;
        if (str != null) {
            i = str.hashCode();
        }
        return (((((hashCode * 31) + i) * 31) + (this.f5157c ? 1 : 0)) * 31) + (this.f5158d ? 1 : 0);
    }

    public final String toString() {
        return "fAdObjectId: " + this.f5155a.mo32283d() + ", fLaunchUrl: " + this.f5156b + ", fShouldCloseAd: " + this.f5157c + ", fSendYCookie: " + this.f5158d;
    }
}
