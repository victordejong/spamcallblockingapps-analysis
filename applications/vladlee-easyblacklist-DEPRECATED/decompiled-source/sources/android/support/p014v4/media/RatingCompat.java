package android.support.p014v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0192j();

    /* renamed from: a */
    private final int f422a;

    /* renamed from: b */
    private final float f423b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RatingCompat(int i, float f) {
        this.f422a = i;
        this.f423b = f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f422a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f422a);
        sb.append(" rating=");
        float f = this.f423b;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f422a);
        parcel.writeFloat(this.f423b);
    }
}
