package android.support.p014v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p014v4.media.MediaBrowserCompat;
/* renamed from: android.support.v4.media.e */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/e.class */
final class C0181e implements Parcelable.Creator<MediaBrowserCompat.MediaItem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaBrowserCompat.MediaItem createFromParcel(Parcel parcel) {
        return new MediaBrowserCompat.MediaItem(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaBrowserCompat.MediaItem[] newArray(int i) {
        return new MediaBrowserCompat.MediaItem[i];
    }
}
