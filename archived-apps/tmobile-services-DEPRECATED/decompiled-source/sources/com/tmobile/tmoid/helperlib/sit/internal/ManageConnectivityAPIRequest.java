package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ManageConnectivityAPIRequest.class */
public class ManageConnectivityAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<ManageConnectivityAPIRequest> CREATOR = new Parcelable.Creator<ManageConnectivityAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.ManageConnectivityAPIRequest.1
        /* renamed from: a */
        public ManageConnectivityAPIRequest createFromParcel(Parcel parcel) {
            return new ManageConnectivityAPIRequest(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityAPIRequest[] newArray(int i) {
            return new ManageConnectivityAPIRequest[i];
        }
    };

    /* renamed from: f */
    private int f14870f;

    /* renamed from: g */
    private String f14871g;

    /* renamed from: h */
    private String f14872h;

    ManageConnectivityAPIRequest(Parcel parcel) {
        super(parcel);
        mo4772b(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return this.f14872h;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
        super.mo4772b(parcel);
        this.f14870f = parcel.readInt();
        this.f14871g = parcel.readString();
        this.f14872h = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        this.f14872h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4805e() {
        return this.f14871g;
    }

    /* renamed from: f */
    public int m4804f() {
        return this.f14870f;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f14870f);
        parcel.writeString(this.f14871g);
        parcel.writeString(this.f14872h);
    }
}
