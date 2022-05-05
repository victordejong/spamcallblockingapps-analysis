package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0216h();

    /* renamed from: a */
    public int f461a;

    /* renamed from: b */
    public int f462b;

    /* renamed from: c */
    public int f463c;

    /* renamed from: d */
    public int f464d;

    /* renamed from: e */
    public int f465e;

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f461a = parcel.readInt();
        this.f463c = parcel.readInt();
        this.f464d = parcel.readInt();
        this.f465e = parcel.readInt();
        this.f462b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f461a);
        parcel.writeInt(this.f463c);
        parcel.writeInt(this.f464d);
        parcel.writeInt(this.f465e);
        parcel.writeInt(this.f462b);
    }
}
