package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
final class C1275a implements Parcelable.Creator<ParcelImpl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ParcelImpl createFromParcel(Parcel parcel) {
        return new ParcelImpl(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ParcelImpl[] newArray(int i) {
        return new ParcelImpl[i];
    }
}
