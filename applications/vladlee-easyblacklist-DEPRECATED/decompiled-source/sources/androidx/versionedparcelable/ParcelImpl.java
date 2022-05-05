package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/ParcelImpl.class */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C1275a();

    /* renamed from: a */
    private final AbstractC1278d f5347a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ParcelImpl(Parcel parcel) {
        this.f5347a = new C1277c(parcel).m6454i();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C1277c(parcel).m6464b(this.f5347a);
    }
}
