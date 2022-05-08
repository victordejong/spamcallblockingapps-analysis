package com.tmobile.tmoid.helperlib.sit.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/ManagePushTokenAPIRequest.class */
public class ManagePushTokenAPIRequest extends BaseSitAPIRequest {
    public static final Parcelable.Creator<ManagePushTokenAPIRequest> CREATOR = new Parcelable.Creator<ManagePushTokenAPIRequest>() { // from class: com.tmobile.tmoid.helperlib.sit.internal.ManagePushTokenAPIRequest.1
        /* renamed from: a */
        public ManagePushTokenAPIRequest createFromParcel(Parcel parcel) {
            return new ManagePushTokenAPIRequest(parcel);
        }

        /* renamed from: b */
        public ManagePushTokenAPIRequest[] newArray(int i) {
            return new ManagePushTokenAPIRequest[i];
        }
    };

    /* renamed from: f */
    private String f14877f;

    /* renamed from: g */
    private String f14878g;

    /* renamed from: h */
    private int f14879h;

    /* renamed from: i */
    private String f14880i;

    /* renamed from: j */
    private String f14881j;

    /* renamed from: k */
    private int f14882k;

    /* renamed from: l */
    private String f14883l;

    /* renamed from: m */
    private String f14884m;

    /* renamed from: n */
    private String f14885n;

    ManagePushTokenAPIRequest(Parcel parcel) {
        super(parcel);
        mo4772b(parcel);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: a */
    public String mo4773a() {
        return this.f14885n;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: b */
    public void mo4772b(Parcel parcel) {
        super.mo4772b(parcel);
        this.f14877f = parcel.readString();
        this.f14878g = parcel.readString();
        this.f14879h = parcel.readInt();
        this.f14880i = parcel.readString();
        this.f14881j = parcel.readString();
        this.f14882k = parcel.readInt();
        this.f14883l = parcel.readString();
        this.f14884m = parcel.readString();
        this.f14885n = parcel.readString();
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest
    /* renamed from: d */
    public void mo4771d(String str) {
        this.f14885n = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m4793e() {
        return this.f14884m;
    }

    /* renamed from: f */
    public int m4792f() {
        return this.f14882k;
    }

    /* renamed from: g */
    public String m4791g() {
        return this.f14883l;
    }

    /* renamed from: h */
    public String m4790h() {
        return this.f14878g;
    }

    /* renamed from: i */
    public int m4789i() {
        return this.f14879h;
    }

    /* renamed from: j */
    public String m4788j() {
        return this.f14881j;
    }

    /* renamed from: k */
    public String m4787k() {
        return this.f14880i;
    }

    /* renamed from: l */
    public String m4786l() {
        return this.f14877f;
    }

    @Override // com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f14877f);
        parcel.writeString(this.f14878g);
        parcel.writeInt(this.f14879h);
        parcel.writeString(this.f14880i);
        parcel.writeString(this.f14881j);
        parcel.writeInt(this.f14882k);
        parcel.writeString(this.f14883l);
        parcel.writeString(this.f14884m);
        parcel.writeString(this.f14885n);
    }
}
