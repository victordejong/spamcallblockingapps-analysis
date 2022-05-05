package android.support.p014v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.j */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/j.class */
final class C0192j implements Parcelable.Creator<RatingCompat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RatingCompat createFromParcel(Parcel parcel) {
        return new RatingCompat(parcel.readInt(), parcel.readFloat());
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ RatingCompat[] newArray(int i) {
        return new RatingCompat[i];
    }
}
