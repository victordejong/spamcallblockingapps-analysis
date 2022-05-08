package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.MediaSessionImplBase;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaLibrarySessionImplBase.class */
public class MediaLibrarySessionImplBase extends MediaSessionImplBase implements MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl {
    @GuardedBy("mLock")
    public final ArrayMap<MediaSession.ControllerCb, Set<String>> mSubscriptions = new ArrayMap<>();

    public MediaLibrarySessionImplBase(MediaSession mediaSession, Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, MediaSession.SessionCallback sessionCallback, Bundle bundle) {
        super(mediaSession, context, str, sessionPlayer, pendingIntent, executor, sessionCallback, bundle);
    }

    private LibraryResult ensureNonNullResult(LibraryResult libraryResult) {
        if (libraryResult != null) {
            return libraryResult;
        }
        throw new RuntimeException("LibraryResult shouldn't be null");
    }

    private LibraryResult ensureNonNullResultWithValidItem(LibraryResult libraryResult) {
        LibraryResult ensureNonNullResult = ensureNonNullResult(libraryResult);
        LibraryResult libraryResult2 = ensureNonNullResult;
        if (ensureNonNullResult.getResultCode() == 0) {
            libraryResult2 = ensureNonNullResult;
            if (!isValidItem(ensureNonNullResult.getMediaItem())) {
                libraryResult2 = new LibraryResult(-1);
            }
        }
        return libraryResult2;
    }

    private LibraryResult ensureNonNullResultWithValidList(LibraryResult libraryResult, int i) {
        LibraryResult ensureNonNullResult = ensureNonNullResult(libraryResult);
        if (ensureNonNullResult.getResultCode() == 0) {
            List<MediaItem> mediaItems = ensureNonNullResult.getMediaItems();
            if (mediaItems == null) {
                throw new RuntimeException("List shouldn't be null for the success");
            } else if (mediaItems.size() <= i) {
                for (MediaItem mediaItem : mediaItems) {
                    if (!isValidItem(mediaItem)) {
                        return new LibraryResult(-1);
                    }
                }
            } else {
                throw new RuntimeException("List shouldn't contain items more than pageSize, size=" + ensureNonNullResult.getMediaItems().size() + ", pageSize" + i);
            }
        }
        return ensureNonNullResult;
    }

