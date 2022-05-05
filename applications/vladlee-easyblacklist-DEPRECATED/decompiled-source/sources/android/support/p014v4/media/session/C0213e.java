package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p014v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.session.e */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/e.class */
final class C0213e implements Parcelable.Creator<MediaSessionCompat.ResultReceiverWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaSessionCompat.ResultReceiverWrapper createFromParcel(Parcel parcel) {
        return new MediaSessionCompat.ResultReceiverWrapper(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaSessionCompat.ResultReceiverWrapper[] newArray(int i) {
        return new MediaSessionCompat.ResultReceiverWrapper[i];
    }
}
