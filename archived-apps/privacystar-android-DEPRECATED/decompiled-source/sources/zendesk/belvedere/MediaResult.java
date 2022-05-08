package zendesk.belvedere;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/MediaResult.class */
public class MediaResult implements Parcelable, Comparable<MediaResult> {
    public static final Parcelable.Creator<MediaResult> CREATOR = new Parcelable.Creator<MediaResult>() { // from class: zendesk.belvedere.MediaResult.1
        @Override // android.os.Parcelable.Creator
        public MediaResult createFromParcel(Parcel parcel) {
            return new MediaResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        public MediaResult[] newArray(int i) {
            return new MediaResult[i];
        }
    };
    public static final long UNKNOWN_VALUE = -1;
    private final File file;
    private final long height;
    private final String mimeType;
    private final String name;
    private final Uri originalUri;
    private final long size;
    private final Uri uri;
    private final long width;

    private MediaResult(Parcel parcel) {
        this.file = (File) parcel.readSerializable();
        this.uri = (Uri) parcel.readParcelable(MediaResult.class.getClassLoader());
        this.name = parcel.readString();
        this.mimeType = parcel.readString();
        this.originalUri = (Uri) parcel.readParcelable(MediaResult.class.getClassLoader());
        this.size = parcel.readLong();
        this.width = parcel.readLong();
        this.height = parcel.readLong();
    }

    public MediaResult(File file, Uri uri, Uri uri2, String str, String str2, long j, long j2, long j3) {
        this.file = file;
        this.uri = uri;
        this.originalUri = uri2;
        this.mimeType = str2;
        this.name = str;
        this.size = j;
        this.width = j2;
        this.height = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediaResult empty() {
        return new MediaResult(null, null, null, null, null, -1L, -1L, -1L);
    }

    public int compareTo(@NonNull MediaResult mediaResult) {
        return this.originalUri.compareTo(mediaResult.getOriginalUri());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaResult mediaResult = (MediaResult) obj;
        if (this.size != mediaResult.size || this.width != mediaResult.width || this.height != mediaResult.height) {
            return false;
        }
        if (this.file != null) {
            if (!this.file.equals(mediaResult.file)) {
                return false;
            }
        } else if (mediaResult.file != null) {
            return false;
        }
        if (this.uri != null) {
            if (!this.uri.equals(mediaResult.uri)) {
                return false;
            }
        } else if (mediaResult.uri != null) {
            return false;
        }
        if (this.originalUri != null) {
            if (!this.originalUri.equals(mediaResult.originalUri)) {
                return false;
            }
        } else if (mediaResult.originalUri != null) {
            return false;
        }
        if (this.name != null) {
            if (!this.name.equals(mediaResult.name)) {
                return false;
            }
        } else if (mediaResult.name != null) {
            return false;
        }
        if (this.mimeType != null) {
            z = this.mimeType.equals(mediaResult.mimeType);
        } else if (mediaResult.mimeType != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public File getFile() {
        return this.file;
    }

    public long getHeight() {
        return this.height;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getName() {
        return this.name;
    }

    @Nullable
    public Uri getOriginalUri() {
        return this.originalUri;
    }

    public long getSize() {
        return this.size;
    }

    @NonNull
    public Uri getUri() {
        return this.uri;
    }

    public long getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.file != null ? this.file.hashCode() : 0;
        int hashCode2 = this.uri != null ? this.uri.hashCode() : 0;
        int hashCode3 = this.originalUri != null ? this.originalUri.hashCode() : 0;
        int hashCode4 = this.name != null ? this.name.hashCode() : 0;
        if (this.mimeType != null) {
            i = this.mimeType.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + ((int) (this.size ^ (this.size >>> 32)))) * 31) + ((int) (this.width ^ (this.width >>> 32)))) * 31) + ((int) (this.height ^ (this.height >>> 32)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.file);
        parcel.writeParcelable(this.uri, i);
        parcel.writeString(this.name);
        parcel.writeString(this.mimeType);
        parcel.writeParcelable(this.originalUri, i);
        parcel.writeLong(this.size);
        parcel.writeLong(this.width);
        parcel.writeLong(this.height);
    }
}
