package android.support.p014v4.media;

import android.media.MediaDescription;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.h */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/h.class */
final class C0190h implements Parcelable.Creator<MediaDescriptionCompat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaDescriptionCompat createFromParcel(Parcel parcel) {
        return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.m10087a(MediaDescription.CREATOR.createFromParcel(parcel));
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaDescriptionCompat[] newArray(int i) {
        return new MediaDescriptionCompat[i];
    }
}
