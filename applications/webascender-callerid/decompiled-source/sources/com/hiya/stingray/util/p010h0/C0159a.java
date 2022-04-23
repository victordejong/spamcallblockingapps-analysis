package com.hiya.stingray.util.p010h0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.h0.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a.class */
public class C0159a implements Parcelable {
    public static final Parcelable.Creator<C0159a> CREATOR = new C0160a();

    /* renamed from: f */
    private String f316f;

    /* renamed from: g */
    private long f317g;

    /* renamed from: com.hiya.stingray.util.h0.a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a$a.class */
    static final class C0160a implements Parcelable.Creator<C0159a> {
        C0160a() {
        }

        /* renamed from: a */
        public C0159a createFromParcel(Parcel parcel) {
            return new C0159a(parcel);
        }

        /* renamed from: b */
        public C0159a[] newArray(int i) {
            return new C0159a[i];
        }
    }

    protected C0159a(Parcel parcel) {
        this.f316f = parcel.readString();
        this.f317g = parcel.readLong();
    }

    /* renamed from: a */
    public String m890a() {
        return this.f316f;
    }

    /* renamed from: b */
    public long m889b() {
        return this.f317g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f316f);
        parcel.writeLong(this.f317g);
    }
}