    private boolean isValidItem(MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new RuntimeException("Item shouldn't be null for the success");
        } else if (!TextUtils.isEmpty(mediaItem.getMediaId())) {
            MediaMetadata metadata = mediaItem.getMetadata();
            if (metadata == null) {
                throw new RuntimeException("Metadata of an item shouldn't be null for the success");
            } else if (!metadata.containsKey(MediaMetadata.METADATA_KEY_BROWSABLE)) {
                throw new RuntimeException("METADATA_KEY_BROWSABLE should be specified in metadata of an item");
            } else if (metadata.containsKey(MediaMetadata.METADATA_KEY_PLAYABLE)) {
                return true;
            } else {
                throw new RuntimeException("METADATA_KEY_PLAYABLE should be specified in metadata of an item");
            }
        } else {
            throw new RuntimeException("Media ID of an item shouldn't be empty for the success");
        }
    }

    @Override // androidx.media2.session.MediaSessionImplBase
    public MediaBrowserServiceCompat createLegacyBrowserService(Context context, SessionToken sessionToken, MediaSessionCompat.Token token) {
        return new MediaLibraryServiceLegacyStub(context, this, token);
    }

    @Override // androidx.media2.session.MediaSessionImplBase
    public void dispatchRemoteControllerTaskWithoutReturn(MediaSessionImplBase.RemoteControllerTask remoteControllerTask) {
        super.dispatchRemoteControllerTaskWithoutReturn(remoteControllerTask);
        MediaLibraryServiceLegacyStub legacyBrowserService = getLegacyBrowserService();
        if (legacyBrowserService != null) {
            dispatchRemoteControllerTaskWithoutReturn(legacyBrowserService.getControllersForAll(), remoteControllerTask);
        }
    }

    public void dumpSubscription() {
        if (MediaSessionImplBase.DEBUG) {
            synchronized (this.mLock) {
                String str = "Dumping subscription, controller sz=" + this.mSubscriptions.size();
                for (int i = 0; i < this.mSubscriptions.size(); i++) {
                    String str2 = "  controller " + this.mSubscriptions.valueAt(i);
                    for (String str3 : this.mSubscriptions.valueAt(i)) {
                        String str4 = "  - " + str3;
                    }
                }
            }
        }
    }

    @Override // androidx.media2.session.MediaSessionImplBase, androidx.media2.session.MediaSession.MediaSessionImpl
    public MediaLibraryService.MediaLibrarySession.MediaLibrarySessionCallback getCallback() {
        return (MediaLibraryService.MediaLibrarySession.MediaLibrarySessionCallback) super.getCallback();
    }

    @Override // androidx.media2.session.MediaSessionImplBase, androidx.media2.session.MediaSession.MediaSessionImpl
    public List<MediaSession.ControllerInfo> getConnectedControllers() {
        List<MediaSession.ControllerInfo> connectedControllers = super.getConnectedControllers();
        MediaLibraryServiceLegacyStub legacyBrowserService = getLegacyBrowserService();
        if (legacyBrowserService != null) {
            connectedControllers.addAll(legacyBrowserService.getConnectedControllersManager().getConnectedControllers());
        }
        return connectedControllers;
    }

    @Override // androidx.media2.session.MediaSessionImplBase, androidx.media2.session.MediaSession.MediaSessionImpl
    public MediaLibraryService.MediaLibrarySession getInstance() {
        return (MediaLibraryService.MediaLibrarySession) super.getInstance();
    }

    @Override // androidx.media2.session.MediaSessionImplBase
    public MediaLibraryServiceLegacyStub getLegacyBrowserService() {
        return (MediaLibraryServiceLegacyStub) super.getLegacyBrowserService();
    }

    @Override // androidx.media2.session.MediaSessionImplBase, androidx.media2.session.MediaSession.MediaSessionImpl
    public boolean isConnected(MediaSession.ControllerInfo controllerInfo) {
        if (super.isConnected(controllerInfo)) {
            return true;
        }
        MediaLibraryServiceLegacyStub legacyBrowserService = getLegacyBrowserService();
        return legacyBrowserService != null ? legacyBrowserService.getConnectedControllersManager().isConnected(controllerInfo) : false;
    }

    public boolean isSubscribed(MediaSession.ControllerCb controllerCb, String str) {
        synchronized (this.mLock) {
            Set<String> set = this.mSubscriptions.get(controllerCb);
            if (set != null && set.contains(str)) {
                return true;
            }
            return false;
        }
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public void notifyChildrenChanged(final MediaSession.ControllerInfo controllerInfo, final String str, final int i, final MediaLibraryService.LibraryParams libraryParams) {
        dispatchRemoteControllerTaskWithoutReturn(controllerInfo, new MediaSessionImplBase.RemoteControllerTask() { // from class: androidx.media2.session.MediaLibrarySessionImplBase.2
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                if (MediaLibrarySessionImplBase.this.isSubscribed(controllerCb, str)) {
                    controllerCb.onChildrenChanged(i2, str, i, libraryParams);
                } else if (MediaSessionImplBase.DEBUG) {
                    String str2 = "Skipping notifyChildrenChanged() to " + controllerInfo + " because it hasn't subscribed";
                    MediaLibrarySessionImplBase.this.dumpSubscription();
                }
            }
        });
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public void notifyChildrenChanged(final String str, final int i, final MediaLibraryService.LibraryParams libraryParams) {
        dispatchRemoteControllerTaskWithoutReturn(new MediaSessionImplBase.RemoteControllerTask() { // from class: androidx.media2.session.MediaLibrarySessionImplBase.1
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                if (MediaLibrarySessionImplBase.this.isSubscribed(controllerCb, str)) {
                    controllerCb.onChildrenChanged(i2, str, i, libraryParams);
                }
            }
        });
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public void notifySearchResultChanged(MediaSession.ControllerInfo controllerInfo, final String str, final int i, final MediaLibraryService.LibraryParams libraryParams) {
        dispatchRemoteControllerTaskWithoutReturn(controllerInfo, new MediaSessionImplBase.RemoteControllerTask() { // from class: androidx.media2.session.MediaLibrarySessionImplBase.3
            @Override // androidx.media2.session.MediaSessionImplBase.RemoteControllerTask
            public void run(MediaSession.ControllerCb controllerCb, int i2) throws RemoteException {
                controllerCb.onSearchResultChanged(i2, str, i, libraryParams);
            }
        });
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public LibraryResult onGetChildrenOnExecutor(MediaSession.ControllerInfo controllerInfo, String str, int i, int i2, MediaLibraryService.LibraryParams libraryParams) {
        return ensureNonNullResultWithValidList(getCallback().onGetChildren(getInstance(), controllerInfo, str, i, i2, libraryParams), i2);
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public LibraryResult onGetItemOnExecutor(MediaSession.ControllerInfo controllerInfo, String str) {
        return ensureNonNullResultWithValidItem(getCallback().onGetItem(getInstance(), controllerInfo, str));
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public LibraryResult onGetLibraryRootOnExecutor(MediaSession.ControllerInfo controllerInfo, MediaLibraryService.LibraryParams libraryParams) {
        return ensureNonNullResultWithValidItem(getCallback().onGetLibraryRoot(getInstance(), controllerInfo, libraryParams));
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public LibraryResult onGetSearchResultOnExecutor(MediaSession.ControllerInfo controllerInfo, String str, int i, int i2, MediaLibraryService.LibraryParams libraryParams) {
        return ensureNonNullResultWithValidList(getCallback().onGetSearchResult(getInstance(), controllerInfo, str, i, i2, libraryParams), i2);
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public int onSearchOnExecutor(MediaSession.ControllerInfo controllerInfo, String str, MediaLibraryService.LibraryParams libraryParams) {
        return getCallback().onSearch(getInstance(), controllerInfo, str, libraryParams);
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public int onSubscribeOnExecutor(MediaSession.ControllerInfo controllerInfo, String str, MediaLibraryService.LibraryParams libraryParams) {
        synchronized (this.mLock) {
            Set<String> set = this.mSubscriptions.get(controllerInfo.getControllerCb());
            Set<String> set2 = set;
            if (set == null) {
                set2 = new HashSet<>();
                this.mSubscriptions.put(controllerInfo.getControllerCb(), set2);
            }
            set2.add(str);
        }
        int onSubscribe = getCallback().onSubscribe(getInstance(), controllerInfo, str, libraryParams);
        if (onSubscribe != 0) {
            synchronized (this.mLock) {
                this.mSubscriptions.remove(controllerInfo.getControllerCb());
            }
        }
        return onSubscribe;
    }

    @Override // androidx.media2.session.MediaLibraryService.MediaLibrarySession.MediaLibrarySessionImpl
    public int onUnsubscribeOnExecutor(MediaSession.ControllerInfo controllerInfo, String str) {
        int onUnsubscribe = getCallback().onUnsubscribe(getInstance(), controllerInfo, str);
        synchronized (this.mLock) {
            this.mSubscriptions.remove(controllerInfo.getControllerCb());
        }
        return onUnsubscribe;
    }
}
