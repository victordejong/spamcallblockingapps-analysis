package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageServiceResponseWith3GppAuth.class */
public class ManageServiceResponseWith3GppAuth extends MultiResponseWith3GppAuth {
    public static final Parcelable.Creator<ManageServiceResponseWith3GppAuth> CREATOR = new Parcelable.Creator<ManageServiceResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageServiceResponseWith3GppAuth.1
        /* renamed from: a */
        public ManageServiceResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManageServiceResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManageServiceResponseWith3GppAuth[] newArray(int i) {
            return new ManageServiceResponseWith3GppAuth[i];
        }
    };

    /* renamed from: i */
    ManageServiceResponse f14828i;

    public ManageServiceResponseWith3GppAuth() {
    }

    public ManageServiceResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
        this.f14828i = (ManageServiceResponse) m4884b(ManageServiceResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth, com.tmobile.tmoid.helperlib.sit.http.MultiResponse
    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        super.mo4881c(arrayList);
        this.f14828i = (ManageServiceResponse) m4884b(ManageServiceResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        SitServerCommunicationErrorException d = super.mo4880d();
        SitServerCommunicationErrorException sitServerCommunicationErrorException = d;
        if (d == null) {
            ManageServiceResponse manageServiceResponse = this.f14828i;
            sitServerCommunicationErrorException = manageServiceResponse == null ? new SitServerCommunicationErrorException(SitErrorType.GET_MSISDN_DATA, "null response") : !manageServiceResponse.mo4854f() ? this.f14828i.m4872b() : new SitServerCommunicationErrorException(SitErrorType.OTHER, "unexpected error");
        }
        return sitServerCommunicationErrorException;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: f */
    public boolean mo4878f() {
        ManageServiceResponse manageServiceResponse;
        return super.mo4878f() && (manageServiceResponse = this.f14828i) != null && manageServiceResponse.mo4854f();
    }

    /* renamed from: h */
    public String m4898h() {
        ManageServiceResponse manageServiceResponse = this.f14828i;
        return manageServiceResponse != null ? manageServiceResponse.m4904g() : null;
    }

    /* renamed from: i */
    public String m4897i() {
        ManageServiceResponse manageServiceResponse = this.f14828i;
        return manageServiceResponse != null ? manageServiceResponse.m4903h() : null;
    }

    /* renamed from: j */
    public ManageServiceResponse m4896j() {
        return this.f14828i;
    }

    /* renamed from: k */
    public boolean m4895k(ManageServiceRequestWith3GppAuth manageServiceRequestWith3GppAuth) {
        return super.m4877g(manageServiceRequestWith3GppAuth) && this.f14828i.m4901j(manageServiceRequestWith3GppAuth.m4907d());
    }
}
