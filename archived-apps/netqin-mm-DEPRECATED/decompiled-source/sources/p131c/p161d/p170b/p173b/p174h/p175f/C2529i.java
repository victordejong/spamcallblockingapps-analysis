package p131c.p161d.p170b.p173b.p174h.p175f;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
/* renamed from: c.d.b.b.h.f.i */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/i.class */
public final class C2529i extends NetworkConnectionInfo {

    /* renamed from: a */
    public final NetworkConnectionInfo.NetworkType f9566a;

    /* renamed from: b */
    public final NetworkConnectionInfo.MobileSubtype f9567b;

    /* renamed from: c.d.b.b.h.f.i$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/i$b.class */
    public static final class C2531b extends NetworkConnectionInfo.AbstractC7117a {

        /* renamed from: a */
        public NetworkConnectionInfo.NetworkType f9568a;

        /* renamed from: b */
        public NetworkConnectionInfo.MobileSubtype f9569b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC7117a
        /* renamed from: a */
        public NetworkConnectionInfo.AbstractC7117a mo18744a(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f9569b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC7117a
        /* renamed from: a */
        public NetworkConnectionInfo.AbstractC7117a mo18743a(NetworkConnectionInfo.NetworkType networkType) {
            this.f9568a = networkType;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.AbstractC7117a
        /* renamed from: a */
        public NetworkConnectionInfo mo18745a() {
            return new C2529i(this.f9568a, this.f9569b);
        }
    }

    public C2529i(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f9566a = networkType;
        this.f9567b = mobileSubtype;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    /* renamed from: a */
    public NetworkConnectionInfo.MobileSubtype mo18748a() {
        return this.f9567b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    /* renamed from: b */
    public NetworkConnectionInfo.NetworkType mo18747b() {
        return this.f9566a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.f9566a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.mo18747b()) : networkConnectionInfo.mo18747b() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f9567b;
            if (mobileSubtype != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.f9566a;
        int i = 0;
        int hashCode = networkType == null ? 0 : networkType.hashCode();
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f9567b;
        if (mobileSubtype != null) {
            i = mobileSubtype.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f9566a + ", mobileSubtype=" + this.f9567b + "}";
    }
}
