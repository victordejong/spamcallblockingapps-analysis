package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/MsisdnDataAPIRequest.class */
public class MsisdnDataAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<MsisdnDataAPIRequest> CREATOR = new Parcelable.Creator<MsisdnDataAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.MsisdnDataAPIRequest.1
        /* renamed from: a */
        public MsisdnDataAPIRequest createFromParcel(Parcel parcel) {
            return new MsisdnDataAPIRequest(parcel);
        }

        /* renamed from: b */
        public MsisdnDataAPIRequest[] newArray(int i) {
            return new MsisdnDataAPIRequest[i];
        }
    };

    /* renamed from: f */
    private String f14886f;

    MsisdnDataAPIRequest(Parcel parcel) {
        super(parcel);
        mo4772b(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MsisdnDataAPIRequest(String str) {
        this.f14886f = str;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return this.f14886f;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
        super.mo4772b(parcel);
        this.f14886f = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        this.f14886f = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14886f);
    }
}
