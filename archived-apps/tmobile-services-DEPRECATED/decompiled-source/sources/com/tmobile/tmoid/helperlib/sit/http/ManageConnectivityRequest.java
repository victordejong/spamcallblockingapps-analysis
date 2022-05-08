package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageConnectivityRequest.class */
public class ManageConnectivityRequest extends Request {
    public static final Parcelable.Creator<ManageConnectivityRequest> CREATOR = new Parcelable.Creator<ManageConnectivityRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityRequest.1
        /* renamed from: a */
        public ManageConnectivityRequest createFromParcel(Parcel parcel) {
            return new ManageConnectivityRequest(parcel);
        }

        /* renamed from: b */
        public ManageConnectivityRequest[] newArray(int i) {
            return new ManageConnectivityRequest[i];
        }
    };
    @SerializedName("operation")

    /* renamed from: i */
    private int f14808i;
    @SerializedName("device-group")

    /* renamed from: j */
    private String f14809j;

    protected ManageConnectivityRequest(Parcel parcel) {
        super(parcel);
        this.f14808i = parcel.readInt();
        this.f14809j = parcel.readString();
    }

    public ManageConnectivityRequest(String str, int i, String str2) {
        super("manageConnectivity", str);
        this.f14808i = i;
        this.f14809j = str2;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Request, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f14808i);
        parcel.writeString(this.f14809j);
    }
}
