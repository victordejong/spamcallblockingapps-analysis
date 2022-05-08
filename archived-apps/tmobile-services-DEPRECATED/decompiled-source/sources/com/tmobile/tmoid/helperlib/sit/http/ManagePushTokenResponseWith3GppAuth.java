package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManagePushTokenResponseWith3GppAuth.class */
public class ManagePushTokenResponseWith3GppAuth extends MultiResponseWith3GppAuth {
    public static final Parcelable.Creator<ManagePushTokenResponseWith3GppAuth> CREATOR = new Parcelable.Creator<ManagePushTokenResponseWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenResponseWith3GppAuth.1
        /* renamed from: a */
        public ManagePushTokenResponseWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManagePushTokenResponseWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenResponseWith3GppAuth[] newArray(int i) {
            return new ManagePushTokenResponseWith3GppAuth[i];
        }
    };

    /* renamed from: i */
    ManagePushTokenResponse f14821i;

    public ManagePushTokenResponseWith3GppAuth() {
    }

    protected ManagePushTokenResponseWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth, com.tmobile.tmoid.helperlib.sit.http.MultiResponse
    /* renamed from: c */
    public void mo4881c(ArrayList<String> arrayList) {
        super.mo4881c(arrayList);
        this.f14821i = (ManagePushTokenResponse) m4884b(ManagePushTokenResponse.class);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: d */
    public SitServerCommunicationErrorException mo4880d() {
        SitServerCommunicationErrorException d = super.mo4880d();
        SitServerCommunicationErrorException sitServerCommunicationErrorException = d;
        if (d == null) {
            ManagePushTokenResponse managePushTokenResponse = this.f14821i;
            sitServerCommunicationErrorException = managePushTokenResponse == null ? new SitServerCommunicationErrorException(SitErrorType.MANAGE_PUSH_TOKEN_OPERATION, "null response") : !managePushTokenResponse.mo4854f() ? this.f14821i.m4872b() : new SitServerCommunicationErrorException(SitErrorType.OTHER, "unexpected error");
        }
        return sitServerCommunicationErrorException;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.MultiResponseWith3GppAuth
    /* renamed from: f */
    public boolean mo4878f() {
        ManagePushTokenResponse managePushTokenResponse;
        return super.mo4878f() && (managePushTokenResponse = this.f14821i) != null && managePushTokenResponse.mo4854f();
    }

    /* renamed from: h */
    public boolean m4912h(ManagePushTokenRequestWith3GppAuth managePushTokenRequestWith3GppAuth) {
        return super.m4877g(managePushTokenRequestWith3GppAuth) && this.f14821i.m4915g(managePushTokenRequestWith3GppAuth.m4918d());
    }
}
