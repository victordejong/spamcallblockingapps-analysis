package androidx.media2.player;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.MediaFormat;
import android.os.PersistableBundle;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.util.Pair;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.PlaybackParams;
import androidx.media2.player.futures.AbstractResolvableFuture;
import androidx.media2.player.futures.ResolvableFuture;
import gogolook.callgogolook2.gson.UserProfile;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer.class */
public final class MediaPlayer extends SessionPlayer {
    public static final int CALL_COMPLETE_PLAYLIST_BASE = -1000;
    public static final int END_OF_PLAYLIST = -1;
    public static final int MEDIA_INFO_AUDIO_NOT_PLAYING = 804;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_BUFFERING_UPDATE = 704;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_MEDIA_ITEM_END = 5;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_MEDIA_ITEM_LIST_END = 6;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_MEDIA_ITEM_REPEAT = 7;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_MEDIA_ITEM_START = 2;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_NETWORK_BANDWIDTH = 703;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_PREPARED = 100;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_NOT_PLAYING = 805;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    public static final int NO_MEDIA_ITEM = -2;
    public static final int NO_TRACK_SELECTED = Integer.MIN_VALUE;
    public static final int PLAYER_ERROR_IO = -1004;
    public static final int PLAYER_ERROR_MALFORMED = -1007;
    public static final int PLAYER_ERROR_TIMED_OUT = -110;
    public static final int PLAYER_ERROR_UNKNOWN = 1;
    public static final int PLAYER_ERROR_UNSUPPORTED = -1010;
    public static final int SEEK_CLOSEST = 3;
    public static final int SEEK_CLOSEST_SYNC = 2;
    public static final int SEEK_NEXT_SYNC = 1;
    public static final int SEEK_PREVIOUS_SYNC = 0;
    public static final String TAG = "MediaPlayer";
    public final AudioFocusHandler mAudioFocusHandler;
    @GuardedBy("mStateLock")
    public boolean mClosed;
    @GuardedBy("mPlaylistLock")
    public MediaItem mCurPlaylistItem;
    @GuardedBy("mPlaylistLock")
    public int mCurrentShuffleIdx;
    public ExecutorService mExecutor;
    @GuardedBy("mPlaylistLock")
    public MediaItem mNextPlaylistItem;
    public MediaPlayer2 mPlayer;
    @GuardedBy("mPlaylistLock")
    public MediaMetadata mPlaylistMetadata;
    @GuardedBy("mPlaylistLock")
    public int mRepeatMode;
    @GuardedBy("mPlaylistLock")
    public boolean mSetMediaItemCalled;
    @GuardedBy("mPlaylistLock")
    public int mShuffleMode;
    @GuardedBy("mStateLock")
    public int mState;
    public static final PlaybackParams DEFAULT_PLAYBACK_PARAMS = new PlaybackParams.Builder().setSpeed(1.0f).setPitch(1.0f).setAudioFallbackMode(0).build();
    public static ArrayMap<Integer, Integer> sResultCodeMap = new ArrayMap<>();
    public static ArrayMap<Integer, Integer> sErrorCodeMap = new ArrayMap<>();
    public static ArrayMap<Integer, Integer> sInfoCodeMap = new ArrayMap<>();
    public static ArrayMap<Integer, Integer> sSeekModeMap = new ArrayMap<>();
    public static ArrayMap<Integer, Integer> sPrepareDrmStatusMap = new ArrayMap<>();
    @GuardedBy("mPendingCommands")
    public final ArrayDeque<PendingCommand> mPendingCommands = new ArrayDeque<>();
    @GuardedBy("mPendingFutures")
    public final ArrayDeque<PendingFuture<? super SessionPlayer.PlayerResult>> mPendingFutures = new ArrayDeque<>();
    public final Object mStateLock = new Object();
    @GuardedBy("mStateLock")
    public Map<MediaItem, Integer> mMediaItemToBuffState = new HashMap();
    public final Object mPlaylistLock = new Object();
    @GuardedBy("mPlaylistLock")
    public MediaItemList mPlaylist = new MediaItemList();
    @GuardedBy("mPlaylistLock")
    public ArrayList<MediaItem> mShuffledList = new ArrayList<>();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$DrmInfo.class */
    public static final class DrmInfo {
        public final MediaPlayer2.DrmInfo mMp2DrmInfo;

        public DrmInfo(MediaPlayer2.DrmInfo drmInfo) {
            this.mMp2DrmInfo = drmInfo;
        }

        @NonNull
        public Map<UUID, byte[]> getPssh() {
            return this.mMp2DrmInfo.getPssh();
        }

