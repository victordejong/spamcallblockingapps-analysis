package android.support.p014v4.media.session;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p014v4.media.session.MediaSessionCompat;
/* renamed from: android.support.v4.media.session.f */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/f.class */
final class C0214f implements Parcelable.Creator<MediaSessionCompat.Token> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MediaSessionCompat.Token createFromParcel(Parcel parcel) {
        return new MediaSessionCompat.Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MediaSessionCompat.Token[] newArray(int i) {
        return new MediaSessionCompat.Token[i];
    }
}
