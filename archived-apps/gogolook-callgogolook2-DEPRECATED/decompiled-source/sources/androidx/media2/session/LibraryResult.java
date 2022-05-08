package androidx.media2.session;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.futures.ResolvableFuture;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResult.class */
public class LibraryResult extends CustomVersionedParcelable implements RemoteResult {
    public long mCompletionTime;
    public MediaItem mItem;
    public List<MediaItem> mItemList;
    public ParcelImplListSlice mItemListSlice;
    public MediaLibraryService.LibraryParams mParams;
    public MediaItem mParcelableItem;
    public int mResultCode;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResult$ResultCode.class */
    public @interface ResultCode {
    }

    public LibraryResult() {
    }

    public LibraryResult(int i) {
        this(i, null, null, null);
    }

    public LibraryResult(int i, @Nullable MediaItem mediaItem, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        this(i, mediaItem, null, libraryParams);
    }

    public LibraryResult(int i, @Nullable MediaItem mediaItem, @Nullable List<MediaItem> list, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        this.mResultCode = i;
        this.mCompletionTime = SystemClock.elapsedRealtime();
        this.mItem = mediaItem;
        this.mItemList = list;
        this.mParams = libraryParams;
    }

    public LibraryResult(int i, @Nullable List<MediaItem> list, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        this(i, null, list, libraryParams);
    }

    public static AbstractFutureC9382a<LibraryResult> createFutureWithResult(int i) {
        ResolvableFuture create = ResolvableFuture.create();
        create.set(new LibraryResult(i));
        return create;
    }

    @Override // androidx.media2.common.BaseResult
    public long getCompletionTime() {
        return this.mCompletionTime;
    }

    @Nullable
    public MediaLibraryService.LibraryParams getLibraryParams() {
        return this.mParams;
    }

    @Override // androidx.media2.common.BaseResult
    @Nullable
    public MediaItem getMediaItem() {
        return this.mItem;
    }

    @Nullable
    public List<MediaItem> getMediaItems() {
        return this.mItemList;
    }

    @Override // androidx.media2.common.BaseResult
    public int getResultCode() {
        return this.mResultCode;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onPostParceling() {
        this.mItem = this.mParcelableItem;
        this.mParcelableItem = null;
        this.mItemList = MediaUtils.convertParcelImplListSliceToMediaItemList(this.mItemListSlice);
        this.mItemListSlice = null;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onPreParceling(boolean z) {
        this.mParcelableItem = MediaUtils.upcastForPreparceling(this.mItem);
        this.mItemListSlice = MediaUtils.convertMediaItemListToParcelImplListSlice(this.mItemList);
    }
}
