package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/MultiResponseWith3GppAuth.class */
public class MultiResponseWith3GppAuth extends MultiResponse {
    public static final Parcelable.Creator<MultiResponseWith3GppAuth> CREATOR = new Parcelable.Creator<MultiResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth.1
        /* renamed from: a */
        public MultiResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new MultiResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public MultiResponseWith3GppAuth[] newArray(int i) {
            return new MultiResponseWith3GppAuth[i];
        }
    };

    /* renamed from: h */
    private X3GppAuthenticationResponse f14833h;

    public MultiResponseWith3GppAuth() {
    }

    public MultiResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
        this.f14833h = (X3GppAuthenticationResponse) m4884b(X3GppAuthenticationResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponse
    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        super.mo4881c(arrayList);
        this.f14833h = (X3GppAuthenticationResponse) m4884b(X3GppAuthenticationResponse.class);
    }

    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        return this.f14833h == null ? new SitServerCommunicationErrorException(SitErrorType.AUTHENTICATION, "null authentication response") : (mo4878f() || !this.f14833h.m4851i()) ? !this.f14833h.mo4854f() ? this.f14833h.m4872b() : null : new SitServerCommunicationErrorException(SitErrorType.AUTHENTICATION, this.f14833h.m4870d());
    }

    /* renamed from: e */
    public X3GppAuthenticationResponse m4879e() {
        return this.f14833h;
    }

    /* renamed from: f */
    public boolean mo4878f() {
        X3GppAuthenticationResponse x3GppAuthenticationResponse = this.f14833h;
        return x3GppAuthenticationResponse != null && x3GppAuthenticationResponse.mo4854f();
    }

    /* renamed from: g */
    public boolean m4877g(MultiRequestWith3GppAuth multiRequestWith3GppAuth) {
        return this.f14833h.m4850j(multiRequestWith3GppAuth.m4888c());
    }
}
