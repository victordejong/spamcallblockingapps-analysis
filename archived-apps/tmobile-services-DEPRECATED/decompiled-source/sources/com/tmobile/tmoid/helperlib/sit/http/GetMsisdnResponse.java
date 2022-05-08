package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/GetMsisdnResponse.class */
public class GetMsisdnResponse extends Response {
    public static final Parcelable.Creator<GetMsisdnResponse> CREATOR = new Parcelable.Creator<GetMsisdnResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.http.GetMsisdnResponse.1
        /* renamed from: a */
        public GetMsisdnResponse createFromParcel(Parcel parcel) {
            return new GetMsisdnResponse(parcel);
        }

        /* renamed from: b */
        public GetMsisdnResponse[] newArray(int i) {
            return new GetMsisdnResponse[i];
        }
    };
    @SerializedName("msisdn")

    /* renamed from: h */
    private String f14795h;
    @SerializedName("service-fingerprint")

    /* renamed from: i */
    private String f14796i;

    protected GetMsisdnResponse(Parcel parcel) {
        super(parcel);
        this.f14795h = parcel.readString();
        this.f14796i = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response
    /* renamed from: e */
    protected SitErrorType mo4855e() {
        return SitErrorType.GET_MSISDN_DATA;
    }

    /* renamed from: g */
    public String m4963g() {
        return this.f14795h;
    }

    /* renamed from: h */
    public String m4962h() {
        return this.f14796i;
    }

    /* renamed from: i */
    public boolean m4961i(GetMsisdnRequest getMsisdnRequest) {
        return m4871c() == getMsisdnRequest.m4874b();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Response, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14795h);
        parcel.writeString(this.f14796i);
    }
}
