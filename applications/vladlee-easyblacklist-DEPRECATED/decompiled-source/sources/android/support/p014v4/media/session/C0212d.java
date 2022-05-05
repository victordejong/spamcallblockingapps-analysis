package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p014v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.session.d */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/d.class */
final class C0212d implements Parcelable.Creator<MediaSessionCompat.QueueItem> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaSessionCompat.QueueItem createFromParcel(Parcel parcel) {
        return new MediaSessionCompat.QueueItem(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaSessionCompat.QueueItem[] newArray(int i) {
        return new MediaSessionCompat.QueueItem[i];
    }
}