        @NonNull
        public List<UUID> getSupportedSchemes() {
            return this.mMp2DrmInfo.getSupportedSchemes();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$DrmResult.class */
    public static class DrmResult extends SessionPlayer.PlayerResult {
        public static final int RESULT_ERROR_PREPARATION_ERROR = -1003;
        public static final int RESULT_ERROR_PROVISIONING_NETWORK_ERROR = -1001;
        public static final int RESULT_ERROR_PROVISIONING_SERVER_ERROR = -1002;
        public static final int RESULT_ERROR_RESOURCE_BUSY = -1005;
        public static final int RESULT_ERROR_UNSUPPORTED_SCHEME = -1004;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$DrmResult$DrmResultCode.class */
        public @interface DrmResultCode {
        }

        public DrmResult(int i, @NonNull MediaItem mediaItem) {
            super(i, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerResult, androidx.media2.common.BaseResult
        public int getResultCode() {
            return super.getResultCode();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$MediaError.class */
    public @interface MediaError {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$MediaInfo.class */
    public @interface MediaInfo {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$MediaItemList.class */
    public static class MediaItemList {
        public ArrayList<MediaItem> mList = new ArrayList<>();

        public void add(int i, MediaItem mediaItem) {
            if (mediaItem instanceof FileMediaItem) {
                ((FileMediaItem) mediaItem).increaseRefCount();
            }
            this.mList.add(i, mediaItem);
        }

        public void clear() {
            Iterator<MediaItem> it = this.mList.iterator();
            while (it.hasNext()) {
                MediaItem next = it.next();
                if (next instanceof FileMediaItem) {
                    ((FileMediaItem) next).decreaseRefCount();
                }
            }
            this.mList.clear();
        }

        public boolean contains(Object obj) {
            return this.mList.contains(obj);
        }

        public MediaItem get(int i) {
            return this.mList.get(i);
        }

        public Collection<MediaItem> getCollection() {
            return this.mList;
        }

        public int indexOf(Object obj) {
            return this.mList.indexOf(obj);
        }

        public boolean isEmpty() {
            return this.mList.isEmpty();
        }

        public MediaItem remove(int i) {
            MediaItem remove = this.mList.remove(i);
            if (remove instanceof FileMediaItem) {
                ((FileMediaItem) remove).decreaseRefCount();
            }
            return remove;
        }

        public boolean replaceAll(Collection<MediaItem> collection) {
            for (MediaItem mediaItem : collection) {
                if (mediaItem instanceof FileMediaItem) {
                    ((FileMediaItem) mediaItem).increaseRefCount();
                }
            }
            clear();
            return this.mList.addAll(collection);
        }

        public MediaItem set(int i, MediaItem mediaItem) {
            if (mediaItem instanceof FileMediaItem) {
                ((FileMediaItem) mediaItem).increaseRefCount();
            }
            MediaItem mediaItem2 = this.mList.set(i, mediaItem);
            if (mediaItem2 instanceof FileMediaItem) {
                ((FileMediaItem) mediaItem2).decreaseRefCount();
            }
            return mediaItem2;
        }

        public int size() {
            return this.mList.size();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$MediaPlayerCallbackNotifier.class */
    public interface MediaPlayerCallbackNotifier {
        void callCallback(PlayerCallback playerCallback);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$MetricsConstants.class */
    public static final class MetricsConstants {
        public static final String CODEC_AUDIO = "android.media.mediaplayer.audio.codec";
        public static final String CODEC_VIDEO = "android.media.mediaplayer.video.codec";
        public static final String DURATION = "android.media.mediaplayer.durationMs";
        public static final String ERRORS = "android.media.mediaplayer.err";
        public static final String ERROR_CODE = "android.media.mediaplayer.errcode";
        public static final String FRAMES = "android.media.mediaplayer.frames";
        public static final String FRAMES_DROPPED = "android.media.mediaplayer.dropped";
        public static final String HEIGHT = "android.media.mediaplayer.height";
        public static final String MIME_TYPE_AUDIO = "android.media.mediaplayer.audio.mime";
        public static final String MIME_TYPE_VIDEO = "android.media.mediaplayer.video.mime";
        public static final String PLAYING = "android.media.mediaplayer.playingMs";
        public static final String WIDTH = "android.media.mediaplayer.width";
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$Mp2Callback.class */
    public class Mp2Callback extends MediaPlayer2.EventCallback {
        public Mp2Callback() {
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onCallCompleted(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
            MediaPlayer.this.handleCallComplete(mediaPlayer2, mediaItem, i, i2);
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onCommandLabelReached(MediaPlayer2 mediaPlayer2, Object obj) {
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onError(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, final int i, final int i2) {
            MediaPlayer.this.setState(3);
            MediaPlayer.this.setBufferingState(mediaItem, 0);
            MediaPlayer.this.notifyMediaPlayerCallback(new MediaPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.3
                @Override // androidx.media2.player.MediaPlayer.MediaPlayerCallbackNotifier
                public void callCallback(PlayerCallback playerCallback) {
                    playerCallback.onError(MediaPlayer.this, mediaItem, i, i2);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onInfo(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, int i, final int i2) {
            final MediaItem mediaItem2;
            MediaItem mediaItem3;
            boolean z = true;
            if (i == 2) {
                synchronized (MediaPlayer.this.mPlaylistLock) {
                    if (MediaPlayer.this.mCurPlaylistItem == mediaItem) {
                        z = false;
                        mediaItem2 = null;
                    } else {
                        MediaPlayer.this.mCurrentShuffleIdx = MediaPlayer.this.mShuffledList.indexOf(mediaItem);
                        MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                        mediaItem2 = MediaPlayer.this.mNextPlaylistItem;
                    }
                }
                if (z) {
                    MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.5
                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                            playerCallback.onCurrentMediaItemChanged(MediaPlayer.this, mediaItem);
                        }
                    });
                    if (mediaItem2 != null) {
                        MediaPlayer.this.addPendingFuture(new PendingFuture<SessionPlayer.PlayerResult>(MediaPlayer.this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.6
                            @Override // androidx.media2.player.MediaPlayer.PendingFuture
                            public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(MediaPlayer.this.setNextMediaItemInternal(mediaItem2));
                                return arrayList;
                            }
                        });
                    }
                }
            } else if (i == 6) {
                synchronized (MediaPlayer.this.mPlaylistLock) {
                    MediaPlayer.this.mCurrentShuffleIdx = MediaPlayer.this.mShuffledList.indexOf(mediaItem);
                    mediaItem3 = MediaPlayer.this.mNextPlaylistItem;
                }
                if (mediaItem3 == null) {
                    MediaPlayer.this.setState(1);
                    MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.7
                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                            playerCallback.onPlaybackCompleted(MediaPlayer.this);
                        }
                    });
                } else if (MediaPlayer.this.skipToNextPlaylistItem() == null) {
                    Log.e(MediaPlayer.TAG, "Cannot play next media item", new IllegalStateException());
                    MediaPlayer.this.setState(3);
                }
            } else if (i == 100) {
                MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.4
                    @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                    public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                        MediaPlayer mediaPlayer = MediaPlayer.this;
                        playerCallback.onTrackInfoChanged(mediaPlayer, mediaPlayer.getTrackInfoInternal());
                    }
                });
                MediaPlayer.this.setBufferingState(mediaItem, 1);
            } else if (i != 704) {
                if (i == 802) {
                    MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.8
                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                            MediaPlayer mediaPlayer = MediaPlayer.this;
                            playerCallback.onTrackInfoChanged(mediaPlayer, mediaPlayer.getTrackInfoInternal());
                        }
                    });
                } else if (i == 701) {
                    MediaPlayer.this.setBufferingState(mediaItem, 2);
                } else if (i == 702) {
                    MediaPlayer.this.setBufferingState(mediaItem, 1);
                }
            } else if (i2 >= 100) {
                MediaPlayer.this.setBufferingState(mediaItem, 3);
            }
            if (MediaPlayer.sInfoCodeMap.containsKey(Integer.valueOf(i))) {
                final int intValue = MediaPlayer.sInfoCodeMap.get(Integer.valueOf(i)).intValue();
                MediaPlayer.this.notifyMediaPlayerCallback(new MediaPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.9
                    @Override // androidx.media2.player.MediaPlayer.MediaPlayerCallbackNotifier
                    public void callCallback(PlayerCallback playerCallback) {
                        playerCallback.onInfo(MediaPlayer.this, mediaItem, intValue, i2);
                    }
                });
            }
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onMediaTimeDiscontinuity(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, final MediaTimestamp mediaTimestamp) {
            MediaPlayer.this.notifyMediaPlayerCallback(new MediaPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.10
                @Override // androidx.media2.player.MediaPlayer.MediaPlayerCallbackNotifier
                public void callCallback(PlayerCallback playerCallback) {
                    playerCallback.onMediaTimeDiscontinuity(MediaPlayer.this, mediaItem, mediaTimestamp);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onSubtitleData(@NonNull MediaPlayer2 mediaPlayer2, @NonNull final MediaItem mediaItem, final int i, @NonNull final SubtitleData subtitleData) {
            MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.11
                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    playerCallback.onSubtitleData(MediaPlayer.this, mediaItem, mediaPlayer.createTrackInfoInternal(mediaPlayer.getTrackInfo(i)), subtitleData);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onTimedMetaDataAvailable(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, final TimedMetaData timedMetaData) {
            MediaPlayer.this.notifyMediaPlayerCallback(new MediaPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.2
                @Override // androidx.media2.player.MediaPlayer.MediaPlayerCallbackNotifier
                public void callCallback(PlayerCallback playerCallback) {
                    playerCallback.onTimedMetaDataAvailable(MediaPlayer.this, mediaItem, timedMetaData);
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.EventCallback
        public void onVideoSizeChanged(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, int i, int i2) {
            final VideoSize videoSize = new VideoSize(i, i2);
            MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2Callback.1
                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                    playerCallback.onVideoSizeChangedInternal(MediaPlayer.this, mediaItem, videoSize);
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$Mp2DrmCallback.class */
    public class Mp2DrmCallback extends MediaPlayer2.DrmEventCallback {
        public Mp2DrmCallback() {
        }

        @Override // androidx.media2.player.MediaPlayer2.DrmEventCallback
        public void onDrmInfo(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, final MediaPlayer2.DrmInfo drmInfo) {
            MediaPlayer.this.notifyMediaPlayerCallback(new MediaPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.Mp2DrmCallback.1
                @Override // androidx.media2.player.MediaPlayer.MediaPlayerCallbackNotifier
                public void callCallback(PlayerCallback playerCallback) {
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    MediaItem mediaItem2 = mediaItem;
                    MediaPlayer2.DrmInfo drmInfo2 = drmInfo;
                    playerCallback.onDrmInfo(mediaPlayer, mediaItem2, drmInfo2 == null ? null : new DrmInfo(drmInfo2));
                }
            });
        }

        @Override // androidx.media2.player.MediaPlayer2.DrmEventCallback
        public void onDrmPrepared(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i) {
            MediaPlayer.this.handleCallComplete(mediaPlayer2, mediaItem, 1001, i);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(@Nullable String str) {
            super(str);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$OnDrmConfigHelper.class */
    public interface OnDrmConfigHelper {
        void onDrmConfig(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$PendingCommand.class */
    public static final class PendingCommand {
        public final int mCallType;
        public final ResolvableFuture mFuture;
        public final TrackInfo mTrackInfo;

        public PendingCommand(int i, ResolvableFuture resolvableFuture) {
            this(i, resolvableFuture, null);
        }

        public PendingCommand(int i, ResolvableFuture resolvableFuture, TrackInfo trackInfo) {
            this.mCallType = i;
            this.mFuture = resolvableFuture;
            this.mTrackInfo = trackInfo;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$PendingFuture.class */
    public static abstract class PendingFuture<V extends SessionPlayer.PlayerResult> extends AbstractResolvableFuture<V> {
        public boolean mExecuteCalled;
        public List<ResolvableFuture<V>> mFutures;
        public final boolean mIsSeekTo;

        public PendingFuture(Executor executor) {
            this(executor, false);
        }

        public PendingFuture(Executor executor, boolean z) {
            this.mExecuteCalled = false;
            this.mIsSeekTo = z;
            addListener(new Runnable() { // from class: androidx.media2.player.MediaPlayer.PendingFuture.1
                @Override // java.lang.Runnable
                public void run() {
                    if (PendingFuture.this.isCancelled()) {
                        PendingFuture pendingFuture = PendingFuture.this;
                        if (pendingFuture.mExecuteCalled) {
                            pendingFuture.cancelFutures();
                        }
                    }
                }
            }, executor);
        }

        private void setResultIfFinished() {
            V v = null;
            for (int i = 0; i < this.mFutures.size(); i++) {
                ResolvableFuture<V> resolvableFuture = this.mFutures.get(i);
                if (resolvableFuture.isDone() || resolvableFuture.isCancelled()) {
                    try {
                        v = resolvableFuture.get();
                        int resultCode = v.getResultCode();
                        if (resultCode != 0 && resultCode != 1) {
                            cancelFutures();
                            set((PendingFuture<V>) v);
                            return;
                        }
                    } catch (Exception e) {
                        cancelFutures();
                        setException(e);
                        return;
                    }
                } else {
                    return;
                }
            }
            try {
                set((PendingFuture<V>) v);
            } catch (Exception e2) {
                setException(e2);
            }
        }

        public void cancelFutures() {
            for (ResolvableFuture<V> resolvableFuture : this.mFutures) {
                if (!resolvableFuture.isCancelled() && !resolvableFuture.isDone()) {
                    resolvableFuture.cancel(true);
                }
            }
        }

        public boolean execute() {
            if (!this.mExecuteCalled && !isCancelled()) {
                this.mExecuteCalled = true;
                this.mFutures = onExecute();
            }
            if (!isCancelled() && !isDone()) {
                setResultIfFinished();
            }
            boolean z = true;
            if (!isCancelled()) {
                z = isDone();
            }
            return z;
        }

        public abstract List<ResolvableFuture<V>> onExecute();

        public boolean set(@Nullable V v) {
            return super.set((PendingFuture<V>) v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media2.player.futures.AbstractResolvableFuture
        public /* bridge */ /* synthetic */ boolean set(@Nullable Object obj) {
            return set((PendingFuture<V>) ((SessionPlayer.PlayerResult) obj));
        }

        @Override // androidx.media2.player.futures.AbstractResolvableFuture
        public boolean setException(Throwable th) {
            return super.setException(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$PlayerCallback.class */
    public static abstract class PlayerCallback extends SessionPlayer.PlayerCallback {
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void onDrmInfo(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, @NonNull DrmInfo drmInfo) {
        }

        public void onError(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, @NonNull MediaTimestamp mediaTimestamp) {
        }

        public void onTimedMetaDataAvailable(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, @NonNull TimedMetaData timedMetaData) {
        }

        public void onVideoSizeChanged(@NonNull MediaPlayer mediaPlayer, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }

        @Override // androidx.media2.common.SessionPlayer.PlayerCallback
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onVideoSizeChangedInternal(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
            if (sessionPlayer instanceof MediaPlayer) {
                onVideoSizeChanged((MediaPlayer) sessionPlayer, mediaItem, new VideoSize(videoSize));
                return;
            }
            throw new IllegalArgumentException("player must be MediaPlayer");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$SeekMode.class */
    public @interface SeekMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier.class */
    public interface SessionPlayerCallbackNotifier {
        void callCallback(SessionPlayer.PlayerCallback playerCallback);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$TrackInfo.class */
    public static final class TrackInfo {
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;
        public final MediaFormat mFormat;
        public final int mId;
        public final MediaItem mItem;
        public final int mTrackType;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer$TrackInfo$MediaTrackType.class */
        public @interface MediaTrackType {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public TrackInfo(int i, MediaItem mediaItem, int i2, MediaFormat mediaFormat) {
            this.mId = i;
            this.mItem = mediaItem;
            this.mTrackType = i2;
            this.mFormat = mediaFormat;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackInfo.class != obj.getClass()) {
                return false;
            }
            TrackInfo trackInfo = (TrackInfo) obj;
            if (this.mId != trackInfo.mId) {
                return false;
            }
            if (this.mItem == null && trackInfo.mItem == null) {
                return true;
            }
            MediaItem mediaItem = this.mItem;
            if (mediaItem == null || trackInfo.mItem == null) {
                return false;
            }
            String mediaId = mediaItem.getMediaId();
            return mediaId != null ? mediaId.equals(trackInfo.mItem.getMediaId()) : this.mItem.equals(trackInfo.mItem);
        }

        @Nullable
        public MediaFormat getFormat() {
            if (this.mTrackType == 4) {
                return this.mFormat;
            }
            return null;
        }

        public int getId() {
            return this.mId;
        }

        @NonNull
        public Locale getLanguage() {
            MediaFormat mediaFormat = this.mFormat;
            String string = mediaFormat != null ? mediaFormat.getString("language") : null;
            String str = string;
            if (string == null) {
                str = "und";
            }
            return new Locale(str);
        }

        public MediaItem getMediaItem() {
            return this.mItem;
        }

        public int getTrackType() {
            return this.mTrackType;
        }

        public int hashCode() {
            int i = this.mId;
            MediaItem mediaItem = this.mItem;
            return ((i + 31) * 31) + (mediaItem != null ? mediaItem.getMediaId() != null ? this.mItem.getMediaId().hashCode() : this.mItem.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(TrackInfo.class.getName());
            sb.append('#');
            sb.append(this.mId);
            sb.append('{');
            int i = this.mTrackType;
            if (i == 1) {
                sb.append("VIDEO");
            } else if (i == 2) {
                sb.append(HlsPlaylistParser.TYPE_AUDIO);
            } else if (i != 4) {
                sb.append("UNKNOWN");
            } else {
                sb.append("SUBTITLE");
            }
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(this.mFormat);
            sb.append(CssParser.BLOCK_END);
            return sb.toString();
        }
    }

    static {
        sResultCodeMap.put(0, 0);
        sResultCodeMap.put(Integer.MIN_VALUE, -1);
        sResultCodeMap.put(1, -2);
        sResultCodeMap.put(2, -3);
        sResultCodeMap.put(3, -4);
        sResultCodeMap.put(4, -5);
        sResultCodeMap.put(5, 1);
        sErrorCodeMap.put(1, 1);
        sErrorCodeMap.put(-1004, -1004);
        sErrorCodeMap.put(-1007, -1007);
        sErrorCodeMap.put(-1010, -1010);
        sErrorCodeMap.put(-110, -110);
        sInfoCodeMap.put(3, 3);
        sInfoCodeMap.put(700, 700);
        sInfoCodeMap.put(704, 704);
        sInfoCodeMap.put(800, 800);
        sInfoCodeMap.put(801, 801);
        sInfoCodeMap.put(802, 802);
        sInfoCodeMap.put(804, 804);
        sInfoCodeMap.put(805, 805);
        sSeekModeMap.put(0, 0);
        sSeekModeMap.put(1, 1);
        sSeekModeMap.put(2, 2);
        sSeekModeMap.put(3, 3);
        sPrepareDrmStatusMap.put(0, 0);
        sPrepareDrmStatusMap.put(1, Integer.valueOf((int) DrmResult.RESULT_ERROR_PROVISIONING_NETWORK_ERROR));
        sPrepareDrmStatusMap.put(2, Integer.valueOf((int) DrmResult.RESULT_ERROR_PREPARATION_ERROR));
        sPrepareDrmStatusMap.put(3, Integer.valueOf((int) DrmResult.RESULT_ERROR_PREPARATION_ERROR));
        sPrepareDrmStatusMap.put(4, -1004);
        sPrepareDrmStatusMap.put(5, Integer.valueOf((int) DrmResult.RESULT_ERROR_RESOURCE_BUSY));
    }

    public MediaPlayer(@NonNull Context context) {
        if (context != null) {
            this.mState = 0;
            this.mPlayer = MediaPlayer2.create(context);
            this.mExecutor = Executors.newFixedThreadPool(1);
            this.mPlayer.setEventCallback(this.mExecutor, new Mp2Callback());
            this.mPlayer.setDrmEventCallback(this.mExecutor, new Mp2DrmCallback());
            this.mCurrentShuffleIdx = -2;
            this.mAudioFocusHandler = new AudioFocusHandler(context, this);
            return;
        }
        throw new NullPointerException("context shouldn't be null");
    }

    public static int clamp(int i, int i2) {
        if (i < 0) {
            return 0;
        }
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }

    private TrackInfo createTrackInfo(SessionPlayer.TrackInfo trackInfo) {
        if (trackInfo == null) {
            return null;
        }
        return new TrackInfo(trackInfo.getId(), trackInfo.getMediaItem(), trackInfo.getTrackType(), trackInfo.getFormat());
    }

    private void executePendingFutures() {
        synchronized (this.mPendingFutures) {
            Iterator<PendingFuture<? super SessionPlayer.PlayerResult>> it = this.mPendingFutures.iterator();
            while (it.hasNext()) {
                PendingFuture<? super SessionPlayer.PlayerResult> next = it.next();
                if (!next.isCancelled() && !next.execute()) {
                    break;
                }
                this.mPendingFutures.removeFirst();
            }
            while (it.hasNext()) {
                PendingFuture<? super SessionPlayer.PlayerResult> next2 = it.next();
                if (!next2.mIsSeekTo) {
                    break;
                }
                next2.execute();
            }
        }
    }

    private ResolvableFuture<SessionPlayer.PlayerResult> setMediaItemInternal(MediaItem mediaItem) {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        synchronized (this.mPendingCommands) {
            addPendingCommandLocked(19, create, this.mPlayer.setMediaItem(mediaItem));
        }
        synchronized (this.mPlaylistLock) {
            this.mSetMediaItemCalled = true;
        }
        return create;
    }

    @GuardedBy("mPendingCommands")
    public void addFutureListener(final PendingCommand pendingCommand, final ResolvableFuture resolvableFuture, final Object obj) {
        resolvableFuture.addListener(new Runnable() { // from class: androidx.media2.player.MediaPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                if (resolvableFuture.isCancelled()) {
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        if (MediaPlayer.this.mPlayer.cancel(obj)) {
                            MediaPlayer.this.mPendingCommands.remove(pendingCommand);
                        }
                    }
                }
            }
        }, this.mExecutor);
    }

    @GuardedBy("mPendingCommands")
    public void addPendingCommandLocked(int i, ResolvableFuture resolvableFuture, Object obj) {
        PendingCommand pendingCommand = new PendingCommand(i, resolvableFuture);
        this.mPendingCommands.add(pendingCommand);
        addFutureListener(pendingCommand, resolvableFuture, obj);
    }

    @GuardedBy("mPendingCommands")
    public void addPendingCommandWithTrackInfoLocked(int i, ResolvableFuture resolvableFuture, TrackInfo trackInfo, Object obj) {
        PendingCommand pendingCommand = new PendingCommand(i, resolvableFuture, trackInfo);
        this.mPendingCommands.add(pendingCommand);
        addFutureListener(pendingCommand, resolvableFuture, obj);
    }

    public void addPendingFuture(PendingFuture pendingFuture) {
        synchronized (this.mPendingFutures) {
            this.mPendingFutures.add(pendingFuture);
            executePendingFutures();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> addPlaylistItem(final int i, @NonNull final MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new NullPointerException("item shouldn't be null");
        } else if ((mediaItem instanceof FileMediaItem) && ((FileMediaItem) mediaItem).isClosed()) {
            throw new IllegalArgumentException("File descriptor is closed. " + mediaItem);
        } else if (i >= 0) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.10
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            if (MediaPlayer.this.mPlaylist.contains(mediaItem)) {
                                return MediaPlayer.this.createFuturesForResultCode(-3, mediaItem);
                            }
                            int clamp = MediaPlayer.clamp(i, MediaPlayer.this.mPlaylist.size());
                            MediaPlayer.this.mPlaylist.add(clamp, mediaItem);
                            if (MediaPlayer.this.mShuffleMode == 0) {
                                MediaPlayer.this.mShuffledList.add(clamp, mediaItem);
                            } else {
                                clamp = (int) (Math.random() * (MediaPlayer.this.mShuffledList.size() + 1));
                                MediaPlayer.this.mShuffledList.add(clamp, mediaItem);
                            }
                            if (clamp <= MediaPlayer.this.mCurrentShuffleIdx) {
                                MediaPlayer.this.mCurrentShuffleIdx++;
                            }
                            Pair<MediaItem, MediaItem> updateAndGetCurrentNextItemIfNeededLocked = MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                            final List<MediaItem> playlist = MediaPlayer.this.getPlaylist();
                            final MediaMetadata playlistMetadata = MediaPlayer.this.getPlaylistMetadata();
                            MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.10.1
                                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                    playerCallback.onPlaylistChanged(MediaPlayer.this, playlist, playlistMetadata);
                                }
                            });
                            if (updateAndGetCurrentNextItemIfNeededLocked.second == null) {
                                return MediaPlayer.this.createFuturesForResultCode(0);
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(MediaPlayer.this.setNextMediaItemInternal(updateAndGetCurrentNextItemIfNeededLocked.second));
                            return arrayList;
                        }
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        } else {
            throw new IllegalArgumentException("index shouldn't be negative");
        }
    }

    public void applyShuffleModeLocked() {
        this.mShuffledList.clear();
        this.mShuffledList.addAll(this.mPlaylist.getCollection());
        int i = this.mShuffleMode;
        if (i == 1 || i == 2) {
            Collections.shuffle(this.mShuffledList);
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> attachAuxEffect(final int i) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.24
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(1, create, MediaPlayer.this.mPlayer.attachAuxEffect(i));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        synchronized (this.mStateLock) {
            if (!this.mClosed) {
                this.mClosed = true;
                reset();
                this.mAudioFocusHandler.close();
                this.mPlayer.close();
                this.mExecutor.shutdown();
            }
        }
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> createFutureForClosed() {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        create.set(new SessionPlayer.PlayerResult(-2, null));
        return create;
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> createFutureForResultCode(int i) {
        return createFutureForResultCode(i, null);
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> createFutureForResultCode(int i, MediaItem mediaItem) {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem == null) {
            mediaItem2 = this.mPlayer.getCurrentMediaItem();
        }
        create.set(new SessionPlayer.PlayerResult(i, mediaItem2));
        return create;
    }

    public List<ResolvableFuture<SessionPlayer.PlayerResult>> createFuturesForResultCode(int i) {
        return createFuturesForResultCode(i, null);
    }

    public List<ResolvableFuture<SessionPlayer.PlayerResult>> createFuturesForResultCode(int i, MediaItem mediaItem) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(createFutureForResultCode(i, mediaItem));
        return arrayList;
    }

    public SessionPlayer.TrackInfo createTrackInfoInternal(TrackInfo trackInfo) {
        if (trackInfo == null) {
            return null;
        }
        return new SessionPlayer.TrackInfo(trackInfo.getId(), trackInfo.getMediaItem(), trackInfo.getTrackType(), trackInfo.getFormat());
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> deselectTrack(@NonNull final TrackInfo trackInfo) {
        if (trackInfo != null) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                final int id = trackInfo.getId();
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.27
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        ArrayList arrayList = new ArrayList();
                        ResolvableFuture create = ResolvableFuture.create();
                        synchronized (MediaPlayer.this.mPendingCommands) {
                            MediaPlayer.this.addPendingCommandWithTrackInfoLocked(2, create, trackInfo, MediaPlayer.this.mPlayer.deselectTrack(id));
                        }
                        arrayList.add(create);
                        return arrayList;
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new NullPointerException("trackInfo shouldn't be null");
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> deselectTrackInternal(SessionPlayer.TrackInfo trackInfo) {
        return deselectTrack(createTrackInfo(trackInfo));
    }

    @Override // androidx.media2.common.SessionPlayer
    @Nullable
    public AudioAttributesCompat getAudioAttributes() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return null;
            }
            try {
                return this.mPlayer.getAudioAttributes();
            } catch (IllegalStateException e) {
                return null;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting(otherwise = 3)
    public AudioFocusHandler getAudioFocusHandler() {
        return this.mAudioFocusHandler;
    }

    public int getAudioSessionId() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 0;
            }
            return this.mPlayer.getAudioSessionId();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public long getBufferedPosition() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return Long.MIN_VALUE;
            }
            try {
                long bufferedPosition = this.mPlayer.getBufferedPosition();
                if (bufferedPosition >= 0) {
                    return bufferedPosition;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getBufferingState() {
        Integer num;
        synchronized (this.mStateLock) {
            int i = 0;
            if (this.mClosed) {
                return 0;
            }
            synchronized (this.mStateLock) {
                num = this.mMediaItemToBuffState.get(this.mPlayer.getCurrentMediaItem());
            }
            if (num != null) {
                i = num.intValue();
            }
            return i;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @Nullable
    public MediaItem getCurrentMediaItem() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return null;
            }
            return this.mPlayer.getCurrentMediaItem();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getCurrentMediaItemIndex() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return -1;
            }
            synchronized (this.mPlaylistLock) {
                if (this.mCurrentShuffleIdx < 0) {
                    return -1;
                }
                return this.mPlaylist.indexOf(this.mShuffledList.get(this.mCurrentShuffleIdx));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public long getCurrentPosition() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return Long.MIN_VALUE;
            }
            try {
                long currentPosition = this.mPlayer.getCurrentPosition();
                if (currentPosition >= 0) {
                    return currentPosition;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DrmInfo getDrmInfo() {
        MediaPlayer2.DrmInfo drmInfo = this.mPlayer.getDrmInfo();
        return drmInfo == null ? null : new DrmInfo(drmInfo);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaDrm.KeyRequest getDrmKeyRequest(@Nullable byte[] bArr, @Nullable byte[] bArr2, @Nullable String str, int i, @Nullable Map<String, String> map) throws NoDrmSchemeException {
        try {
            return this.mPlayer.getDrmKeyRequest(bArr, bArr2, str, i, map);
        } catch (MediaPlayer2.NoDrmSchemeException e) {
            throw new NoDrmSchemeException(e.getMessage());
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public String getDrmPropertyString(@NonNull String str) throws NoDrmSchemeException {
        if (str != null) {
            try {
                return this.mPlayer.getDrmPropertyString(str);
            } catch (MediaPlayer2.NoDrmSchemeException e) {
                throw new NoDrmSchemeException(e.getMessage());
            }
        } else {
            throw new NullPointerException("propertyName shouldn't be null");
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public long getDuration() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return Long.MIN_VALUE;
            }
            try {
                long duration = this.mPlayer.getDuration();
                if (duration >= 0) {
                    return duration;
                }
                return Long.MIN_VALUE;
            } catch (IllegalStateException e) {
                return Long.MIN_VALUE;
            }
        }
    }

    public float getMaxPlayerVolume() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 1.0f;
            }
            return this.mPlayer.getMaxPlayerVolume();
        }
    }

    @RequiresApi(21)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PersistableBundle getMetrics() {
        return this.mPlayer.getMetrics();
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getNextMediaItemIndex() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return -1;
            }
            synchronized (this.mPlaylistLock) {
                if (this.mCurrentShuffleIdx < 0) {
                    return -1;
                }
                int i = this.mCurrentShuffleIdx + 1;
                if (i >= this.mShuffledList.size()) {
                    if (!(this.mRepeatMode == 2 || this.mRepeatMode == 3)) {
                        return -1;
                    }
                    return this.mPlaylist.indexOf(this.mShuffledList.get(0));
                }
                return this.mPlaylist.indexOf(this.mShuffledList.get(i));
            }
        }
    }

    @NonNull
    public PlaybackParams getPlaybackParams() {
        synchronized (this.mStateLock) {
            if (!this.mClosed) {
                return this.mPlayer.getPlaybackParams();
            }
            return DEFAULT_PLAYBACK_PARAMS;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @FloatRange(from = 0.0d, fromInclusive = false, m37520to = 3.4028234663852886E38d)
    public float getPlaybackSpeed() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 1.0f;
            }
            try {
                return this.mPlayer.getPlaybackParams().getSpeed().floatValue();
            } catch (IllegalStateException e) {
                return 1.0f;
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getPlayerState() {
        int i;
        synchronized (this.mStateLock) {
            i = this.mState;
        }
        return i;
    }

    public float getPlayerVolume() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 1.0f;
            }
            return this.mPlayer.getPlayerVolume();
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @Nullable
    public List<MediaItem> getPlaylist() {
        synchronized (this.mStateLock) {
            ArrayList arrayList = null;
            if (this.mClosed) {
                return null;
            }
            synchronized (this.mPlaylistLock) {
                if (!this.mPlaylist.isEmpty()) {
                    arrayList = new ArrayList(this.mPlaylist.getCollection());
                }
            }
            return arrayList;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @Nullable
    public MediaMetadata getPlaylistMetadata() {
        MediaMetadata mediaMetadata;
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return null;
            }
            synchronized (this.mPlaylistLock) {
                mediaMetadata = this.mPlaylistMetadata;
            }
            return mediaMetadata;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getPreviousMediaItemIndex() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return -1;
            }
            synchronized (this.mPlaylistLock) {
                if (this.mCurrentShuffleIdx < 0) {
                    return -1;
                }
                int i = this.mCurrentShuffleIdx - 1;
                if (i < 0) {
                    if (!(this.mRepeatMode == 2 || this.mRepeatMode == 3)) {
                        return -1;
                    }
                    return this.mPlaylist.indexOf(this.mShuffledList.get(this.mShuffledList.size() - 1));
                }
                return this.mPlaylist.indexOf(this.mShuffledList.get(i));
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getRepeatMode() {
        int i;
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 0;
            }
            synchronized (this.mPlaylistLock) {
                i = this.mRepeatMode;
            }
            return i;
        }
    }

    @Nullable
    public TrackInfo getSelectedTrack(int i) {
        synchronized (this.mStateLock) {
            TrackInfo trackInfo = null;
            if (this.mClosed) {
                return null;
            }
            int selectedTrack = this.mPlayer.getSelectedTrack(i);
            if (selectedTrack >= 0) {
                trackInfo = getTrackInfo(selectedTrack);
            }
            return trackInfo;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public SessionPlayer.TrackInfo getSelectedTrackInternal(int i) {
        return createTrackInfoInternal(getSelectedTrack(i));
    }

    @Override // androidx.media2.common.SessionPlayer
    public int getShuffleMode() {
        int i;
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return 0;
            }
            synchronized (this.mPlaylistLock) {
                i = this.mShuffleMode;
            }
            return i;
        }
    }

    @Nullable
    public MediaTimestamp getTimestamp() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return null;
            }
            return this.mPlayer.getTimestamp();
        }
    }

    @NonNull
    public TrackInfo getTrackInfo(int i) {
        MediaPlayer2.TrackInfo trackInfo = this.mPlayer.getTrackInfo().get(i);
        return new TrackInfo(i, this.mPlayer.getCurrentMediaItem(), trackInfo.getTrackType(), trackInfo.getFormat());
    }

    @NonNull
    public List<TrackInfo> getTrackInfo() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return Collections.emptyList();
            }
            List<MediaPlayer2.TrackInfo> trackInfo = this.mPlayer.getTrackInfo();
            MediaItem currentMediaItem = this.mPlayer.getCurrentMediaItem();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < trackInfo.size(); i++) {
                MediaPlayer2.TrackInfo trackInfo2 = trackInfo.get(i);
                arrayList.add(new TrackInfo(i, currentMediaItem, trackInfo2.getTrackType(), trackInfo2.getFormat()));
            }
            return arrayList;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<SessionPlayer.TrackInfo> getTrackInfoInternal() {
        List<TrackInfo> trackInfo = getTrackInfo();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < trackInfo.size(); i++) {
            arrayList.add(createTrackInfoInternal(trackInfo.get(i)));
        }
        return arrayList;
    }

    @NonNull
    public VideoSize getVideoSize() {
        return new VideoSize(getVideoSizeInternal());
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public VideoSize getVideoSizeInternal() {
        synchronized (this.mStateLock) {
            if (!this.mClosed) {
                return new VideoSize(this.mPlayer.getVideoWidth(), this.mPlayer.getVideoHeight());
            }
            return new VideoSize(0, 0);
        }
    }

    public void handleCallComplete(MediaPlayer2 mediaPlayer2, final MediaItem mediaItem, int i, int i2) {
        PendingCommand pollFirst;
        synchronized (this.mPendingCommands) {
            pollFirst = this.mPendingCommands.pollFirst();
        }
        if (pollFirst == null) {
            String str = "No matching call type for " + i + ". Possibly because of reset().";
            return;
        }
        final TrackInfo trackInfo = pollFirst.mTrackInfo;
        if (i != pollFirst.mCallType) {
            String str2 = "Call type does not match. expeced:" + pollFirst.mCallType + " actual:" + i;
            i2 = Integer.MIN_VALUE;
        }
        if (i2 == 0) {
            if (i == 2) {
                notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.39
                    @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                    public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                        MediaPlayer mediaPlayer = MediaPlayer.this;
                        playerCallback.onTrackDeselected(mediaPlayer, mediaPlayer.createTrackInfoInternal(trackInfo));
                    }
                });
            } else if (i == 19) {
                notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.35
                    @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                    public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                        playerCallback.onCurrentMediaItemChanged(MediaPlayer.this, mediaItem);
                    }
                });
            } else if (i != 24) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            switch (i) {
                                case 14:
                                    final long currentPosition = getCurrentPosition();
                                    notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.34
                                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                            playerCallback.onSeekCompleted(MediaPlayer.this, currentPosition);
                                        }
                                    });
                                    break;
                                case 15:
                                    notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.38
                                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                            MediaPlayer mediaPlayer = MediaPlayer.this;
                                            playerCallback.onTrackSelected(mediaPlayer, mediaPlayer.createTrackInfoInternal(trackInfo));
                                        }
                                    });
                                    break;
                                case 16:
                                    final AudioAttributesCompat audioAttributes = this.mPlayer.getAudioAttributes();
                                    notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.37
                                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                            playerCallback.onAudioAttributesChanged(MediaPlayer.this, audioAttributes);
                                        }
                                    });
                                    break;
                            }
                        }
                    } else {
                        setState(2);
                    }
                }
                setState(1);
            } else {
                final float floatValue = this.mPlayer.getPlaybackParams().getSpeed().floatValue();
                notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.36
                    @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                    public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                        playerCallback.onPlaybackSpeedChanged(MediaPlayer.this, floatValue);
                    }
                });
            }
        }
        if (i != 1001) {
            pollFirst.mFuture.set(new SessionPlayer.PlayerResult(Integer.valueOf(sResultCodeMap.containsKey(Integer.valueOf(i2)) ? sResultCodeMap.get(Integer.valueOf(i2)).intValue() : -1).intValue(), mediaItem));
        } else {
            pollFirst.mFuture.set(new DrmResult(Integer.valueOf(sPrepareDrmStatusMap.containsKey(Integer.valueOf(i2)) ? sPrepareDrmStatusMap.get(Integer.valueOf(i2)).intValue() : DrmResult.RESULT_ERROR_PREPARATION_ERROR).intValue(), mediaItem));
        }
        executePendingFutures();
    }

