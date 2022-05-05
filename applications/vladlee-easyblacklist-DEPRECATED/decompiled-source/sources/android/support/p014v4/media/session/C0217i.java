package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.session.i */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/i.class */
final class C0217i implements Parcelable.Creator<PlaybackStateCompat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaybackStateCompat createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PlaybackStateCompat[] newArray(int i) {
        return new PlaybackStateCompat[i];
    }
}
