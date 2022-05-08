package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ServiceItem.class */
public class ServiceItem extends BaseRequest {
    public static final Parcelable.Creator<ServiceItem> CREATOR = new Parcelable.Creator<ServiceItem>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ServiceItem.1
        /* renamed from: a */
        public ServiceItem createFromParcel(Parcel parcel) {
            return new ServiceItem(parcel);
        }

        /* renamed from: b */
        public ServiceItem[] newArray(int i) {
            return new ServiceItem[i];
        }
    };
    @SerializedName("service-name")

    /* renamed from: f */
    private String f14841f;
    @SerializedName("service-fingerprint")

    /* renamed from: g */
    private String f14842g;

    public ServiceItem(Parcel parcel) {
        this.f14841f = parcel.readString();
        this.f14842g = parcel.readString();
    }

    public ServiceItem(String str, String str2) {
        this.f14841f = str;
        this.f14842g = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14841f);
        parcel.writeString(this.f14842g);
    }
}
