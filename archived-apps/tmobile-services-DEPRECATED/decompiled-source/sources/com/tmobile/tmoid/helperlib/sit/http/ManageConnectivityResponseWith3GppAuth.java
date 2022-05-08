package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageConnectivityResponseWith3GppAuth.class */
public class ManageConnectivityResponseWith3GppAuth extends MultiResponseWith3GppAuth {
    public static final Parcelable.Creator<ManageConnectivityResponseWith3GppAuth> CREATOR = new Parcelable.Creator<ManageConnectivityResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityResponseWith3GppAuth.1
        /* renamed from: a */
        public ManageConnectivityResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManageConnectivityResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityResponseWith3GppAuth[] newArray(int i) {
            return new ManageConnectivityResponseWith3GppAuth[i];
        }
    };

    /* renamed from: i */
    protected ManageConnectivityResponse f14814i;

    public ManageConnectivityResponseWith3GppAuth() {
    }

    public ManageConnectivityResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
        this.f14814i = (ManageConnectivityResponse) m4884b(ManageConnectivityResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth, com.tmobile.tmoid.helperlib.sit.http.MultiResponse
    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        super.mo4881c(arrayList);
        this.f14814i = (ManageConnectivityResponse) m4884b(ManageConnectivityResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        SitServerCommunicationErrorException d = super.mo4880d();
        SitServerCommunicationErrorException sitServerCommunicationErrorException = d;
        if (d == null) {
            ManageConnectivityResponse manageConnectivityResponse = this.f14814i;
            sitServerCommunicationErrorException = manageConnectivityResponse == null ? new SitServerCommunicationErrorException(SitErrorType.MANAGE_CONNECTIVITY_OPERATION, "null response") : !manageConnectivityResponse.mo4854f() ? this.f14814i.m4872b() : new SitServerCommunicationErrorException(SitErrorType.OTHER, "unexpected error");
        }
        return sitServerCommunicationErrorException;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: f */
    public boolean mo4878f() {
        ManageConnectivityResponse manageConnectivityResponse;
        return super.mo4878f() && (manageConnectivityResponse = this.f14814i) != null && manageConnectivityResponse.mo4854f();
    }

    /* renamed from: h */
    public String m4927h() {
        ManageConnectivityResponse manageConnectivityResponse = this.f14814i;
        return manageConnectivityResponse != null ? manageConnectivityResponse.m4933g() : null;
    }

    /* renamed from: i */
    public String[] m4926i() {
        ManageConnectivityResponse manageConnectivityResponse = this.f14814i;
        return manageConnectivityResponse != null ? manageConnectivityResponse.m4932h() : null;
    }

    /* renamed from: j */
    public int m4925j() {
        ManageConnectivityResponse manageConnectivityResponse = this.f14814i;
        return manageConnectivityResponse != null ? manageConnectivityResponse.m4870d() : -1;
    }

    /* renamed from: k */
    public ServiceNameInternal[] m4924k() {
        ManageConnectivityResponse manageConnectivityResponse = this.f14814i;
        return manageConnectivityResponse != null ? manageConnectivityResponse.m4931i() : null;
    }

    /* renamed from: l */
    public boolean m4923l(ManageConnectivityRequestWith3GppAuth manageConnectivityRequestWith3GppAuth) {
        return super.m4877g(manageConnectivityRequestWith3GppAuth) && this.f14814i.m4930j(manageConnectivityRequestWith3GppAuth.m4936d());
    }
}
