package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import java.util.concurrent.Executor;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowser.class */
public class MediaBrowser extends MediaController {
    public static final String TAG = "MediaBrowser";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowser$BrowserCallback.class */
    public static class BrowserCallback extends MediaController.ControllerCallback {
        public void onChildrenChanged(@NonNull MediaBrowser mediaBrowser, @NonNull String str, @IntRange(from = 0) int i, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        }

        public void onSearchResultChanged(@NonNull MediaBrowser mediaBrowser, @NonNull String str, @IntRange(from = 0) int i, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowser$BrowserCallbackRunnable.class */
    public interface BrowserCallbackRunnable {
        void run(@NonNull BrowserCallback browserCallback);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowser$Builder.class */
    public static final class Builder extends MediaController.BuilderBase<MediaBrowser, Builder, BrowserCallback> {
        public Builder(@NonNull Context context) {
            super(context);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public MediaBrowser build() {
            if (this.mToken == null && this.mCompatToken == null) {
                throw new IllegalArgumentException("token and compat token shouldn't be both null");
            }
            SessionToken sessionToken = this.mToken;
            return sessionToken != null ? new MediaBrowser(this.mContext, sessionToken, this.mConnectionHints, this.mCallbackExecutor, (BrowserCallback) this.mCallback) : new MediaBrowser(this.mContext, this.mCompatToken, this.mConnectionHints, this.mCallbackExecutor, (BrowserCallback) this.mCallback);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setConnectionHints(@NonNull Bundle bundle) {
            return (Builder) super.setConnectionHints(bundle);
        }

        @NonNull
        public Builder setControllerCallback(@NonNull Executor executor, @NonNull BrowserCallback browserCallback) {
            return (Builder) super.setControllerCallback(executor, (Executor) browserCallback);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setSessionCompatToken(@NonNull MediaSessionCompat.Token token) {
            return (Builder) super.setSessionCompatToken(token);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.media2.session.MediaController.BuilderBase
        @NonNull
        public Builder setSessionToken(@NonNull SessionToken sessionToken) {
            return (Builder) super.setSessionToken(sessionToken);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowser$MediaBrowserImpl.class */
    public interface MediaBrowserImpl extends MediaController.MediaControllerImpl {
        AbstractFutureC9382a<LibraryResult> getChildren(@NonNull String str, int i, int i2, @Nullable MediaLibraryService.LibraryParams libraryParams);

        AbstractFutureC9382a<LibraryResult> getItem(@NonNull String str);

        AbstractFutureC9382a<LibraryResult> getLibraryRoot(@Nullable MediaLibraryService.LibraryParams libraryParams);

        AbstractFutureC9382a<LibraryResult> getSearchResult(@NonNull String str, int i, int i2, @Nullable MediaLibraryService.LibraryParams libraryParams);

        AbstractFutureC9382a<LibraryResult> search(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams);

        AbstractFutureC9382a<LibraryResult> subscribe(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams);

        AbstractFutureC9382a<LibraryResult> unsubscribe(@NonNull String str);
    }

    public MediaBrowser(@NonNull Context context, @NonNull MediaSessionCompat.Token token, @Nullable Bundle bundle, @Nullable Executor executor, @Nullable BrowserCallback browserCallback) {
        super(context, token, bundle, executor, browserCallback);
    }

    public MediaBrowser(@NonNull Context context, @NonNull SessionToken sessionToken, @Nullable Bundle bundle, @Nullable Executor executor, @Nullable BrowserCallback browserCallback) {
        super(context, sessionToken, bundle, executor, browserCallback);
    }

    public static AbstractFutureC9382a<LibraryResult> createDisconnectedFuture() {
        return LibraryResult.createFutureWithResult(-100);
    }

    @Override // androidx.media2.session.MediaController
    public MediaBrowserImpl createImpl(@NonNull Context context, @NonNull SessionToken sessionToken, @Nullable Bundle bundle) {
        return sessionToken.isLegacySession() ? new MediaBrowserImplLegacy(context, this, sessionToken) : new MediaBrowserImplBase(context, this, sessionToken, bundle);
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> getChildren(@NonNull String str, @IntRange(from = 0) int i, @IntRange(from = 1) int i2, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("parentId shouldn't be empty");
        } else if (i < 0) {
            throw new IllegalArgumentException("page shouldn't be negative");
        } else if (i2 >= 1) {
            return isConnected() ? getImpl().getChildren(str, i, i2, libraryParams) : createDisconnectedFuture();
        } else {
            throw new IllegalArgumentException("pageSize shouldn't be less than 1");
        }
    }

    @Override // androidx.media2.session.MediaController
    public MediaBrowserImpl getImpl() {
        return (MediaBrowserImpl) super.getImpl();
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> getItem(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().getItem(str) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("mediaId shouldn't be empty");
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> getLibraryRoot(@Nullable MediaLibraryService.LibraryParams libraryParams) {
        return isConnected() ? getImpl().getLibraryRoot(libraryParams) : createDisconnectedFuture();
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> getSearchResult(@NonNull String str, @IntRange(from = 0) int i, @IntRange(from = 1) int i2, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("query shouldn't be empty");
        } else if (i < 0) {
            throw new IllegalArgumentException("page shouldn't be negative");
        } else if (i2 >= 1) {
            return isConnected() ? getImpl().getSearchResult(str, i, i2, libraryParams) : createDisconnectedFuture();
        } else {
            throw new IllegalArgumentException("pageSize shouldn't be less than 1");
        }
    }

    public void notifyBrowserCallback(final BrowserCallbackRunnable browserCallbackRunnable) {
        Executor executor;
        if (this.mCallback != null && (executor = this.mCallbackExecutor) != null) {
            executor.execute(new Runnable() { // from class: androidx.media2.session.MediaBrowser.1
                @Override // java.lang.Runnable
                public void run() {
                    browserCallbackRunnable.run((BrowserCallback) MediaBrowser.this.mCallback);
                }
            });
        }
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> search(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().search(str, libraryParams) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("query shouldn't be empty");
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> subscribe(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().subscribe(str, libraryParams) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("parentId shouldn't be empty");
    }

    @NonNull
    public AbstractFutureC9382a<LibraryResult> unsubscribe(@NonNull String str) {
        if (!TextUtils.isEmpty(str)) {
            return isConnected() ? getImpl().unsubscribe(str) : createDisconnectedFuture();
        }
        throw new IllegalArgumentException("parentId shouldn't be empty");
    }
}