    public void notifyMediaPlayerCallback(final MediaPlayerCallbackNotifier mediaPlayerCallbackNotifier) {
        synchronized (this.mStateLock) {
            if (!this.mClosed) {
                for (Pair<SessionPlayer.PlayerCallback, Executor> pair : getCallbacks()) {
                    SessionPlayer.PlayerCallback playerCallback = pair.first;
                    if (playerCallback instanceof PlayerCallback) {
                        final PlayerCallback playerCallback2 = (PlayerCallback) playerCallback;
                        pair.second.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.33
                            @Override // java.lang.Runnable
                            public void run() {
                                mediaPlayerCallbackNotifier.callCallback(playerCallback2);
                            }
                        });
                    }
                }
            }
        }
    }

    public void notifySessionPlayerCallback(final SessionPlayerCallbackNotifier sessionPlayerCallbackNotifier) {
        synchronized (this.mStateLock) {
            if (!this.mClosed) {
                for (Pair<SessionPlayer.PlayerCallback, Executor> pair : getCallbacks()) {
                    final SessionPlayer.PlayerCallback playerCallback = pair.first;
                    pair.second.execute(new Runnable() { // from class: androidx.media2.player.MediaPlayer.32
                        @Override // java.lang.Runnable
                        public void run() {
                            sessionPlayerCallbackNotifier.callCallback(playerCallback);
                        }
                    });
                }
            }
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> pause() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.3
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    MediaPlayer.this.mAudioFocusHandler.onPause();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(4, create, MediaPlayer.this.mPlayer.pause());
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> play() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.2
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ResolvableFuture<SessionPlayer.PlayerResult> resolvableFuture;
                    ArrayList arrayList = new ArrayList();
                    if (MediaPlayer.this.mAudioFocusHandler.onPlay()) {
                        if (MediaPlayer.this.mPlayer.getAudioAttributes() == null) {
                            arrayList.add(MediaPlayer.this.setPlayerVolumeInternal(0.0f));
                        }
                        resolvableFuture = ResolvableFuture.create();
                        synchronized (MediaPlayer.this.mPendingCommands) {
                            MediaPlayer.this.addPendingCommandLocked(5, resolvableFuture, MediaPlayer.this.mPlayer.play());
                        }
                    } else {
                        resolvableFuture = MediaPlayer.this.createFutureForResultCode(-1);
                    }
                    arrayList.add(resolvableFuture);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> prepare() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.4
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(6, create, MediaPlayer.this.mPlayer.prepare());
                    }
                    MediaPlayer mediaPlayer = MediaPlayer.this;
                    mediaPlayer.setBufferingState(mediaPlayer.mPlayer.getCurrentMediaItem(), 2);
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AbstractFutureC9382a<DrmResult> prepareDrm(@NonNull final UUID uuid) {
        if (uuid != null) {
            PendingFuture<DrmResult> pendingFuture = new PendingFuture<DrmResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.28
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<DrmResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(1001, create, MediaPlayer.this.mPlayer.prepareDrm(uuid));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
        throw new NullPointerException("uuid shouldn't be null");
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public byte[] provideDrmKeyResponse(@Nullable byte[] bArr, @NonNull byte[] bArr2) throws NoDrmSchemeException, DeniedByServerException {
        try {
            return this.mPlayer.provideDrmKeyResponse(bArr, bArr2);
        } catch (MediaPlayer2.NoDrmSchemeException e) {
            throw new NoDrmSchemeException(e.getMessage());
        }
    }

    public void registerPlayerCallback(@NonNull Executor executor, @NonNull PlayerCallback playerCallback) {
        super.registerPlayerCallback(executor, (SessionPlayer.PlayerCallback) playerCallback);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void releaseDrm() throws NoDrmSchemeException {
        try {
            this.mPlayer.releaseDrm();
        } catch (MediaPlayer2.NoDrmSchemeException e) {
            throw new NoDrmSchemeException(e.getMessage());
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> removePlaylistItem(@IntRange(from = 0) final int i) {
        if (i >= 0) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.11
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            if (i >= MediaPlayer.this.mPlaylist.size()) {
                                return MediaPlayer.this.createFuturesForResultCode(-3);
                            }
                            int indexOf = MediaPlayer.this.mShuffledList.indexOf(MediaPlayer.this.mPlaylist.remove(i));
                            MediaPlayer.this.mShuffledList.remove(indexOf);
                            if (indexOf < MediaPlayer.this.mCurrentShuffleIdx) {
                                MediaPlayer.this.mCurrentShuffleIdx--;
                            }
                            Pair<MediaItem, MediaItem> updateAndGetCurrentNextItemIfNeededLocked = MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                            MediaItem mediaItem = MediaPlayer.this.mCurPlaylistItem;
                            MediaItem mediaItem2 = MediaPlayer.this.mNextPlaylistItem;
                            final List<MediaItem> playlist = MediaPlayer.this.getPlaylist();
                            final MediaMetadata playlistMetadata = MediaPlayer.this.getPlaylistMetadata();
                            MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.11.1
                                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                    playerCallback.onPlaylistChanged(MediaPlayer.this, playlist, playlistMetadata);
                                }
                            });
                            ArrayList arrayList = new ArrayList();
                            if (updateAndGetCurrentNextItemIfNeededLocked == null) {
                                arrayList.add(MediaPlayer.this.createFutureForResultCode(0));
                            } else if (updateAndGetCurrentNextItemIfNeededLocked.first != null) {
                                arrayList.addAll(MediaPlayer.this.setMediaItemsInternal(mediaItem, mediaItem2));
                            } else if (updateAndGetCurrentNextItemIfNeededLocked.second != null) {
                                arrayList.add(MediaPlayer.this.setNextMediaItemInternal(mediaItem2));
                            }
                            return arrayList;
                        }
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> replacePlaylistItem(final int i, @NonNull final MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new NullPointerException("item shouldn't be null");
        } else if ((mediaItem instanceof FileMediaItem) && ((FileMediaItem) mediaItem).isClosed()) {
            throw new IllegalArgumentException("File descriptor is closed. " + mediaItem);
        } else if (i >= 0) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.12
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            if (i < MediaPlayer.this.mPlaylist.size() && !MediaPlayer.this.mPlaylist.contains(mediaItem)) {
                                MediaPlayer.this.mShuffledList.set(MediaPlayer.this.mShuffledList.indexOf(MediaPlayer.this.mPlaylist.get(i)), mediaItem);
                                MediaPlayer.this.mPlaylist.set(i, mediaItem);
                                Pair<MediaItem, MediaItem> updateAndGetCurrentNextItemIfNeededLocked = MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                                MediaItem mediaItem2 = MediaPlayer.this.mCurPlaylistItem;
                                MediaItem mediaItem3 = MediaPlayer.this.mNextPlaylistItem;
                                final List<MediaItem> playlist = MediaPlayer.this.getPlaylist();
                                final MediaMetadata playlistMetadata = MediaPlayer.this.getPlaylistMetadata();
                                MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.12.1
                                    @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                                    public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                        playerCallback.onPlaylistChanged(MediaPlayer.this, playlist, playlistMetadata);
                                    }
                                });
                                ArrayList arrayList = new ArrayList();
                                if (updateAndGetCurrentNextItemIfNeededLocked == null) {
                                    arrayList.add(MediaPlayer.this.createFutureForResultCode(0));
                                } else if (updateAndGetCurrentNextItemIfNeededLocked.first != null) {
                                    arrayList.addAll(MediaPlayer.this.setMediaItemsInternal(mediaItem2, mediaItem3));
                                } else if (updateAndGetCurrentNextItemIfNeededLocked.second != null) {
                                    arrayList.add(MediaPlayer.this.setNextMediaItemInternal(mediaItem3));
                                }
                                return arrayList;
                            }
                            return MediaPlayer.this.createFuturesForResultCode(-3, mediaItem);
                        }
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        } else {
            throw new IllegalArgumentException("index shouldn't be negative");
        }
    }

    public void reset() {
        synchronized (this.mPendingCommands) {
            Iterator<PendingCommand> it = this.mPendingCommands.iterator();
            while (it.hasNext()) {
                it.next().mFuture.cancel(true);
            }
            this.mPendingCommands.clear();
        }
        synchronized (this.mPendingFutures) {
            Iterator<PendingFuture<? super SessionPlayer.PlayerResult>> it2 = this.mPendingFutures.iterator();
            while (it2.hasNext()) {
                PendingFuture<? super SessionPlayer.PlayerResult> next = it2.next();
                if (next.mExecuteCalled && !next.isDone() && !next.isCancelled()) {
                    next.cancel(true);
                }
            }
            this.mPendingFutures.clear();
        }
        synchronized (this.mStateLock) {
            this.mState = 0;
            this.mMediaItemToBuffState.clear();
        }
        synchronized (this.mPlaylistLock) {
            this.mPlaylist.clear();
            this.mShuffledList.clear();
            this.mCurPlaylistItem = null;
            this.mNextPlaylistItem = null;
            this.mCurrentShuffleIdx = -1;
            this.mSetMediaItemCalled = false;
        }
        this.mAudioFocusHandler.onReset();
        this.mPlayer.reset();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void restoreDrmKeys(@NonNull byte[] bArr) throws NoDrmSchemeException {
        if (bArr != null) {
            try {
                this.mPlayer.restoreDrmKeys(bArr);
            } catch (MediaPlayer2.NoDrmSchemeException e) {
                throw new NoDrmSchemeException(e.getMessage());
            }
        } else {
            throw new NullPointerException("keySetId shouldn't be null");
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> seekTo(final long j) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor, true) { // from class: androidx.media2.player.MediaPlayer.5
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(14, create, MediaPlayer.this.mPlayer.seekTo(j));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> seekTo(final long j, final int i) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor, true) { // from class: androidx.media2.player.MediaPlayer.22
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    int intValue = MediaPlayer.sSeekModeMap.containsKey(Integer.valueOf(i)) ? MediaPlayer.sSeekModeMap.get(Integer.valueOf(i)).intValue() : 1;
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(14, create, MediaPlayer.this.mPlayer.seekTo(j, intValue));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> selectTrack(@NonNull final TrackInfo trackInfo) {
        if (trackInfo != null) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                final int id = trackInfo.getId();
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.26
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        ArrayList arrayList = new ArrayList();
                        ResolvableFuture create = ResolvableFuture.create();
                        synchronized (MediaPlayer.this.mPendingCommands) {
                            MediaPlayer.this.addPendingCommandWithTrackInfoLocked(15, create, trackInfo, MediaPlayer.this.mPlayer.selectTrack(id));
                        }
                        arrayList.add(create);
                        return arrayList;
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new NullPointerException("trackInfo shouldn't be null");
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> selectTrackInternal(SessionPlayer.TrackInfo trackInfo) {
        return selectTrack(createTrackInfo(trackInfo));
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setAudioAttributes(@NonNull final AudioAttributesCompat audioAttributesCompat) {
        if (audioAttributesCompat != null) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.7
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        ArrayList arrayList = new ArrayList();
                        ResolvableFuture create = ResolvableFuture.create();
                        synchronized (MediaPlayer.this.mPendingCommands) {
                            MediaPlayer.this.addPendingCommandLocked(16, create, MediaPlayer.this.mPlayer.setAudioAttributes(audioAttributesCompat));
                        }
                        arrayList.add(create);
                        return arrayList;
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new NullPointerException("attr shouldn't be null");
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setAudioSessionId(final int i) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.23
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(17, create, MediaPlayer.this.mPlayer.setAudioSessionId(i));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setAuxEffectSendLevel(@FloatRange(from = 0.0d, m37520to = 1.0d) final float f) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.25
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(18, create, MediaPlayer.this.mPlayer.setAuxEffectSendLevel(f));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    public void setBufferingState(final MediaItem mediaItem, final int i) {
        Integer put;
        synchronized (this.mStateLock) {
            put = this.mMediaItemToBuffState.put(mediaItem, Integer.valueOf(i));
        }
        if (put == null || put.intValue() != i) {
            notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.31
                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                    playerCallback.onBufferingStateChanged(MediaPlayer.this, mediaItem, i);
                }
            });
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setDrmPropertyString(@NonNull String str, @NonNull String str2) throws NoDrmSchemeException {
        if (str == null) {
            throw new NullPointerException("propertyName shouldn't be null");
        } else if (str2 != null) {
            try {
                this.mPlayer.setDrmPropertyString(str, str2);
            } catch (MediaPlayer2.NoDrmSchemeException e) {
                throw new NoDrmSchemeException(e.getMessage());
            }
        } else {
            throw new NullPointerException("value shouldn't be null");
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setMediaItem(@NonNull final MediaItem mediaItem) {
        if (mediaItem == null) {
            throw new NullPointerException("item shouldn't be null");
        } else if (!(mediaItem instanceof FileMediaItem) || !((FileMediaItem) mediaItem).isClosed()) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.8
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        ArrayList arrayList = new ArrayList();
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            MediaPlayer.this.mPlaylist.clear();
                            MediaPlayer.this.mShuffledList.clear();
                            MediaPlayer.this.mCurPlaylistItem = mediaItem;
                            MediaPlayer.this.mNextPlaylistItem = null;
                            MediaPlayer.this.mCurrentShuffleIdx = -1;
                        }
                        arrayList.addAll(MediaPlayer.this.setMediaItemsInternal(mediaItem, null));
                        return arrayList;
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        } else {
            throw new IllegalArgumentException("File descriptor is closed. " + mediaItem);
        }
    }

    public List<ResolvableFuture<SessionPlayer.PlayerResult>> setMediaItemsInternal(@NonNull MediaItem mediaItem, @Nullable MediaItem mediaItem2) {
        boolean z;
        if (mediaItem != null) {
            synchronized (this.mPlaylistLock) {
                z = this.mSetMediaItemCalled;
            }
            ArrayList arrayList = new ArrayList();
            if (z) {
                arrayList.add(setNextMediaItemInternal(mediaItem));
                arrayList.add(skipToNextInternal());
            } else {
                arrayList.add(setMediaItemInternal(mediaItem));
            }
            if (mediaItem2 != null) {
                arrayList.add(setNextMediaItemInternal(mediaItem2));
            }
            return arrayList;
        }
        throw new NullPointerException("curItem shouldn't be null");
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> setNextMediaItemInternal(MediaItem mediaItem) {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        synchronized (this.mPendingCommands) {
            addPendingCommandLocked(22, create, this.mPlayer.setNextMediaItem(mediaItem));
        }
        return create;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOnDrmConfigHelper(@Nullable final OnDrmConfigHelper onDrmConfigHelper) {
        this.mPlayer.setOnDrmConfigHelper(onDrmConfigHelper == null ? null : new MediaPlayer2.OnDrmConfigHelper() { // from class: androidx.media2.player.MediaPlayer.29
            @Override // androidx.media2.player.MediaPlayer2.OnDrmConfigHelper
            public void onDrmConfig(MediaPlayer2 mediaPlayer2, MediaItem mediaItem) {
                onDrmConfigHelper.onDrmConfig(MediaPlayer.this, mediaItem);
            }
        });
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaybackParams(@NonNull final PlaybackParams playbackParams) {
        if (playbackParams != null) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.21
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        ArrayList arrayList = new ArrayList();
                        ResolvableFuture create = ResolvableFuture.create();
                        synchronized (MediaPlayer.this.mPendingCommands) {
                            MediaPlayer.this.addPendingCommandLocked(24, create, MediaPlayer.this.mPlayer.setPlaybackParams(playbackParams));
                        }
                        arrayList.add(create);
                        return arrayList;
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new NullPointerException("params shouldn't be null");
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaybackSpeed(@FloatRange(from = 0.0d, fromInclusive = false, m37520to = 3.4028234663852886E38d) final float f) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.6
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    if (f <= 0.0f) {
                        return MediaPlayer.this.createFuturesForResultCode(-3);
                    }
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(24, create, MediaPlayer.this.mPlayer.setPlaybackParams(new PlaybackParams.Builder(MediaPlayer.this.mPlayer.getPlaybackParams()).setSpeed(f).build()));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlayerVolume(@FloatRange(from = 0.0d, m37520to = 1.0d) final float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("volume should be between 0.0 and 1.0");
        }
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.20
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(MediaPlayer.this.setPlayerVolumeInternal(f));
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> setPlayerVolumeInternal(float f) {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        synchronized (this.mPendingCommands) {
            addPendingCommandLocked(26, create, this.mPlayer.setPlayerVolume(f));
        }
        return create;
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setPlaylist(@NonNull final List<MediaItem> list, @Nullable final MediaMetadata mediaMetadata) {
        if (list == null) {
            throw new NullPointerException("playlist shouldn't be null");
        } else if (!list.isEmpty()) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                String str = null;
                Iterator<MediaItem> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaItem next = it.next();
                    if (next == null) {
                        str = "playlist shouldn't contain null item";
                        break;
                    }
                    if ((next instanceof FileMediaItem) && ((FileMediaItem) next).isClosed()) {
                        str = "File descriptor is closed. " + next;
                        break;
                    }
                }
                if (str != null) {
                    for (MediaItem mediaItem : list) {
                        if (mediaItem instanceof FileMediaItem) {
                            FileMediaItem fileMediaItem = (FileMediaItem) mediaItem;
                            fileMediaItem.increaseRefCount();
                            fileMediaItem.decreaseRefCount();
                        }
                    }
                    throw new IllegalArgumentException(str);
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.9
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        MediaItem mediaItem2;
                        MediaItem mediaItem3;
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            MediaPlayer.this.mPlaylistMetadata = mediaMetadata;
                            MediaPlayer.this.mPlaylist.replaceAll(list);
                            MediaPlayer.this.applyShuffleModeLocked();
                            MediaPlayer.this.mCurrentShuffleIdx = 0;
                            MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                            mediaItem2 = MediaPlayer.this.mCurPlaylistItem;
                            mediaItem3 = MediaPlayer.this.mNextPlaylistItem;
                        }
                        MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.9.1
                            @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                            public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                C05909 r0 = C05909.this;
                                playerCallback.onPlaylistChanged(MediaPlayer.this, list, mediaMetadata);
                            }
                        });
                        return mediaItem2 != null ? MediaPlayer.this.setMediaItemsInternal(mediaItem2, mediaItem3) : MediaPlayer.this.createFuturesForResultCode(0);
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        } else {
            throw new IllegalArgumentException("playlist shouldn't be empty");
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setRepeatMode(final int i) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.17
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    boolean z;
                    int i2 = i;
                    if (i2 < 0 || i2 > 3) {
                        return MediaPlayer.this.createFuturesForResultCode(-3);
                    }
                    synchronized (MediaPlayer.this.mPlaylistLock) {
                        z = MediaPlayer.this.mRepeatMode != i;
                        MediaPlayer.this.mRepeatMode = i;
                    }
                    if (z) {
                        MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.17.1
                            @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                            public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                C055817 r0 = C055817.this;
                                playerCallback.onRepeatModeChanged(MediaPlayer.this, i);
                            }
                        });
                    }
                    return MediaPlayer.this.createFuturesForResultCode(0);
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setShuffleMode(final int i) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.18
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    boolean z;
                    int i2 = i;
                    if (i2 < 0 || i2 > 2) {
                        return MediaPlayer.this.createFuturesForResultCode(-3);
                    }
                    synchronized (MediaPlayer.this.mPlaylistLock) {
                        z = MediaPlayer.this.mShuffleMode != i;
                        MediaPlayer.this.mShuffleMode = i;
                    }
                    if (z) {
                        MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.18.1
                            @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                            public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                                C056018 r0 = C056018.this;
                                playerCallback.onShuffleModeChanged(MediaPlayer.this, i);
                            }
                        });
                    }
                    return MediaPlayer.this.createFuturesForResultCode(0);
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    public void setState(final int i) {
        boolean z;
        synchronized (this.mStateLock) {
            if (this.mState != i) {
                this.mState = i;
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.30
                @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                    playerCallback.onPlayerStateChanged(MediaPlayer.this, i);
                }
            });
        }
    }

    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setSurface(@Nullable final Surface surface) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.19
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    ArrayList arrayList = new ArrayList();
                    ResolvableFuture create = ResolvableFuture.create();
                    synchronized (MediaPlayer.this.mPendingCommands) {
                        MediaPlayer.this.addPendingCommandLocked(27, create, MediaPlayer.this.mPlayer.setSurface(surface));
                    }
                    arrayList.add(create);
                    return arrayList;
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> setSurfaceInternal(@Nullable Surface surface) {
        return setSurface(surface);
    }

    public ResolvableFuture<SessionPlayer.PlayerResult> skipToNextInternal() {
        ResolvableFuture<SessionPlayer.PlayerResult> create = ResolvableFuture.create();
        synchronized (this.mPendingCommands) {
            addPendingCommandLocked(29, create, this.mPlayer.skipToNext());
        }
        return create;
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToNextPlaylistItem() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.14
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    synchronized (MediaPlayer.this.mPlaylistLock) {
                        if (MediaPlayer.this.mCurrentShuffleIdx < 0) {
                            return MediaPlayer.this.createFuturesForResultCode(-2);
                        }
                        int i = MediaPlayer.this.mCurrentShuffleIdx + 1;
                        int i2 = i;
                        if (i >= MediaPlayer.this.mShuffledList.size()) {
                            if (!(MediaPlayer.this.mRepeatMode == 2 || MediaPlayer.this.mRepeatMode == 3)) {
                                return MediaPlayer.this.createFuturesForResultCode(-2);
                            }
                            i2 = 0;
                        }
                        MediaPlayer.this.mCurrentShuffleIdx = i2;
                        MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                        MediaItem mediaItem = MediaPlayer.this.mCurPlaylistItem;
                        MediaItem mediaItem2 = MediaPlayer.this.mNextPlaylistItem;
                        if (mediaItem != null) {
                            return MediaPlayer.this.setMediaItemsInternal(mediaItem, mediaItem2);
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(MediaPlayer.this.skipToNextInternal());
                        return arrayList;
                    }
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPlaylistItem(@IntRange(from = 0) final int i) {
        if (i >= 0) {
            synchronized (this.mStateLock) {
                if (this.mClosed) {
                    return createFutureForClosed();
                }
                PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.15
                    @Override // androidx.media2.player.MediaPlayer.PendingFuture
                    public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                        synchronized (MediaPlayer.this.mPlaylistLock) {
                            if (i >= MediaPlayer.this.mPlaylist.size()) {
                                return MediaPlayer.this.createFuturesForResultCode(-3);
                            }
                            MediaPlayer.this.mCurrentShuffleIdx = MediaPlayer.this.mShuffledList.indexOf(MediaPlayer.this.mPlaylist.get(i));
                            MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                            return MediaPlayer.this.setMediaItemsInternal(MediaPlayer.this.mCurPlaylistItem, MediaPlayer.this.mNextPlaylistItem);
                        }
                    }
                };
                addPendingFuture(pendingFuture);
                return pendingFuture;
            }
        }
        throw new IllegalArgumentException("index shouldn't be negative");
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> skipToPreviousPlaylistItem() {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.13
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    synchronized (MediaPlayer.this.mPlaylistLock) {
                        if (MediaPlayer.this.mCurrentShuffleIdx < 0) {
                            return MediaPlayer.this.createFuturesForResultCode(-2);
                        }
                        int i = MediaPlayer.this.mCurrentShuffleIdx - 1;
                        int i2 = i;
                        if (i < 0) {
                            if (!(MediaPlayer.this.mRepeatMode == 2 || MediaPlayer.this.mRepeatMode == 3)) {
                                return MediaPlayer.this.createFuturesForResultCode(-2);
                            }
                            i2 = MediaPlayer.this.mShuffledList.size() - 1;
                        }
                        MediaPlayer.this.mCurrentShuffleIdx = i2;
                        MediaPlayer.this.updateAndGetCurrentNextItemIfNeededLocked();
                        return MediaPlayer.this.setMediaItemsInternal(MediaPlayer.this.mCurPlaylistItem, MediaPlayer.this.mNextPlaylistItem);
                    }
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }

    public void unregisterPlayerCallback(@NonNull PlayerCallback playerCallback) {
        super.unregisterPlayerCallback((SessionPlayer.PlayerCallback) playerCallback);
    }

    public Pair<MediaItem, MediaItem> updateAndGetCurrentNextItemIfNeededLocked() {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        int i = this.mCurrentShuffleIdx;
        Pair<MediaItem, MediaItem> pair = null;
        if (i >= 0) {
            if (!Objects.equals(this.mCurPlaylistItem, this.mShuffledList.get(i))) {
                mediaItem = this.mShuffledList.get(this.mCurrentShuffleIdx);
                this.mCurPlaylistItem = mediaItem;
            } else {
                mediaItem = null;
            }
            int i2 = this.mCurrentShuffleIdx + 1;
            int i3 = i2;
            if (i2 >= this.mShuffledList.size()) {
                int i4 = this.mRepeatMode;
                i3 = (i4 == 2 || i4 == 3) ? 0 : -1;
            }
            if (i3 == -1) {
                this.mNextPlaylistItem = null;
            } else if (!Objects.equals(this.mNextPlaylistItem, this.mShuffledList.get(i3))) {
                mediaItem2 = this.mShuffledList.get(i3);
                this.mNextPlaylistItem = mediaItem2;
                if (mediaItem == null || mediaItem2 != null) {
                    pair = new Pair<>(mediaItem, mediaItem2);
                }
                return pair;
            }
            mediaItem2 = null;
            if (mediaItem == null) {
            }
            pair = new Pair<>(mediaItem, mediaItem2);
            return pair;
        } else if (this.mCurPlaylistItem == null && this.mNextPlaylistItem == null) {
            return null;
        } else {
            this.mCurPlaylistItem = null;
            this.mNextPlaylistItem = null;
            return new Pair<>(null, null);
        }
    }

    @Override // androidx.media2.common.SessionPlayer
    @NonNull
    public AbstractFutureC9382a<SessionPlayer.PlayerResult> updatePlaylistMetadata(@Nullable final MediaMetadata mediaMetadata) {
        synchronized (this.mStateLock) {
            if (this.mClosed) {
                return createFutureForClosed();
            }
            PendingFuture<SessionPlayer.PlayerResult> pendingFuture = new PendingFuture<SessionPlayer.PlayerResult>(this.mExecutor) { // from class: androidx.media2.player.MediaPlayer.16
                @Override // androidx.media2.player.MediaPlayer.PendingFuture
                public List<ResolvableFuture<SessionPlayer.PlayerResult>> onExecute() {
                    synchronized (MediaPlayer.this.mPlaylistLock) {
                        MediaPlayer.this.mPlaylistMetadata = mediaMetadata;
                    }
                    MediaPlayer.this.notifySessionPlayerCallback(new SessionPlayerCallbackNotifier() { // from class: androidx.media2.player.MediaPlayer.16.1
                        @Override // androidx.media2.player.MediaPlayer.SessionPlayerCallbackNotifier
                        public void callCallback(SessionPlayer.PlayerCallback playerCallback) {
                            C055616 r0 = C055616.this;
                            playerCallback.onPlaylistMetadataChanged(MediaPlayer.this, mediaMetadata);
                        }
                    });
                    return MediaPlayer.this.createFuturesForResultCode(0);
                }
            };
            addPendingFuture(pendingFuture);
            return pendingFuture;
        }
    }
}
