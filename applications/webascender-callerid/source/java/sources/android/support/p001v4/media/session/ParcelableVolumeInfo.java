package android.support.p001v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.ParcelableVolumeInfo */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo.class */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0018a();

    /* renamed from: f */
    public int f35f;

    /* renamed from: g */
    public int f36g;

    /* renamed from: h */
    public int f37h;

    /* renamed from: i */
    public int f38i;

    /* renamed from: j */
    public int f39j;

    /* renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/ParcelableVolumeInfo$a.class */
    static final class C0018a implements Parcelable.Creator<ParcelableVolumeInfo> {
        C0018a() {
        }

        /* renamed from: a */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        /* renamed from: b */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f35f = parcel.readInt();
        this.f37h = parcel.readInt();
        this.f38i = parcel.readInt();
        this.f39j = parcel.readInt();
        this.f36g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f35f);
        parcel.writeInt(this.f37h);
        parcel.writeInt(this.f38i);
        parcel.writeInt(this.f39j);
        parcel.writeInt(this.f36g);
    }
}
