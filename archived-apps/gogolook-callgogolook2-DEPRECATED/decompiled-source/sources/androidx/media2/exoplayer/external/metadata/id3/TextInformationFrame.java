package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/TextInformationFrame.class */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator<TextInformationFrame>() { // from class: androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    };
    @Nullable
    public final String description;
    public final String value;

    public TextInformationFrame(Parcel parcel) {
        super((String) Util.castNonNull(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) Util.castNonNull(parcel.readString());
    }

    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        if (!this.f92id.equals(textInformationFrame.f92id) || !Util.areEqual(this.description, textInformationFrame.description) || !Util.areEqual(this.value, textInformationFrame.value)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f92id.hashCode();
        String str = this.description;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.value;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // androidx.media2.exoplayer.external.metadata.id3.Id3Frame
    public String toString() {
        String str = this.f92id;
        String str2 = this.value;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f92id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
