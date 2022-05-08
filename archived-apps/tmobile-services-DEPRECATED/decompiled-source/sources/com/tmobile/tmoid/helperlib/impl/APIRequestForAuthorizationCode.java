package com.tmobile.tmoid.helperlib.impl;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/APIRequestForAuthorizationCode.class */
public class APIRequestForAuthorizationCode extends APIRequest implements Parcelable {
    public static final Parcelable.Creator<APIRequestForAuthorizationCode> CREATOR = new Parcelable.Creator<APIRequestForAuthorizationCode>() { // from class: com.tmobile.tmoid.helperlib.impl.APIRequestForAuthorizationCode.1
        /* renamed from: a */
        public APIRequestForAuthorizationCode createFromParcel(Parcel parcel) {
            return new APIRequestForAuthorizationCode(parcel);
        }

        /* renamed from: b */
        public APIRequestForAuthorizationCode[] newArray(int i) {
            return new APIRequestForAuthorizationCode[i];
        }
    };

    /* renamed from: i */
    private String f14745i;

    /* renamed from: j */
    private String f14746j;

    /* renamed from: k */
    private String f14747k;

    /* renamed from: l */
    private String f14748l;

    /* renamed from: m */
    private String f14749m;

    /* JADX INFO: Access modifiers changed from: protected */
    public APIRequestForAuthorizationCode(Intent intent) {
        this.f14745i = "ONLINE";
        this.f14746j = "PAGE";
        this.f14747k = "auto";
        this.f14748l = "auto";
        this.f14739f = intent.getStringExtra("request_id");
        this.f14740g = intent.getStringExtra("action");
        this.f14749m = intent.getStringExtra("scope");
        this.f14741h = intent.getStringExtra("client_id");
        this.f14745i = intent.getStringExtra("access_type");
        this.f14746j = intent.getStringExtra(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION);
        this.f14747k = intent.getStringExtra("reauth");
        this.f14748l = intent.getStringExtra("approval_prompt");
    }

    private APIRequestForAuthorizationCode(Parcel parcel) {
        this.f14745i = "ONLINE";
        this.f14746j = "PAGE";
        this.f14747k = "auto";
        this.f14748l = "auto";
        m5032j(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m5037e() {
        return this.f14745i;
    }

    /* renamed from: f */
    public String m5036f() {
        return this.f14748l;
    }

    /* renamed from: g */
    public String m5035g() {
        return this.f14746j;
    }

    /* renamed from: h */
    public String m5034h() {
        return this.f14747k;
    }

    /* renamed from: i */
    public String m5033i() {
        return this.f14749m;
    }

    /* renamed from: j */
    public void m5032j(Parcel parcel) {
        this.f14741h = parcel.readString();
        this.f14749m = parcel.readString();
        this.f14739f = parcel.readString();
        this.f14740g = parcel.readString();
        this.f14745i = parcel.readString();
        this.f14746j = parcel.readString();
        this.f14747k = parcel.readString();
        this.f14748l = parcel.readString();
    }

    /* renamed from: k */
    public void m5031k(String str) {
        this.f14746j = str;
    }

    @Override // com.tmobile.tmoid.helperlib.impl.APIRequest
    public String toString() {
        return "request{id: " + this.f14739f + ", action:" + this.f14740g + ", client_id:" + this.f14741h + ", access_type:" + this.f14745i + ", display:" + this.f14746j + ", reauth:" + this.f14747k + ", approval_prompt:" + this.f14748l + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14741h);
        parcel.writeString(this.f14749m);
        parcel.writeString(this.f14739f);
        parcel.writeString(this.f14740g);
        parcel.writeString(this.f14745i);
        parcel.writeString(this.f14746j);
        parcel.writeString(this.f14747k);
        parcel.writeString(this.f14748l);
    }
}
