package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.media.MediaBrowserCompat;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.session.MediaBrowser;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.futures.ResolvableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplLegacy.class */
public class MediaBrowserImplLegacy extends MediaControllerImplLegacy implements MediaBrowser.MediaBrowserImpl {
    public static final String TAG = "MB2ImplLegacy";
    @GuardedBy("mLock")
    public final HashMap<MediaLibraryService.LibraryParams, MediaBrowserCompat> mBrowserCompats = new HashMap<>();
    @GuardedBy("mLock")
    public final HashMap<String, List<SubscribeCallback>> mSubscribeCallbacks = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplLegacy$GetChildrenCallback.class */
    public class GetChildrenCallback extends MediaBrowserCompat.SubscriptionCallback {
        public final ResolvableFuture<LibraryResult> mFuture;
        public final String mParentId;

        public GetChildrenCallback(ResolvableFuture<LibraryResult> resolvableFuture, String str) {
            this.mFuture = resolvableFuture;
            this.mParentId = str;
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowserCompat.MediaItem> list) {
            onChildrenLoaded(str, list, null);
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
            if (!TextUtils.isEmpty(str)) {
                MediaBrowserCompat browserCompat = MediaBrowserImplLegacy.this.getBrowserCompat();
                if (browserCompat == null) {
                    this.mFuture.set(new LibraryResult(-100));
                    return;
                }
                browserCompat.unsubscribe(this.mParentId, this);
                ArrayList arrayList = new ArrayList();
                if (list == null) {
                    this.mFuture.set(new LibraryResult(-1));
                    return;
                }
                for (int i = 0; i < list.size(); i++) {
                    arrayList.add(MediaUtils.convertToMediaItem(list.get(i)));
                }
                this.mFuture.set(new LibraryResult(0, arrayList, (MediaLibraryService.LibraryParams) null));
            }
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onError(String str) {
            this.mFuture.set(new LibraryResult(-1));
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onError(String str, Bundle bundle) {
            this.mFuture.set(new LibraryResult(-1));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplLegacy$GetLibraryRootCallback.class */
    public class GetLibraryRootCallback extends MediaBrowserCompat.ConnectionCallback {
        public final MediaLibraryService.LibraryParams mParams;
        public final ResolvableFuture<LibraryResult> mResult;

        public GetLibraryRootCallback(ResolvableFuture<LibraryResult> resolvableFuture, MediaLibraryService.LibraryParams libraryParams) {
            this.mResult = resolvableFuture;
            this.mParams = libraryParams;
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnected() {
            MediaBrowserCompat mediaBrowserCompat;
            synchronized (MediaBrowserImplLegacy.this.mLock) {
                mediaBrowserCompat = MediaBrowserImplLegacy.this.mBrowserCompats.get(this.mParams);
            }
            if (mediaBrowserCompat == null) {
                this.mResult.set(new LibraryResult(-1));
            } else {
                this.mResult.set(new LibraryResult(0, MediaBrowserImplLegacy.this.createRootMediaItem(mediaBrowserCompat), MediaUtils.convertToLibraryParams(MediaBrowserImplLegacy.this.mContext, mediaBrowserCompat.getExtras())));
            }
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionFailed() {
            this.mResult.set(new LibraryResult(-3));
            MediaBrowserImplLegacy.this.close();
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionSuspended() {
            onConnectionFailed();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplLegacy$SubscribeCallback.class */
    public class SubscribeCallback extends MediaBrowserCompat.SubscriptionCallback {
        public SubscribeCallback() {
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowserCompat.MediaItem> list) {
            onChildrenLoaded(str, list, null);
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onChildrenLoaded(final String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
            MediaBrowserCompat browserCompat;
            if (!TextUtils.isEmpty(str) && (browserCompat = MediaBrowserImplLegacy.this.getBrowserCompat()) != null && list != null) {
                final int size = list.size();
                final MediaLibraryService.LibraryParams convertToLibraryParams = MediaUtils.convertToLibraryParams(MediaBrowserImplLegacy.this.mContext, browserCompat.getNotifyChildrenChangedOptions());
                MediaBrowserImplLegacy.this.getMediaBrowser().notifyBrowserCallback(new MediaBrowser.BrowserCallbackRunnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.SubscribeCallback.1
                    @Override // androidx.media2.session.MediaBrowser.BrowserCallbackRunnable
                    public void run(@NonNull MediaBrowser.BrowserCallback browserCallback) {
                        browserCallback.onChildrenChanged(MediaBrowserImplLegacy.this.getMediaBrowser(), str, size, convertToLibraryParams);
                    }
                });
            }
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onError(String str) {
            onChildrenLoaded(str, null, null);
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.SubscriptionCallback
        public void onError(String str, Bundle bundle) {
            onChildrenLoaded(str, null, bundle);
        }
    }

    public MediaBrowserImplLegacy(@NonNull Context context, MediaBrowser mediaBrowser, @NonNull SessionToken sessionToken) {
        super(context, mediaBrowser, sessionToken);
    }

    public static Bundle createBundle(@Nullable MediaLibraryService.LibraryParams libraryParams) {
        return (libraryParams == null || libraryParams.getExtras() == null) ? new Bundle() : new Bundle(libraryParams.getExtras());
    }

    private MediaBrowserCompat getBrowserCompat(MediaLibraryService.LibraryParams libraryParams) {
        MediaBrowserCompat mediaBrowserCompat;
        synchronized (this.mLock) {
            mediaBrowserCompat = this.mBrowserCompats.get(libraryParams);
        }
        return mediaBrowserCompat;
    }

    public static Bundle getExtras(@Nullable MediaLibraryService.LibraryParams libraryParams) {
        return libraryParams != null ? libraryParams.getExtras() : null;
    }

    @Override // androidx.media2.session.MediaControllerImplLegacy, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            for (MediaBrowserCompat mediaBrowserCompat : this.mBrowserCompats.values()) {
                mediaBrowserCompat.disconnect();
            }
            this.mBrowserCompats.clear();
            super.close();
        }
    }

    public MediaItem createRootMediaItem(@NonNull MediaBrowserCompat mediaBrowserCompat) {
        return new MediaItem.Builder().setMetadata(new MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_MEDIA_ID, mediaBrowserCompat.getRoot()).putLong(MediaMetadata.METADATA_KEY_BROWSABLE, 0L).putLong(MediaMetadata.METADATA_KEY_PLAYABLE, 0L).setExtras(mediaBrowserCompat.getExtras()).build()).build();
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getChildren(@NonNull String str, int i, int i2, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        ResolvableFuture create = ResolvableFuture.create();
        Bundle createBundle = createBundle(libraryParams);
        createBundle.putInt("android.media.browse.extra.PAGE", i);
        createBundle.putInt("android.media.browse.extra.PAGE_SIZE", i2);
        browserCompat.subscribe(str, createBundle, new GetChildrenCallback(create, str));
        return create;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getItem(@NonNull String str) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        final ResolvableFuture create = ResolvableFuture.create();
        browserCompat.getItem(str, new MediaBrowserCompat.ItemCallback() { // from class: androidx.media2.session.MediaBrowserImplLegacy.2
            @Override // android.support.p001v4.media.MediaBrowserCompat.ItemCallback
            public void onError(String str2) {
                MediaBrowserImplLegacy.this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        create.set(new LibraryResult(-1));
                    }
                });
            }

            @Override // android.support.p001v4.media.MediaBrowserCompat.ItemCallback
            public void onItemLoaded(final MediaBrowserCompat.MediaItem mediaItem) {
                MediaBrowserImplLegacy.this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
                        if (mediaItem2 != null) {
                            create.set(new LibraryResult(0, MediaUtils.convertToMediaItem(mediaItem2), (MediaLibraryService.LibraryParams) null));
                        } else {
                            create.set(new LibraryResult(-3));
                        }
                    }
                });
            }
        });
        return create;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getLibraryRoot(@Nullable final MediaLibraryService.LibraryParams libraryParams) {
        final ResolvableFuture create = ResolvableFuture.create();
        MediaBrowserCompat browserCompat = getBrowserCompat(libraryParams);
        if (browserCompat != null) {
            create.set(new LibraryResult(0, createRootMediaItem(browserCompat), (MediaLibraryService.LibraryParams) null));
        } else {
            this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(MediaBrowserImplLegacy.this.getContext(), MediaBrowserImplLegacy.this.getConnectedToken().getComponentName(), new GetLibraryRootCallback(create, libraryParams), MediaUtils.convertToRootHints(libraryParams));
                    synchronized (MediaBrowserImplLegacy.this.mLock) {
                        MediaBrowserImplLegacy.this.mBrowserCompats.put(libraryParams, mediaBrowserCompat);
                    }
                    mediaBrowserCompat.connect();
                }
            });
        }
        return create;
    }

