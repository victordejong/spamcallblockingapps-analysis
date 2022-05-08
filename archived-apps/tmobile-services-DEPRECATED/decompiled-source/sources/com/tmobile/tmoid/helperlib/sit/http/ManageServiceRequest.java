package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageServiceRequest.class */
public class ManageServiceRequest extends Request {
    public static final Parcelable.Creator<ManageServiceRequest> CREATOR = new Parcelable.Creator<ManageServiceRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageServiceRequest.1
        /* renamed from: a */
        public ManageServiceRequest createFromParcel(Parcel parcel) {
            return new ManageServiceRequest(parcel);
        }

        /* renamed from: b */
        public ManageServiceRequest[] newArray(int i) {
            return new ManageServiceRequest[i];
        }
    };
    @SerializedName("operation")

    /* renamed from: i */
    private int f14822i;
    @SerializedName("service-item")

    /* renamed from: j */
    private ServiceItem f14823j;
    @SerializedName("service-instance")

    /* renamed from: k */
    private ServiceInstance f14824k;

    protected ManageServiceRequest(Parcel parcel) {
        super(parcel);
        this.f14822i = parcel.readInt();
        this.f14823j = (ServiceItem) parcel.readParcelable(ServiceItem.class.getClassLoader());
        this.f14824k = (ServiceInstance) parcel.readParcelable(ServiceInstance.class.getClassLoader());
    }

    public ManageServiceRequest(ServiceInstance serviceInstance, int i, String str) {
        super("manageService", str);
        this.f14822i = i;
        this.f14824k = serviceInstance;
    }

    public ManageServiceRequest(ServiceItem serviceItem, int i, String str) {
        super("manageService", str);
        this.f14822i = i;
        this.f14823j = serviceItem;
    }

    public ManageServiceRequest(ServiceItem serviceItem, ServiceInstance serviceInstance, int i, String str) {
        super("manageService", str);
        this.f14822i = i;
        this.f14824k = serviceInstance;
        this.f14823j = serviceItem;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.http.Request, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f14822i);
        parcel.writeParcelable(this.f14823j, i);
        parcel.writeParcelable(this.f14824k, i);
    }
}
