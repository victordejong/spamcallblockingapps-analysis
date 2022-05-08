package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyInfo.class */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new Parcelable.Creator<IcyInfo>() { // from class: androidx.media2.exoplayer.external.metadata.icy.IcyInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IcyInfo[] newArray(int i) {
            return new IcyInfo[i];
        }
    };
    @Nullable
    public final String title;
    @Nullable
    public final String url;

    public IcyInfo(Parcel parcel) {
        this.title = parcel.readString();
        this.url = parcel.readString();
    }

    public IcyInfo(@Nullable String str, @Nullable String str2) {
        this.title = str;
        this.url = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        IcyInfo icyInfo = (IcyInfo) obj;
        if (!Util.areEqual(this.title, icyInfo.title) || !Util.areEqual(this.url, icyInfo.url)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.title;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((527 + hashCode) * 31) + i;
    }

    public String toString() {
        String str = this.title;
        String str2 = this.url;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append("ICY: title=\"");
        sb.append(str);
        sb.append("\", url=\"");
        sb.append(str2);
        sb.append("\"");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.title);
        parcel.writeString(this.url);
    }
}
