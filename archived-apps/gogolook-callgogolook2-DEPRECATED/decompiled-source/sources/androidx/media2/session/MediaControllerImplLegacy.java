package androidx.media2.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p001v4.media.MediaBrowserCompat;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaControllerCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.BundleCompat;
import androidx.core.util.ObjectsCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.futures.ResolvableFuture;
import java.util.List;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy.class */
public class MediaControllerImplLegacy implements MediaController.MediaControllerImpl {
    public static final int ITEM_NONE = -1;
    public static final long POSITION_DIFF_TOLERANCE = 100;
    public static final String SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED = "android.media.session.command.ON_CAPTIONING_ENALBED_CHANGED";
    public static final String SESSION_COMMAND_ON_EXTRAS_CHANGED = "android.media.session.command.ON_EXTRAS_CHANGED";
    @GuardedBy("mLock")
    public SessionCommandGroup mAllowedCommands;
    @GuardedBy("mLock")
    public MediaBrowserCompat mBrowserCompat;
    @GuardedBy("mLock")
    public long mBufferedPosition;
    @GuardedBy("mLock")
    public int mBufferingState;
    @GuardedBy("mLock")
    public volatile boolean mConnected;
    public final Context mContext;
    @GuardedBy("mLock")
    public MediaControllerCompat mControllerCompat;
    @GuardedBy("mLock")
    public ControllerCompatCallback mControllerCompatCallback;
    @GuardedBy("mLock")
    public MediaItem mCurrentMediaItem;
    public int mCurrentMediaItemIndex;
    @GuardedBy("mLock")
    public List<MediaSession.CommandButton> mCustomLayout;
    public MediaController mInstance;
    @GuardedBy("mLock")
    public boolean mIsReleased;
    @GuardedBy("mLock")
    public MediaMetadataCompat mMediaMetadataCompat;
    @GuardedBy("mLock")
    public MediaController.PlaybackInfo mPlaybackInfo;
    @GuardedBy("mLock")
    public PlaybackStateCompat mPlaybackStateCompat;
    @GuardedBy("mLock")
    public int mPlayerState;
    @GuardedBy("mLock")
    public List<MediaItem> mPlaylist;
    @GuardedBy("mLock")
    public MediaMetadata mPlaylistMetadata;
    public List<MediaSessionCompat.QueueItem> mQueue;
    @GuardedBy("mLock")
    public int mRepeatMode;
    @GuardedBy("mLock")
    public int mShuffleMode;
    public final SessionToken mToken;
    public static final String TAG = "MC2ImplLegacy";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    public static final Bundle sDefaultRootExtras = new Bundle();
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public int mSkipToPlaylistIndex = -1;
    public final HandlerThread mHandlerThread = new HandlerThread("MediaController_Thread");
    public final Handler mHandler = new Handler(this.mHandlerThread.getLooper());

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$ConnectionCallback.class */
    public class ConnectionCallback extends MediaBrowserCompat.ConnectionCallback {
        public ConnectionCallback() {
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnected() {
            MediaBrowserCompat browserCompat = MediaControllerImplLegacy.this.getBrowserCompat();
            if (browserCompat != null) {
                MediaControllerImplLegacy.this.connectToSession(browserCompat.getSessionToken());
            } else if (MediaControllerImplLegacy.DEBUG) {
                new IllegalStateException();
            }
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionFailed() {
            MediaControllerImplLegacy.this.close();
        }

        @Override // android.support.p001v4.media.MediaBrowserCompat.ConnectionCallback
        public void onConnectionSuspended() {
            MediaControllerImplLegacy.this.close();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaControllerImplLegacy$ControllerCompatCallback.class */
    public final class ControllerCompatCallback extends MediaControllerCompat.Callback {
        public ControllerCompatCallback() {
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onAudioInfoChanged(final MediaControllerCompat.PlaybackInfo playbackInfo) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.14
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onPlaybackInfoChanged(MediaControllerImplLegacy.this.mInstance, MediaUtils.toPlaybackInfo2(playbackInfo));
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onCaptioningEnabledChanged(final boolean z) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.15
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean(MediaConstants.ARGUMENT_CAPTIONING_ENABLED, z);
                            controllerCallback.onCustomCommand(MediaControllerImplLegacy.this.mInstance, new SessionCommand(MediaControllerImplLegacy.SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED, null), bundle);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onExtrasChanged(final Bundle bundle) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.13
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onCustomCommand(MediaControllerImplLegacy.this.mInstance, new SessionCommand(MediaControllerImplLegacy.SESSION_COMMAND_ON_EXTRAS_CHANGED, null), bundle);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaItem mediaItem = MediaControllerImplLegacy.this.mCurrentMediaItem;
                    MediaControllerImplLegacy.this.setCurrentMediaItemLocked(mediaMetadataCompat);
                    final MediaItem mediaItem2 = MediaControllerImplLegacy.this.mCurrentMediaItem;
                    if (mediaItem != mediaItem2) {
                        MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.10
                            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                controllerCallback.onCurrentMediaItemChanged(MediaControllerImplLegacy.this.mInstance, mediaItem2);
                            }
                        });
                    }
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onPlaybackStateChanged(final PlaybackStateCompat playbackStateCompat) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaItem mediaItem = MediaControllerImplLegacy.this.mCurrentMediaItem;
                    PlaybackStateCompat playbackStateCompat2 = MediaControllerImplLegacy.this.mPlaybackStateCompat;
                    MediaControllerImplLegacy.this.mPlaybackStateCompat = playbackStateCompat;
                    MediaControllerImplLegacy.this.mPlayerState = MediaUtils.convertToPlayerState(playbackStateCompat);
                    MediaControllerImplLegacy.this.mBufferedPosition = playbackStateCompat == null ? Long.MIN_VALUE : playbackStateCompat.getBufferedPosition();
                    int i = 0;
                    if (!(MediaControllerImplLegacy.this.mQueue == null || playbackStateCompat == null)) {
                        for (int i2 = 0; i2 < MediaControllerImplLegacy.this.mQueue.size(); i2++) {
                            if (MediaControllerImplLegacy.this.mQueue.get(i2).getQueueId() == playbackStateCompat.getActiveQueueItemId()) {
                                MediaControllerImplLegacy.this.mCurrentMediaItemIndex = i2;
                                MediaControllerImplLegacy.this.mCurrentMediaItem = MediaControllerImplLegacy.this.mPlaylist.get(i2);
                            }
                        }
                    }
                    final MediaItem mediaItem2 = MediaControllerImplLegacy.this.mCurrentMediaItem;
                    List<MediaSession.CommandButton> list = MediaControllerImplLegacy.this.mCustomLayout;
                    MediaControllerImplLegacy.this.mCustomLayout = MediaUtils.convertToCustomLayout(playbackStateCompat);
                    final List<MediaSession.CommandButton> list2 = MediaControllerImplLegacy.this.mCustomLayout;
                    SessionCommandGroup sessionCommandGroup = MediaControllerImplLegacy.this.mAllowedCommands;
                    MediaControllerImplLegacy.this.mAllowedCommands = MediaUtils.convertToSessionCommandGroup(MediaControllerImplLegacy.this.mControllerCompat.getFlags(), MediaControllerImplLegacy.this.mPlaybackStateCompat);
                    final SessionCommandGroup sessionCommandGroup2 = MediaControllerImplLegacy.this.mAllowedCommands;
                    MediaController mediaController = MediaControllerImplLegacy.this.mInstance;
                    if (mediaController.mCallback != null) {
                        if (mediaItem != mediaItem2) {
                            mediaController.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.2
                                @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                    controllerCallback.onCurrentMediaItemChanged(MediaControllerImplLegacy.this.mInstance, mediaItem2);
                                }
                            });
                        }
                        if (playbackStateCompat != null) {
                            if (playbackStateCompat2 == null || playbackStateCompat2.getState() != playbackStateCompat.getState()) {
                                MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.4
                                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                        controllerCallback.onPlayerStateChanged(MediaControllerImplLegacy.this.mInstance, MediaUtils.convertToPlayerState(playbackStateCompat));
                                    }
                                });
                            }
                            if (playbackStateCompat2 == null || playbackStateCompat2.getPlaybackSpeed() != playbackStateCompat.getPlaybackSpeed()) {
                                MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.5
                                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                        controllerCallback.onPlaybackSpeedChanged(MediaControllerImplLegacy.this.mInstance, playbackStateCompat.getPlaybackSpeed());
                                    }
                                });
                            }
                            if (playbackStateCompat2 != null) {
                                final long currentPosition = playbackStateCompat.getCurrentPosition(MediaControllerImplLegacy.this.mInstance.mTimeDiff);
                                if (Math.abs(currentPosition - playbackStateCompat2.getCurrentPosition(MediaControllerImplLegacy.this.mInstance.mTimeDiff)) > 100) {
                                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.6
                                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                            controllerCallback.onSeekCompleted(MediaControllerImplLegacy.this.mInstance, currentPosition);
                                        }
                                    });
                                }
                            }
                            if (!sessionCommandGroup.equals(sessionCommandGroup2)) {
                                MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.7
                                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                        controllerCallback.onAllowedCommandsChanged(MediaControllerImplLegacy.this.mInstance, sessionCommandGroup2);
                                    }
                                });
                            }
                            boolean z = true;
                            if (list.size() == list2.size()) {
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= list2.size()) {
                                        z = false;
                                        break;
                                    } else if (!ObjectsCompat.equals(list.get(i3).getCommand(), list2.get(i3).getCommand())) {
                                        z = true;
                                        break;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            if (z) {
                                MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.8
                                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                        controllerCallback.onSetCustomLayout(MediaControllerImplLegacy.this.mInstance, list2);
                                    }
                                });
                            }
                            if (mediaItem2 != null) {
                                final int bufferingState = MediaUtils.toBufferingState(playbackStateCompat.getState());
                                if (playbackStateCompat2 != null) {
                                    i = MediaUtils.toBufferingState(playbackStateCompat2.getState());
                                }
                                if (bufferingState != i) {
                                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.9
                                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                            controllerCallback.onBufferingStateChanged(MediaControllerImplLegacy.this.mInstance, mediaItem2, bufferingState);
                                        }
                                    });
                                }
                            }
                        } else if (playbackStateCompat2 != null) {
                            MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.3
                                @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                                public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                    controllerCallback.onPlayerStateChanged(MediaControllerImplLegacy.this.mInstance, 0);
                                }
                            });
                        }
                    }
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mQueue = MediaUtils.removeNullElements(list);
                    if (!(MediaControllerImplLegacy.this.mQueue == null || MediaControllerImplLegacy.this.mQueue.size() == 0)) {
                        MediaControllerImplLegacy.this.mPlaylist = MediaUtils.convertQueueItemListToMediaItemList(MediaControllerImplLegacy.this.mQueue);
                        final List<MediaItem> list2 = MediaControllerImplLegacy.this.mPlaylist;
                        final MediaMetadata mediaMetadata = MediaControllerImplLegacy.this.mPlaylistMetadata;
                        MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.11
                            @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                            public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                                controllerCallback.onPlaylistChanged(MediaControllerImplLegacy.this.mInstance, list2, mediaMetadata);
                            }
                        });
                    }
                    MediaControllerImplLegacy.this.mQueue = null;
                    MediaControllerImplLegacy.this.mPlaylist = null;
                    final List list22 = MediaControllerImplLegacy.this.mPlaylist;
                    final MediaMetadata mediaMetadata2 = MediaControllerImplLegacy.this.mPlaylistMetadata;
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.11
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onPlaylistChanged(MediaControllerImplLegacy.this.mInstance, list22, mediaMetadata2);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mPlaylistMetadata = MediaUtils.convertToMediaMetadata(charSequence);
                    final MediaMetadata mediaMetadata = MediaControllerImplLegacy.this.mPlaylistMetadata;
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.12
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onPlaylistMetadataChanged(MediaControllerImplLegacy.this.mInstance, mediaMetadata);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onRepeatModeChanged(final int i) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mRepeatMode = i;
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.16
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onRepeatModeChanged(MediaControllerImplLegacy.this.mInstance, i);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onSessionDestroyed() {
            MediaControllerImplLegacy.this.close();
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onSessionEvent(final String str, final Bundle bundle) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.1
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onCustomCommand(MediaControllerImplLegacy.this.mInstance, new SessionCommand(str, null), bundle);
                        }
                    });
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onSessionReady() {
            MediaControllerImplLegacy.this.onConnectedNotLocked();
        }

        @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
        public void onShuffleModeChanged(final int i) {
            synchronized (MediaControllerImplLegacy.this.mLock) {
                if (!MediaControllerImplLegacy.this.mIsReleased) {
                    MediaControllerImplLegacy.this.mShuffleMode = i;
                    MediaControllerImplLegacy.this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.ControllerCompatCallback.17
                        @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                        public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                            controllerCallback.onShuffleModeChanged(MediaControllerImplLegacy.this.mInstance, i);
                        }
                    });
                }
            }
        }
    }

    static {
        sDefaultRootExtras.putBoolean(MediaConstants.ROOT_EXTRA_DEFAULT, true);
    }

    public MediaControllerImplLegacy(@NonNull Context context, @NonNull MediaController mediaController, @NonNull SessionToken sessionToken) {
        this.mContext = context;
        this.mInstance = mediaController;
        this.mHandlerThread.start();
        this.mToken = sessionToken;
        if (this.mToken.getType() == 0) {
            synchronized (this.mLock) {
                this.mBrowserCompat = null;
            }
            connectToSession((MediaSessionCompat.Token) this.mToken.getBinder());
            return;
        }
        connectToService();
    }

    private void connectToService() {
        this.mHandler.post(new Runnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.5
            @Override // java.lang.Runnable
            public void run() {
                synchronized (MediaControllerImplLegacy.this.mLock) {
                    MediaControllerImplLegacy.this.mBrowserCompat = new MediaBrowserCompat(MediaControllerImplLegacy.this.mContext, MediaControllerImplLegacy.this.mToken.getComponentName(), new ConnectionCallback(), MediaControllerImplLegacy.sDefaultRootExtras);
                    MediaControllerImplLegacy.this.mBrowserCompat.connect();
                }
            }
        });
    }

    private AbstractFutureC9382a<SessionResult> createFutureWithResult(int i) {
        MediaItem mediaItem;
        synchronized (this.mLock) {
            mediaItem = this.mCurrentMediaItem;
        }
        ResolvableFuture create = ResolvableFuture.create();
        create.set(new SessionResult(i, null, mediaItem));
        return create;
    }

    private void sendCommand(int i) {
        sendCommand(i, (Bundle) null);
    }

    private void sendCommand(int i, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putInt(MediaConstants.ARGUMENT_COMMAND_CODE, i);
        sendCommand(MediaConstants.CONTROLLER_COMMAND_BY_COMMAND_CODE, bundle2, null);
    }

    private void sendCommand(String str) {
        sendCommand(str, null, null);
    }

    private void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        MediaControllerCompat mediaControllerCompat;
        ControllerCompatCallback controllerCompatCallback;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        synchronized (this.mLock) {
            mediaControllerCompat = this.mControllerCompat;
            controllerCompatCallback = this.mControllerCompatCallback;
        }
        BundleCompat.putBinder(bundle2, MediaConstants.ARGUMENT_ICONTROLLER_CALLBACK, controllerCompatCallback.getIControllerCallback().asBinder());
        bundle2.putString(MediaConstants.ARGUMENT_PACKAGE_NAME, this.mContext.getPackageName());
        bundle2.putInt(MediaConstants.ARGUMENT_UID, Process.myUid());
        bundle2.putInt(MediaConstants.ARGUMENT_PID, Process.myPid());
        mediaControllerCompat.sendCommand(str, bundle2, resultReceiver);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> addPlaylistItem(int i, @NonNull String str) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.addQueueItem(MediaUtils.createMediaDescriptionCompat(str), i);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> adjustVolume(int i, int i2) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.adjustVolume(i, i2);
            return createFutureWithResult(0);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (DEBUG) {
            String str = "release from " + this.mToken;
        }
        synchronized (this.mLock) {
            if (!this.mIsReleased) {
                this.mHandler.removeCallbacksAndMessages(null);
                if (Build.VERSION.SDK_INT >= 18) {
                    this.mHandlerThread.quitSafely();
                } else {
                    this.mHandlerThread.quit();
                }
                this.mIsReleased = true;
                if (this.mBrowserCompat != null) {
                    this.mBrowserCompat.disconnect();
                    this.mBrowserCompat = null;
                }
                if (this.mControllerCompat != null) {
                    this.mControllerCompat.unregisterCallback(this.mControllerCompatCallback);
                    this.mControllerCompat = null;
                }
                this.mConnected = false;
                this.mInstance.notifyControllerCallback(new MediaController.ControllerCallbackRunnable() { // from class: androidx.media2.session.MediaControllerImplLegacy.1
                    @Override // androidx.media2.session.MediaController.ControllerCallbackRunnable
                    public void run(@NonNull MediaController.ControllerCallback controllerCallback) {
                        controllerCallback.onDisconnected(MediaControllerImplLegacy.this.mInstance);
                    }
                });
            }
        }
    }

    public void connectToSession(MediaSessionCompat.Token token) {
        MediaControllerCompat mediaControllerCompat;
        try {
            mediaControllerCompat = new MediaControllerCompat(this.mContext, token);
        } catch (RemoteException e) {
            e.printStackTrace();
            mediaControllerCompat = null;
        }
        synchronized (this.mLock) {
            this.mControllerCompat = mediaControllerCompat;
            this.mControllerCompatCallback = new ControllerCompatCallback();
            this.mControllerCompat.registerCallback(this.mControllerCompatCallback, this.mHandler);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public AbstractFutureC9382a<SessionResult> deselectTrack(@NonNull SessionPlayer.TrackInfo trackInfo) {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> fastForward() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().fastForward();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public SessionCommandGroup getAllowedCommands() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            return this.mAllowedCommands;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public MediaBrowserCompat getBrowserCompat() {
        MediaBrowserCompat mediaBrowserCompat;
        synchronized (this.mLock) {
            mediaBrowserCompat = this.mBrowserCompat;
        }
        return mediaBrowserCompat;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getBufferedPosition() {
        synchronized (this.mLock) {
            long j = Long.MIN_VALUE;
            if (!this.mConnected) {
                new IllegalStateException();
                return Long.MIN_VALUE;
            }
            if (this.mPlaybackStateCompat != null) {
                j = this.mPlaybackStateCompat.getBufferedPosition();
            }
            return j;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getBufferingState() {
        synchronized (this.mLock) {
            int i = 0;
            if (!this.mConnected) {
                new IllegalStateException();
                return 0;
            }
            if (this.mPlaybackStateCompat != null) {
                i = MediaUtils.toBufferingState(this.mPlaybackStateCompat.getState());
            }
            return i;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public SessionToken getConnectedToken() {
        SessionToken sessionToken;
        synchronized (this.mLock) {
            sessionToken = this.mConnected ? this.mToken : null;
        }
        return sessionToken;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public MediaItem getCurrentMediaItem() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            return this.mCurrentMediaItem;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getCurrentMediaItemIndex() {
        return this.mCurrentMediaItemIndex;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getCurrentPosition() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return Long.MIN_VALUE;
            } else if (this.mPlaybackStateCompat == null) {
                return Long.MIN_VALUE;
            } else {
                return this.mPlaybackStateCompat.getCurrentPosition(this.mInstance.mTimeDiff);
            }
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public long getDuration() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return Long.MIN_VALUE;
            } else if (this.mMediaMetadataCompat == null || !this.mMediaMetadataCompat.containsKey(MediaMetadata.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            } else {
                return this.mMediaMetadataCompat.getLong(MediaMetadata.METADATA_KEY_DURATION);
            }
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getNextMediaItemIndex() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public MediaController.PlaybackInfo getPlaybackInfo() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            return this.mPlaybackInfo;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public float getPlaybackSpeed() {
        synchronized (this.mLock) {
            float f = 0.0f;
            if (!this.mConnected) {
                new IllegalStateException();
                return 0.0f;
            }
            if (this.mPlaybackStateCompat != null) {
                f = this.mPlaybackStateCompat.getPlaybackSpeed();
            }
            return f;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getPlayerState() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return 3;
            }
            return this.mPlayerState;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public List<MediaItem> getPlaylist() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            List<MediaItem> list = null;
            if (this.mPlaylist != null) {
                list = this.mPlaylist.size() == 0 ? null : this.mPlaylist;
            }
            return list;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public MediaMetadata getPlaylistMetadata() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            return this.mPlaylistMetadata;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getPreviousMediaItemIndex() {
        return -1;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getRepeatMode() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return 0;
            }
            return this.mRepeatMode;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public SessionPlayer.TrackInfo getSelectedTrack(int i) {
        return null;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public PendingIntent getSessionActivity() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return null;
            }
            return this.mControllerCompat.getSessionActivity();
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public int getShuffleMode() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return 0;
            }
            return this.mShuffleMode;
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @Nullable
    public List<SessionPlayer.TrackInfo> getTrackInfo() {
        return null;
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public VideoSize getVideoSize() {
        return new VideoSize(0, 0);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mConnected;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onConnectedNotLocked() {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.MediaControllerImplLegacy.onConnectedNotLocked():void");
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> pause() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().pause();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> play() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().play();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromMediaId(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().playFromMediaId(str, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromSearch(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().playFromSearch(str, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> playFromUri(@NonNull Uri uri, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().playFromUri(uri, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepare() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().prepare();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromMediaId(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().prepareFromMediaId(str, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromSearch(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().prepareFromSearch(str, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> prepareFromUri(@NonNull Uri uri, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().prepareFromUri(uri, bundle);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> removePlaylistItem(@NonNull int i) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            if (this.mQueue != null && i >= 0 && i < this.mQueue.size()) {
                this.mControllerCompat.removeQueueItem(this.mQueue.get(i).getDescription());
                return createFutureWithResult(0);
            }
            return createFutureWithResult(-3);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> replacePlaylistItem(int i, @NonNull String str) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            if (this.mPlaylist != null && i >= 0 && this.mPlaylist.size() > i) {
                removePlaylistItem(i);
                addPlaylistItem(i, str);
                return createFutureWithResult(0);
            }
            return createFutureWithResult(-100);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> rewind() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().rewind();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> seekTo(long j) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().seekTo(j);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    @NonNull
    public AbstractFutureC9382a<SessionResult> selectTrack(@NonNull SessionPlayer.TrackInfo trackInfo) {
        return createFutureWithResult(-6);
    }

    public void sendCommand(String str, ResultReceiver resultReceiver) {
        sendCommand(str, null, resultReceiver);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> sendCustomCommand(@NonNull SessionCommand sessionCommand, @Nullable Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            } else if (this.mAllowedCommands.hasCommand(sessionCommand)) {
                this.mControllerCompat.getTransportControls().sendCustomAction(sessionCommand.getCustomAction(), bundle);
                return createFutureWithResult(0);
            } else {
                final ResolvableFuture create = ResolvableFuture.create();
                this.mControllerCompat.sendCommand(sessionCommand.getCustomAction(), bundle, new ResultReceiver(this.mHandler) { // from class: androidx.media2.session.MediaControllerImplLegacy.2
                    @Override // android.os.ResultReceiver
                    public void onReceiveResult(int i, Bundle bundle2) {
                        create.set(new SessionResult(i, bundle2));
                    }
                });
                return create;
            }
        }
    }

    public void setCurrentMediaItemLocked(MediaMetadataCompat mediaMetadataCompat) {
        this.mMediaMetadataCompat = mediaMetadataCompat;
        if (mediaMetadataCompat == null) {
            this.mCurrentMediaItemIndex = -1;
            this.mCurrentMediaItem = null;
        } else if (this.mQueue == null) {
            this.mCurrentMediaItemIndex = -1;
            this.mCurrentMediaItem = MediaUtils.convertToMediaItem(mediaMetadataCompat);
        } else {
            PlaybackStateCompat playbackStateCompat = this.mPlaybackStateCompat;
            if (playbackStateCompat != null) {
                long activeQueueItemId = playbackStateCompat.getActiveQueueItemId();
                for (int i = 0; i < this.mQueue.size(); i++) {
                    if (this.mQueue.get(i).getQueueId() == activeQueueItemId) {
                        this.mCurrentMediaItem = MediaUtils.convertToMediaItem(mediaMetadataCompat);
                        this.mCurrentMediaItemIndex = i;
                        return;
                    }
                }
            }
            String string = mediaMetadataCompat.getString(MediaMetadata.METADATA_KEY_MEDIA_ID);
            if (string == null) {
                this.mCurrentMediaItemIndex = -1;
                this.mCurrentMediaItem = MediaUtils.convertToMediaItem(mediaMetadataCompat);
                return;
            }
            int i2 = this.mSkipToPlaylistIndex;
            int i3 = 0;
            if (i2 >= 0) {
                i3 = 0;
                if (i2 < this.mQueue.size()) {
                    i3 = 0;
                    if (TextUtils.equals(string, this.mQueue.get(this.mSkipToPlaylistIndex).getDescription().getMediaId())) {
                        this.mCurrentMediaItem = MediaUtils.convertToMediaItem(mediaMetadataCompat);
                        this.mCurrentMediaItemIndex = this.mSkipToPlaylistIndex;
                        this.mSkipToPlaylistIndex = -1;
                        return;
                    }
                }
            }
            while (i3 < this.mQueue.size()) {
                if (TextUtils.equals(string, this.mQueue.get(i3).getDescription().getMediaId())) {
                    this.mCurrentMediaItemIndex = i3;
                    this.mCurrentMediaItem = MediaUtils.convertToMediaItem(mediaMetadataCompat);
                    return;
                }
                i3++;
            }
            this.mCurrentMediaItemIndex = -1;
            this.mCurrentMediaItem = MediaUtils.convertToMediaItem(this.mMediaMetadataCompat);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setMediaItem(String str) {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setPlaybackSpeed(float f) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().setPlaybackSpeed(f);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setPlaylist(@NonNull List<String> list, @Nullable MediaMetadata mediaMetadata) {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setRating(@NonNull String str, @NonNull Rating rating) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            if (this.mCurrentMediaItem != null && str.equals(this.mCurrentMediaItem.getMediaId())) {
                this.mControllerCompat.getTransportControls().setRating(MediaUtils.convertToRatingCompat(rating));
            }
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setRepeatMode(int i) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().setRepeatMode(i);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setShuffleMode(int i) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().setShuffleMode(i);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setSurface(@Nullable Surface surface) {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> setVolumeTo(int i, int i2) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.setVolumeTo(i, i2);
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipBackward() {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipForward() {
        return createFutureWithResult(-6);
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToNextItem() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().skipToNext();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToPlaylistItem(@NonNull int i) {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mSkipToPlaylistIndex = i;
            this.mControllerCompat.getTransportControls().skipToQueueItem(this.mQueue.get(i).getQueueId());
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> skipToPreviousItem() {
        synchronized (this.mLock) {
            if (!this.mConnected) {
                new IllegalStateException();
                return createFutureWithResult(-100);
            }
            this.mControllerCompat.getTransportControls().skipToPrevious();
            return createFutureWithResult(0);
        }
    }

    @Override // androidx.media2.session.MediaController.MediaControllerImpl
    public AbstractFutureC9382a<SessionResult> updatePlaylistMetadata(@Nullable MediaMetadata mediaMetadata) {
        return createFutureWithResult(-6);
    }
}
