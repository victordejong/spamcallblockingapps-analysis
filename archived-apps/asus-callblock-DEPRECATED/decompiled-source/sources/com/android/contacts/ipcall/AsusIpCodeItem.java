package com.android.contacts.ipcall;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ipcall/AsusIpCodeItem.class */
public class AsusIpCodeItem implements Parcelable {
    public static final Parcelable.Creator<AsusIpCodeItem> CREATOR = new Parcelable.Creator<AsusIpCodeItem>() { // from class: com.android.contacts.ipcall.AsusIpCodeItem.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AsusIpCodeItem createFromParcel(Parcel parcel) {
            return new AsusIpCodeItem(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AsusIpCodeItem[] newArray(int i) {
            return new AsusIpCodeItem[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    String f1489a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1490b;
    boolean c;
    private int d;

    public AsusIpCodeItem(int i, String str, boolean z) {
        this.c = false;
        this.d = i;
        this.f1489a = str;
        this.f1490b = z;
    }

    private AsusIpCodeItem(Parcel parcel) {
        boolean z = false;
        this.c = false;
        this.d = parcel.readInt();
        this.f1489a = parcel.readString();
        this.f1490b = parcel.readByte() != 0;
        if (parcel.readByte() != 0) {
            z = true;
        }
        this.c = z;
    }

    /* synthetic */ AsusIpCodeItem(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeInt(this.d);
        parcel.writeString(this.f1489a);
        parcel.writeByte((byte) (this.f1490b ? 1 : 0));
        if (!this.c) {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
    }
}