    @NonNull
    public MediaBrowser getMediaBrowser() {
        return (MediaBrowser) this.mInstance;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getSearchResult(@NonNull String str, int i, int i2, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        final ResolvableFuture create = ResolvableFuture.create();
        Bundle createBundle = createBundle(libraryParams);
        createBundle.putInt("android.media.browse.extra.PAGE", i);
        createBundle.putInt("android.media.browse.extra.PAGE_SIZE", i2);
        browserCompat.search(str, createBundle, new MediaBrowserCompat.SearchCallback() { // from class: androidx.media2.session.MediaBrowserImplLegacy.4
            @Override // android.support.p001v4.media.MediaBrowserCompat.SearchCallback
            public void onError(String str2, Bundle bundle) {
                MediaBrowserImplLegacy.this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        create.set(new LibraryResult(-1));
                    }
                });
            }

            @Override // android.support.p001v4.media.MediaBrowserCompat.SearchCallback
            public void onSearchResult(String str2, Bundle bundle, final List<MediaBrowserCompat.MediaItem> list) {
                MediaBrowserImplLegacy.this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        create.set(new LibraryResult(0, MediaUtils.convertMediaItemListToMediaItemList(list), (MediaLibraryService.LibraryParams) null));
                    }
                });
            }
        });
        return create;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> search(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        browserCompat.search(str, getExtras(libraryParams), new MediaBrowserCompat.SearchCallback() { // from class: androidx.media2.session.MediaBrowserImplLegacy.3
            @Override // android.support.p001v4.media.MediaBrowserCompat.SearchCallback
            public void onError(final String str2, Bundle bundle) {
                MediaBrowserImplLegacy.this.getMediaBrowser().notifyBrowserCallback(new MediaBrowser.BrowserCallbackRunnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.3.2
                    @Override // androidx.media2.session.MediaBrowser.BrowserCallbackRunnable
                    public void run(@NonNull MediaBrowser.BrowserCallback browserCallback) {
                        browserCallback.onSearchResultChanged(MediaBrowserImplLegacy.this.getMediaBrowser(), str2, 0, null);
                    }
                });
            }

            @Override // android.support.p001v4.media.MediaBrowserCompat.SearchCallback
            public void onSearchResult(final String str2, Bundle bundle, final List<MediaBrowserCompat.MediaItem> list) {
                MediaBrowserImplLegacy.this.getMediaBrowser().notifyBrowserCallback(new MediaBrowser.BrowserCallbackRunnable() { // from class: androidx.media2.session.MediaBrowserImplLegacy.3.1
                    @Override // androidx.media2.session.MediaBrowser.BrowserCallbackRunnable
                    public void run(@NonNull MediaBrowser.BrowserCallback browserCallback) {
                        browserCallback.onSearchResultChanged(MediaBrowserImplLegacy.this.getMediaBrowser(), str2, list.size(), null);
                    }
                });
            }
        });
        return LibraryResult.createFutureWithResult(0);
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> subscribe(@NonNull String str, @Nullable MediaLibraryService.LibraryParams libraryParams) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        SubscribeCallback subscribeCallback = new SubscribeCallback();
        synchronized (this.mLock) {
            List<SubscribeCallback> list = this.mSubscribeCallbacks.get(str);
            List<SubscribeCallback> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.mSubscribeCallbacks.put(str, list2);
            }
            list2.add(subscribeCallback);
        }
        browserCompat.subscribe(str, getExtras(libraryParams), subscribeCallback);
        return LibraryResult.createFutureWithResult(0);
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> unsubscribe(@NonNull String str) {
        MediaBrowserCompat browserCompat = getBrowserCompat();
        if (browserCompat == null) {
            return LibraryResult.createFutureWithResult(-100);
        }
        synchronized (this.mLock) {
            List<SubscribeCallback> list = this.mSubscribeCallbacks.get(str);
            if (list == null) {
                return LibraryResult.createFutureWithResult(-3);
            }
            for (int i = 0; i < list.size(); i++) {
                browserCompat.unsubscribe(str, list.get(i));
            }
            return LibraryResult.createFutureWithResult(0);
        }
    }
}
