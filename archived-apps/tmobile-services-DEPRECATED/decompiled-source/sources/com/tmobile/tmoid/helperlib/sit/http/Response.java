package com.tmobile.tmoid.helperlib.sit.http;

import android.os.Parcel;
import com.google.gson.annotations.SerializedName;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/Response.class */
public abstract class Response extends BaseResponse {
    @SerializedName("message-id")

    /* renamed from: f */
    private int f14837f;
    @SerializedName("response-code")

    /* renamed from: g */
    private int f14838g;

    /* JADX INFO: Access modifiers changed from: protected */
    public Response(Parcel parcel) {
        this.f14838g = -1;
        this.f14837f = parcel.readInt();
        this.f14838g = parcel.readInt();
    }

    /* renamed from: b */
    public SitServerCommunicationErrorException m4872b() {
        return !mo4854f() ? new SitServerCommunicationErrorException(mo4855e(), this.f14838g) : null;
    }

    /* renamed from: c */
    public int m4871c() {
        return this.f14837f;
    }

    /* renamed from: d */
    public int m4870d() {
        return this.f14838g;
    }

    /* renamed from: e */
    protected abstract SitErrorType mo4855e();

    /* renamed from: f */
    public boolean mo4854f() {
        return this.f14838g == 1000;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f14837f);
        parcel.writeInt(this.f14838g);
    }
}
