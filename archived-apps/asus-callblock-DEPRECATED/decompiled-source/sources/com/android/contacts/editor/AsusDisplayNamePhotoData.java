package com.android.contacts.editor;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AsusDisplayNamePhotoData.class */
public class AsusDisplayNamePhotoData implements Parcelable {
    public static final Parcelable.Creator<AsusDisplayNamePhotoData> CREATOR = new Parcelable.Creator<AsusDisplayNamePhotoData>() { // from class: com.android.contacts.editor.AsusDisplayNamePhotoData.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ AsusDisplayNamePhotoData createFromParcel(Parcel parcel) {
            return new AsusDisplayNamePhotoData(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ AsusDisplayNamePhotoData[] newArray(int i) {
            return new AsusDisplayNamePhotoData[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public boolean f1092a;

    /* renamed from: b  reason: collision with root package name */
    public long f1093b;
    public long c;
    public long d;
    public long e;

    public AsusDisplayNamePhotoData() {
        this.f1092a = false;
        this.f1093b = -1L;
        this.c = -1L;
        this.d = -1L;
        this.e = -1L;
    }

    private AsusDisplayNamePhotoData(Parcel parcel) {
        this.f1092a = false;
        this.f1093b = -1L;
        this.c = -1L;
        this.d = -1L;
        this.e = -1L;
        int readInt = parcel.readInt();
        boolean[] zArr = new boolean[readInt];
        parcel.readBooleanArray(zArr);
        if (readInt == 1) {
            this.f1092a = zArr[0];
        }
        this.f1093b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
    }

    /* synthetic */ AsusDisplayNamePhotoData(Parcel parcel, byte b2) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(1);
        parcel.writeBooleanArray(new boolean[]{this.f1092a});
        parcel.writeLong(this.f1093b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
    }
}
