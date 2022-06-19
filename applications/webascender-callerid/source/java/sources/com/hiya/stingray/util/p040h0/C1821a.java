package com.hiya.stingray.util.p040h0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.h0.a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a.class */
public class C1821a implements Parcelable {
    public static final Parcelable.Creator<C1821a> CREATOR = new C1822a();

    /* renamed from: f */
    private String f4995f;

    /* renamed from: g */
    private long f4996g;

    /* renamed from: com.hiya.stingray.util.h0.a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/h0/a$a.class */
    static final class C1822a implements Parcelable.Creator<C1821a> {
        C1822a() {
        }

        /* renamed from: a */
        public C1821a createFromParcel(Parcel parcel) {
            return new C1821a(parcel);
        }

        /* renamed from: b */
        public C1821a[] newArray(int i) {
            return new C1821a[i];
        }
    }

    protected C1821a(Parcel parcel) {
        this.f4995f = parcel.readString();
        this.f4996g = parcel.readLong();
    }

    /* renamed from: a */
    public String m890a() {
        return this.f4995f;
    }

    /* renamed from: b */
    public long m889b() {
        return this.f4996g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4995f);
        parcel.writeLong(this.f4996g);
    }
}
