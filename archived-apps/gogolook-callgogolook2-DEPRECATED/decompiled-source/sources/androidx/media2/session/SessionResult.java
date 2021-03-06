package androidx.media2.session;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.futures.ResolvableFuture;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResult.class */
public class SessionResult extends CustomVersionedParcelable implements RemoteResult {
    public static final int RESULT_SUCCESS = 0;
    public long mCompletionTime;
    public Bundle mCustomCommandResult;
    public MediaItem mItem;
    public MediaItem mParcelableItem;
    public int mResultCode;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResult$ResultCode.class */
    public @interface ResultCode {
    }

    public SessionResult() {
    }

    public SessionResult(int i) {
        this(i, null);
    }

    public SessionResult(int i, @Nullable Bundle bundle) {
        this(i, bundle, null, SystemClock.elapsedRealtime());
    }

    public SessionResult(int i, Bundle bundle, MediaItem mediaItem) {
        this(i, bundle, mediaItem, SystemClock.elapsedRealtime());
    }

    public SessionResult(int i, @Nullable Bundle bundle, @Nullable MediaItem mediaItem, long j) {
        this.mResultCode = i;
        this.mCustomCommandResult = bundle;
        this.mItem = mediaItem;
        this.mCompletionTime = j;
    }

    public static AbstractFutureC9382a<SessionResult> createFutureWithResult(int i) {
        ResolvableFuture create = ResolvableFuture.create();
        create.set(new SessionResult(i));
        return create;
    }

    @Nullable
    public static SessionResult from(@Nullable SessionPlayer.PlayerResult playerResult) {
        if (playerResult == null) {
            return null;
        }
        return new SessionResult(playerResult.getResultCode(), null, playerResult.getMediaItem(), playerResult.getCompletionTime());
    }

    @Override // androidx.media2.common.BaseResult
    public long getCompletionTime() {
        return this.mCompletionTime;
    }

    @Nullable
    public Bundle getCustomCommandResult() {
        return this.mCustomCommandResult;
    }

    @Override // androidx.media2.common.BaseResult
    @Nullable
    public MediaItem getMediaItem() {
        return this.mItem;
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
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onPreParceling(boolean z) {
        this.mParcelableItem = MediaUtils.upcastForPreparceling(this.mItem);
    }
}
