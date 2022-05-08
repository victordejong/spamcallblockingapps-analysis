package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/ManageServiceRequestWith3GppAuth.class */
public class ManageServiceRequestWith3GppAuth extends MultiRequestWith3GppAuth {
    public static final Parcelable.Creator<ManageServiceRequestWith3GppAuth> CREATOR = new Parcelable.Creator<ManageServiceRequestWith3GppAuth>() { // from class: com.tmobile.tmoid.helperlib.sit.http.ManageServiceRequestWith3GppAuth.1
        /* renamed from: a */
        public ManageServiceRequestWith3GppAuth createFromParcel(Parcel parcel) {
            return new ManageServiceRequestWith3GppAuth(parcel);
        }

        /* renamed from: b */
        public ManageServiceRequestWith3GppAuth[] newArray(int i) {
            return new ManageServiceRequestWith3GppAuth[i];
        }
    };

    /* renamed from: h */
    private ManageServiceRequest f14825h;

    protected ManageServiceRequestWith3GppAuth(Parcel parcel) {
        super(parcel);
    }

    public ManageServiceRequestWith3GppAuth(ServiceInstance serviceInstance, int i, String str, String str2, String str3) {
        super(str, str2, str3);
        ManageServiceRequest manageServiceRequest = new ManageServiceRequest(serviceInstance, i, str);
        this.f14825h = manageServiceRequest;
        m4891b(manageServiceRequest);
    }

    public ManageServiceRequestWith3GppAuth(ServiceItem serviceItem, int i, String str, String str2, String str3) {
        super(str, str2, str3);
        ManageServiceRequest manageServiceRequest = new ManageServiceRequest(serviceItem, i, str);
        this.f14825h = manageServiceRequest;
        m4891b(manageServiceRequest);
    }

    public ManageServiceRequestWith3GppAuth(ServiceItem serviceItem, ServiceInstance serviceInstance, int i, String str, String str2, String str3) {
        super(str, str2, str3);
        ManageServiceRequest manageServiceRequest = new ManageServiceRequest(serviceItem, serviceInstance, i, str);
        this.f14825h = manageServiceRequest;
        m4891b(manageServiceRequest);
    }

    /* renamed from: d */
    public ManageServiceRequest m4907d() {
        return this.f14825h;
    }
}
