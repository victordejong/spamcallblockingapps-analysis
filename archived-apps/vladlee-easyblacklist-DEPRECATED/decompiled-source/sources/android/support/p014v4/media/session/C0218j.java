package android.support.p014v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p014v4.media.session.PlaybackStateCompat;
/* renamed from: android.support.v4.media.session.j */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/j.class */
final class C0218j implements Parcelable.Creator<PlaybackStateCompat.CustomAction> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaybackStateCompat.CustomAction createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat.CustomAction(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PlaybackStateCompat.CustomAction[] newArray(int i) {
        return new PlaybackStateCompat.CustomAction[i];
    }
}
