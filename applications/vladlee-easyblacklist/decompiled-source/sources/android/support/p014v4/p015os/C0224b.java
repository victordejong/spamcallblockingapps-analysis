package android.support.p014v4.p015os;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.os.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/b.class */
final class C0224b implements Parcelable.Creator<ResultReceiver> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResultReceiver createFromParcel(Parcel parcel) {
        return new ResultReceiver(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ResultReceiver[] newArray(int i) {
        return new ResultReceiver[i];
    }
}
