package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.tmobile.tmoid.agent.utils.Utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ManagePushTokenAPIResponse.class */
public class ManagePushTokenAPIResponse extends BaseSitAPIResponse {
    public static final Parcelable.Creator<ManagePushTokenAPIResponse> CREATOR = new Parcelable.Creator<ManagePushTokenAPIResponse>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.ManagePushTokenAPIResponse.1
        /* renamed from: a */
        public ManagePushTokenAPIResponse createFromParcel(Parcel parcel) {
            return new ManagePushTokenAPIResponse(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenAPIResponse[] newArray(int i) {
            return new ManagePushTokenAPIResponse[i];
        }
    };

    public ManagePushTokenAPIResponse() {
    }

    protected ManagePushTokenAPIResponse(Parcel parcel) {
        this.f14861f = Utils.m5068i(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Utils.m5067j(this.f14861f, parcel);
    }
}
