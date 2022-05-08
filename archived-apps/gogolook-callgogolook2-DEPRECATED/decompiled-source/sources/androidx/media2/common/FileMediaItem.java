package androidx.media2.common;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;
import androidx.media2.common.MediaItem;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem.class */
public class FileMediaItem extends MediaItem {
    public static final long FD_LENGTH_UNKNOWN = 576460752303423487L;
    public static final String TAG = "FileMediaItem";
    public boolean mClosed;
    public long mFDLength;
    public long mFDOffset;
    public ParcelFileDescriptor mPFD;
    public Integer mRefCount;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItem$Builder.class */
    public static final class Builder extends MediaItem.Builder {
        public long mFDLength;
        public long mFDOffset;
        public ParcelFileDescriptor mPFD;

        public Builder(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            this.mFDOffset = 0L;
            this.mFDLength = 576460752303423487L;
            Preconditions.checkNotNull(parcelFileDescriptor);
            this.mPFD = parcelFileDescriptor;
            this.mFDOffset = 0L;
            this.mFDLength = 576460752303423487L;
        }

        @Override // androidx.media2.common.MediaItem.Builder
        @NonNull
        public FileMediaItem build() {
            return new FileMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.Builder
        @NonNull
        public Builder setEndPosition(long j) {
            return (Builder) super.setEndPosition(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @NonNull
        public Builder setFileDescriptorLength(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 576460752303423487;
            }
            this.mFDLength = j2;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @NonNull
        public Builder setFileDescriptorOffset(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 0;
            }
            this.mFDOffset = j2;
            return this;
        }

        @Override // androidx.media2.common.MediaItem.Builder
        @NonNull
        public Builder setMetadata(@Nullable MediaMetadata mediaMetadata) {
            return (Builder) super.setMetadata(mediaMetadata);
        }

        @Override // androidx.media2.common.MediaItem.Builder
        @NonNull
        public Builder setStartPosition(long j) {
            return (Builder) super.setStartPosition(j);
        }
    }

    public FileMediaItem() {
        this.mFDOffset = 0L;
        this.mFDLength = 576460752303423487L;
        this.mRefCount = new Integer(0);
    }

    public FileMediaItem(Builder builder) {
        super(builder);
        this.mFDOffset = 0L;
        this.mFDLength = 576460752303423487L;
        this.mRefCount = new Integer(0);
        this.mPFD = builder.mPFD;
        this.mFDOffset = builder.mFDOffset;
        this.mFDLength = builder.mFDLength;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void close() throws IOException {
        synchronized (this.mRefCount) {
            if (this.mPFD != null) {
                this.mPFD.close();
            }
            this.mClosed = true;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void decreaseRefCount() {
        synchronized (this.mRefCount) {
            if (!this.mClosed) {
                Integer valueOf = Integer.valueOf(this.mRefCount.intValue() - 1);
                this.mRefCount = valueOf;
                if (valueOf.intValue() <= 0) {
                    try {
                        if (this.mPFD != null) {
                            this.mPFD.close();
                        }
                    } catch (IOException e) {
                        Log.e(TAG, "Failed to close the ParcelFileDescriptor " + this.mPFD, e);
                    }
                    this.mClosed = true;
                }
            }
        }
    }

    public long getFileDescriptorLength() {
        return this.mFDLength;
    }

    public long getFileDescriptorOffset() {
        return this.mFDOffset;
    }

    @NonNull
    public ParcelFileDescriptor getParcelFileDescriptor() {
        return this.mPFD;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void increaseRefCount() {
        synchronized (this.mRefCount) {
            if (!this.mClosed) {
                this.mRefCount = Integer.valueOf(this.mRefCount.intValue() + 1);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isClosed() {
        boolean z;
        synchronized (this.mRefCount) {
            z = this.mClosed;
        }
        return z;
    }
}
