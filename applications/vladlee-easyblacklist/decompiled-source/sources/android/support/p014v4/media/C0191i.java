package android.support.p014v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.i */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/i.class */
final class C0191i implements Parcelable.Creator<MediaMetadataCompat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaMetadataCompat createFromParcel(Parcel parcel) {
        return new MediaMetadataCompat(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaMetadataCompat[] newArray(int i) {
        return new MediaMetadataCompat[i];
    }
}
