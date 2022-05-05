package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.h */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/h.class */
final class C0216h implements Parcelable.Creator<ParcelableVolumeInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ParcelableVolumeInfo createFromParcel(Parcel parcel) {
        return new ParcelableVolumeInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ParcelableVolumeInfo[] newArray(int i) {
        return new ParcelableVolumeInfo[i];
    }
}
