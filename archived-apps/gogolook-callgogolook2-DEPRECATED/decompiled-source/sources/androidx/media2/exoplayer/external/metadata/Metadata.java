package androidx.media2.exoplayer.external.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: androidx.media2.exoplayer.external.metadata.Metadata.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    };
    public final Entry[] entries;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
    }

    public Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i < entryArr.length) {
                entryArr[i] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public Metadata(List<? extends Entry> list) {
        if (list != null) {
            this.entries = new Entry[list.size()];
            list.toArray(this.entries);
            return;
        }
        this.entries = new Entry[0];
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr == null ? new Entry[0] : entryArr;
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        Entry[] entryArr2 = this.entries;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.entries.length, entryArr.length);
        return new Metadata((Entry[]) Util.castNonNullTypeArray(entryArr3));
    }

    public Metadata copyWithAppendedEntriesFrom(@Nullable Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public Entry get(int i) {
        return this.entries[i];
    }

    public int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public int length() {
        return this.entries.length;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
