package android.support.p001v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.IMediaSession;
import android.support.p001v4.media.session.MediaSessionCompatApi21;
import android.support.p001v4.media.session.MediaSessionCompatApi23;
import android.support.p001v4.media.session.MediaSessionCompatApi24;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.MediaSessionManager;
import androidx.media.VolumeProviderCompat;
import androidx.media.session.MediaButtonReceiver;
import com.google.firebase.appindexing.Indexable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {
    @RestrictTo
    public static final String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";
    @RestrictTo
    public static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
    @RestrictTo
    public static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
    @RestrictTo
    public static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";
    @RestrictTo
    public static final String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";
    @RestrictTo
    public static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
    @RestrictTo
    public static final String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";
    @RestrictTo
    public static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
    public static final String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
    public static final String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";
    @RestrictTo
    public static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";
    @RestrictTo
    public static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";
    @RestrictTo
    public static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
    @RestrictTo
    public static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
    @RestrictTo
    public static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";
    @RestrictTo
    public static final String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";
    @RestrictTo
    public static final String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";
    @RestrictTo
    public static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";
    @RestrictTo
    public static final String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    public static final String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
    public static final String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
    public static final String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";
    private static final String DATA_CALLING_PACKAGE = "data_calling_pkg";
    private static final String DATA_CALLING_PID = "data_calling_pid";
    private static final String DATA_CALLING_UID = "data_calling_uid";
    private static final String DATA_EXTRAS = "data_extras";
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    @RestrictTo
    public static final String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";
    @RestrictTo
    public static final String KEY_SESSION_TOKEN2_BUNDLE = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE";
    @RestrictTo
    public static final String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
    private static final int MAX_BITMAP_SIZE_IN_DP = 320;
    public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
    public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
    public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;
    static final String TAG = "MediaSessionCompat";
    static int sMaxBitmapSize;
    private final ArrayList<OnActiveChangeListener> mActiveListeners;
    private final MediaControllerCompat mController;
    private final MediaSessionImpl mImpl;

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Callback.class */
    public static abstract class Callback {
        private CallbackHandler mCallbackHandler = null;
        final Object mCallbackObj;
        private boolean mMediaPlayPauseKeyPending;
        WeakReference<MediaSessionImpl> mSessionImpl;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$CallbackHandler */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler.class */
        public class CallbackHandler extends Handler {
            private static final int MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 1;

            CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    Callback.this.handleMediaPlayPauseKeySingleTapIfPending((MediaSessionManager.RemoteUserInfo) message.obj);
                }
            }
        }

        @RequiresApi
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$StubApi21 */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Callback$StubApi21.class */
        private class StubApi21 implements MediaSessionCompatApi21.Callback {
            StubApi21() {
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                try {
                    boolean equals = str.equals(MediaControllerCompat.COMMAND_GET_EXTRA_BINDER);
                    IBinder iBinder = null;
                    if (equals) {
                        MediaSessionImplApi21 mediaSessionImplApi21 = (MediaSessionImplApi21) Callback.this.mSessionImpl.get();
                        if (mediaSessionImplApi21 != null) {
                            Bundle bundle2 = new Bundle();
                            Token sessionToken = mediaSessionImplApi21.getSessionToken();
                            IMediaSession extraBinder = sessionToken.getExtraBinder();
                            if (extraBinder != null) {
                                iBinder = extraBinder.asBinder();
                            }
                            BundleCompat.m19833b(bundle2, MediaSessionCompat.KEY_EXTRA_BINDER, iBinder);
                            bundle2.putBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE, sessionToken.getSessionToken2Bundle());
                            resultReceiver.send(0, bundle2);
                        }
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM)) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (str.equals(MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT)) {
                        Callback.this.onAddQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION), bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX));
                    } else if (str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM)) {
                        Callback.this.onRemoveQueueItem((MediaDescriptionCompat) bundle.getParcelable(MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                    } else if (str.equals(MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM_AT)) {
                        MediaSessionImplApi21 mediaSessionImplApi212 = (MediaSessionImplApi21) Callback.this.mSessionImpl.get();
                        if (mediaSessionImplApi212 != null && mediaSessionImplApi212.mQueue != null) {
                            int i = bundle.getInt(MediaControllerCompat.COMMAND_ARGUMENT_INDEX, -1);
                            QueueItem queueItem = null;
                            if (i >= 0) {
                                queueItem = null;
                                if (i < mediaSessionImplApi212.mQueue.size()) {
                                    queueItem = mediaSessionImplApi212.mQueue.get(i);
                                }
                            }
                            if (queueItem != null) {
                                Callback.this.onRemoveQueueItem(queueItem.getDescription());
                            }
                        }
                    } else {
                        Callback.this.onCommand(str, bundle, resultReceiver);
                    }
                } catch (BadParcelableException e) {
                    Log.e(MediaSessionCompat.TAG, "Could not unparcel the extra data.");
                }
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onCustomAction(String str, Bundle bundle) {
                Bundle bundle2 = bundle.getBundle(MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                MediaSessionCompat.ensureClassLoader(bundle2);
                if (str.equals(MediaSessionCompat.ACTION_PLAY_FROM_URI)) {
                    Callback.this.onPlayFromUri((Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE)) {
                    Callback.this.onPrepare();
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
                    Callback.this.onPrepareFromMediaId(bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH)) {
                    Callback.this.onPrepareFromSearch(bundle.getString(MediaSessionCompat.ACTION_ARGUMENT_QUERY), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_PREPARE_FROM_URI)) {
                    Callback.this.onPrepareFromUri((Uri) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                } else if (str.equals(MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                    Callback.this.onSetCaptioningEnabled(bundle.getBoolean(MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_REPEAT_MODE)) {
                    Callback.this.onSetRepeatMode(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_SHUFFLE_MODE)) {
                    Callback.this.onSetShuffleMode(bundle.getInt(MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE));
                } else if (str.equals(MediaSessionCompat.ACTION_SET_RATING)) {
                    Callback.this.onSetRating((RatingCompat) bundle.getParcelable(MediaSessionCompat.ACTION_ARGUMENT_RATING), bundle2);
                } else {
                    Callback.this.onCustomAction(str, bundle);
                }
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onFastForward() {
                Callback.this.onFastForward();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                return Callback.this.onMediaButtonEvent(intent);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onPause() {
                Callback.this.onPause();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlay() {
                Callback.this.onPlay();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                Callback.this.onPlayFromMediaId(str, bundle);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                Callback.this.onPlayFromSearch(str, bundle);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onRewind() {
                Callback.this.onRewind();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSeekTo(long j) {
                Callback.this.onSeekTo(j);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSetRating(Object obj) {
                Callback.this.onSetRating(RatingCompat.fromRating(obj));
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSetRating(Object obj, Bundle bundle) {
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToNext() {
                Callback.this.onSkipToNext();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToPrevious() {
                Callback.this.onSkipToPrevious();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToQueueItem(long j) {
                Callback.this.onSkipToQueueItem(j);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi21.Callback
            public void onStop() {
                Callback.this.onStop();
            }
        }

        @RequiresApi
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$StubApi23 */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Callback$StubApi23.class */
        private class StubApi23 extends StubApi21 implements MediaSessionCompatApi23.Callback {
            StubApi23() {
                super();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi23.Callback
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                Callback.this.onPlayFromUri(uri, bundle);
            }
        }

        @RequiresApi
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Callback$StubApi24 */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Callback$StubApi24.class */
        private class StubApi24 extends StubApi23 implements MediaSessionCompatApi24.Callback {
            StubApi24() {
                super();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepare() {
                Callback.this.onPrepare();
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                Callback.this.onPrepareFromMediaId(str, bundle);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromSearch(String str, Bundle bundle) {
                Callback.this.onPrepareFromSearch(str, bundle);
            }

            @Override // android.support.p001v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                Callback.this.onPrepareFromUri(uri, bundle);
            }
        }

        public Callback() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                this.mCallbackObj = MediaSessionCompatApi24.createCallback(new StubApi24());
            } else if (i >= 23) {
                this.mCallbackObj = MediaSessionCompatApi23.createCallback(new StubApi23());
            } else if (i >= 21) {
                this.mCallbackObj = MediaSessionCompatApi21.createCallback(new StubApi21());
            } else {
                this.mCallbackObj = null;
            }
        }

        void handleMediaPlayPauseKeySingleTapIfPending(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            if (this.mMediaPlayPauseKeyPending) {
                boolean z = false;
                this.mMediaPlayPauseKeyPending = false;
                this.mCallbackHandler.removeMessages(1);
                MediaSessionImpl mediaSessionImpl = this.mSessionImpl.get();
                if (mediaSessionImpl != null) {
                    PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                    long actions = playbackState == null ? 0L : playbackState.getActions();
                    boolean z2 = playbackState != null && playbackState.getState() == 3;
                    boolean z3 = (516 & actions) != 0;
                    if ((actions & 514) != 0) {
                        z = true;
                    }
                    mediaSessionImpl.setCurrentControllerInfo(remoteUserInfo);
                    if (z2 && z) {
                        onPause();
                    } else if (!z2 && z3) {
                        onPlay();
                    }
                    mediaSessionImpl.setCurrentControllerInfo(null);
                }
            }
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onFastForward() {
        }

        public boolean onMediaButtonEvent(Intent intent) {
            MediaSessionImpl mediaSessionImpl;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27 || (mediaSessionImpl = this.mSessionImpl.get()) == null || this.mCallbackHandler == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            MediaSessionManager.RemoteUserInfo currentControllerInfo = mediaSessionImpl.getCurrentControllerInfo();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
                return false;
            } else if (keyEvent.getRepeatCount() > 0) {
                handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
                return true;
            } else if (this.mMediaPlayPauseKeyPending) {
                this.mCallbackHandler.removeMessages(1);
                this.mMediaPlayPauseKeyPending = false;
                PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                if (((playbackState == null ? 0L : playbackState.getActions()) & 32) == 0) {
                    return true;
                }
                onSkipToNext();
                return true;
            } else {
                this.mMediaPlayPauseKeyPending = true;
                CallbackHandler callbackHandler = this.mCallbackHandler;
                callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(1, currentControllerInfo), ViewConfiguration.getDoubleTapTimeout());
                return true;
            }
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Deprecated
        public void onRemoveQueueItemAt(int i) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetCaptioningEnabled(boolean z) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleMode(int i) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onStop() {
        }

        void setSessionImpl(MediaSessionImpl mediaSessionImpl, Handler handler) {
            this.mSessionImpl = new WeakReference<>(mediaSessionImpl);
            CallbackHandler callbackHandler = this.mCallbackHandler;
            if (callbackHandler != null) {
                callbackHandler.removeCallbacksAndMessages(null);
            }
            this.mCallbackHandler = new CallbackHandler(handler.getLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImpl.class */
    public interface MediaSessionImpl {
        String getCallingPackage();

        MediaSessionManager.RemoteUserInfo getCurrentControllerInfo();

        Object getMediaSession();

        PlaybackStateCompat getPlaybackState();

        Object getRemoteControlClient();

        Token getSessionToken();

        boolean isActive();

        void release();

        void sendSessionEvent(String str, Bundle bundle);

        void setActive(boolean z);

        void setCallback(Callback callback, Handler handler);

        void setCaptioningEnabled(boolean z);

        void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setMediaButtonReceiver(PendingIntent pendingIntent);

        void setMetadata(MediaMetadataCompat mediaMetadataCompat);

        void setPlaybackState(PlaybackStateCompat playbackStateCompat);

        void setPlaybackToLocal(int i);

        void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat);

        void setQueue(List<QueueItem> list);

        void setQueueTitle(CharSequence charSequence);

        void setRatingType(int i);

        void setRepeatMode(int i);

        void setSessionActivity(PendingIntent pendingIntent);

        void setShuffleMode(int i);
    }

    @RequiresApi
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18.class */
    static class MediaSessionImplApi18 extends MediaSessionImplBase {
        private static boolean sIsMbrPendingIntentSupported = true;

        MediaSessionImplApi18(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        int getRccTransportControlFlagsFromActions(long j) {
            int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
            int i = rccTransportControlFlagsFromActions;
            if ((j & 256) != 0) {
                i = rccTransportControlFlagsFromActions | Indexable.MAX_URL_LENGTH;
            }
            return i;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        void registerMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
            if (sIsMbrPendingIntentSupported) {
                try {
                    this.mAudioManager.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException e) {
                    Log.w(MediaSessionCompat.TAG, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    sIsMbrPendingIntentSupported = false;
                }
            }
            if (!sIsMbrPendingIntentSupported) {
                super.registerMediaButtonEventReceiver(pendingIntent, componentName);
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(Callback callback, Handler handler) {
            super.setCallback(callback, handler);
            if (callback == null) {
                this.mRcc.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.mRcc.setPlaybackPositionUpdateListener(new RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18.1
                @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
                public void onPlaybackPositionUpdate(long j) {
                    MediaSessionImplApi18.this.postToHandler(18, -1, -1, Long.valueOf(j), null);
                }
            });
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r0v11, types: [android.media.RemoteControlClient] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v10 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4, types: [long] */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r15v7 */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void setRccState(android.support.p001v4.media.session.PlaybackStateCompat r7) {
            /*
                r6 = this;
                r0 = r7
                long r0 = r0.getPosition()
                r8 = r0
                r0 = r7
                float r0 = r0.getPlaybackSpeed()
                r10 = r0
                r0 = r7
                long r0 = r0.getLastPositionUpdateTime()
                r11 = r0
                long r0 = android.os.SystemClock.elapsedRealtime()
                r13 = r0
                r0 = r8
                r15 = r0
                r0 = r7
                int r0 = r0.getState()
                r1 = 3
                if (r0 != r1) goto L_0x0064
                r0 = 0
                r17 = r0
                r0 = r8
                r15 = r0
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0064
                r0 = r17
                r15 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x005e
                r0 = r13
                r1 = r11
                long r0 = r0 - r1
                r17 = r0
                r0 = r17
                r15 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x005e
                r0 = r17
                r15 = r0
                r0 = r10
                r1 = 1065353216(0x3f800000, float:1.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x005e
                r0 = r17
                float r0 = (float) r0
                r1 = r10
                float r0 = r0 * r1
                long r0 = (long) r0
                r15 = r0
            L_0x005e:
                r0 = r8
                r1 = r15
                long r0 = r0 + r1
                r15 = r0
            L_0x0064:
                r0 = r6
                android.media.RemoteControlClient r0 = r0.mRcc
                r1 = r6
                r2 = r7
                int r2 = r2.getState()
                int r1 = r1.getRccStateFromState(r2)
                r2 = r15
                r3 = r10
                r0.setPlaybackState(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplApi18.setRccState(android.support.v4.media.session.PlaybackStateCompat):void");
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
            if (sIsMbrPendingIntentSupported) {
                this.mAudioManager.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.unregisterMediaButtonEventReceiver(pendingIntent, componentName);
            }
        }
    }

    @RequiresApi
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi19 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19.class */
    static class MediaSessionImplApi19 extends MediaSessionImplApi18 {
        MediaSessionImplApi19(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        RemoteControlClient.MetadataEditor buildRccMetadata(Bundle bundle) {
            RemoteControlClient.MetadataEditor buildRccMetadata = super.buildRccMetadata(bundle);
            PlaybackStateCompat playbackStateCompat = this.mState;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.getActions()) & 128) != 0) {
                buildRccMetadata.addEditableKey(268435457);
            }
            if (bundle == null) {
                return buildRccMetadata;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_YEAR)) {
                buildRccMetadata.putLong(8, bundle.getLong(MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_RATING)) {
                buildRccMetadata.putObject(101, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                buildRccMetadata.putObject(268435457, (Object) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return buildRccMetadata;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase
        int getRccTransportControlFlagsFromActions(long j) {
            int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
            int i = rccTransportControlFlagsFromActions;
            if ((j & 128) != 0) {
                i = rccTransportControlFlagsFromActions | 512;
            }
            return i;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(Callback callback, Handler handler) {
            super.setCallback(callback, handler);
            if (callback == null) {
                this.mRcc.setMetadataUpdateListener(null);
                return;
            }
            this.mRcc.setMetadataUpdateListener(new RemoteControlClient.OnMetadataUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi19.1
                @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
                public void onMetadataUpdate(int i, Object obj) {
                    if (i == 268435457 && (obj instanceof Rating)) {
                        MediaSessionImplApi19.this.postToHandler(19, -1, -1, RatingCompat.fromRating(obj), null);
                    }
                }
            });
        }
    }

    @RequiresApi
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21.class */
    static class MediaSessionImplApi21 implements MediaSessionImpl {
        boolean mCaptioningEnabled;
        boolean mDestroyed = false;
        final RemoteCallbackList<IMediaControllerCallback> mExtraControllerCallbacks = new RemoteCallbackList<>();
        MediaMetadataCompat mMetadata;
        PlaybackStateCompat mPlaybackState;
        List<QueueItem> mQueue;
        int mRatingType;
        int mRepeatMode;
        final Object mSessionObj;
        int mShuffleMode;
        final Token mToken;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21$ExtraSession */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession.class */
        class ExtraSession extends IMediaSession.Stub {
            ExtraSession() {
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void adjustVolume(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void fastForward() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                MediaSessionImplApi21 mediaSessionImplApi21 = MediaSessionImplApi21.this;
                return MediaSessionCompat.getStateWithUpdatedPosition(mediaSessionImplApi21.mPlaybackState, mediaSessionImplApi21.mMetadata);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                return null;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getRatingType() {
                return MediaSessionImplApi21.this.mRatingType;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getRepeatMode() {
                return MediaSessionImplApi21.this.mRepeatMode;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getShuffleMode() {
                return MediaSessionImplApi21.this.mShuffleMode;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public String getTag() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return MediaSessionImplApi21.this.mCaptioningEnabled;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void next() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void pause() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void play() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromSearch(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void previous() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rate(RatingCompat ratingCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = MediaSessionImplApi21.this;
                if (!mediaSessionImplApi21.mDestroyed) {
                    String callingPackage = mediaSessionImplApi21.getCallingPackage();
                    String str = callingPackage;
                    if (callingPackage == null) {
                        str = "android.media.session.MediaController";
                    }
                    MediaSessionImplApi21.this.mExtraControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo(str, Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void removeQueueItemAt(int i) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rewind() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void seekTo(long j) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setRepeatMode(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setShuffleMode(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setVolumeTo(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void skipToQueueItem(long j) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void stop() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21.this.mExtraControllerCallbacks.unregister(iMediaControllerCallback);
            }
        }

        MediaSessionImplApi21(Context context, String str, Bundle bundle) {
            this.mSessionObj = MediaSessionCompatApi21.createSession(context, str);
            this.mToken = new Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new ExtraSession(), bundle);
        }

        MediaSessionImplApi21(Object obj) {
            this.mSessionObj = MediaSessionCompatApi21.verifySession(obj);
            this.mToken = new Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new ExtraSession());
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public String getCallingPackage() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return MediaSessionCompatApi24.getCallingPackage(this.mSessionObj);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            return null;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Object getMediaSession() {
            return this.mSessionObj;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public PlaybackStateCompat getPlaybackState() {
            return this.mPlaybackState;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Object getRemoteControlClient() {
            return null;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Token getSessionToken() {
            return this.mToken;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public boolean isActive() {
            return MediaSessionCompatApi21.isActive(this.mSessionObj);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.mDestroyed = true;
            MediaSessionCompatApi21.release(this.mSessionObj);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:9:0x002c). Please submit an issue!!! */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void sendSessionEvent(String str, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 23) {
                for (int beginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.mExtraControllerCallbacks.getBroadcastItem(beginBroadcast).onEvent(str, bundle);
                    } catch (RemoteException e) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
            MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, str, bundle);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setActive(boolean z) {
            MediaSessionCompatApi21.setActive(this.mSessionObj, z);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(Callback callback, Handler handler) {
            MediaSessionCompatApi21.setCallback(this.mSessionObj, callback == null ? null : callback.mCallbackObj, handler);
            if (callback != null) {
                callback.setSessionImpl(this, handler);
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCaptioningEnabled(boolean z) {
            if (this.mCaptioningEnabled != z) {
                this.mCaptioningEnabled = z;
                for (int beginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.mExtraControllerCallbacks.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(z);
                    } catch (RemoteException e) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setExtras(Bundle bundle) {
            MediaSessionCompatApi21.setExtras(this.mSessionObj, bundle);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setFlags(int i) {
            MediaSessionCompatApi21.setFlags(this.mSessionObj, i);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMediaButtonReceiver(PendingIntent pendingIntent) {
            MediaSessionCompatApi21.setMediaButtonReceiver(this.mSessionObj, pendingIntent);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
            this.mMetadata = mediaMetadataCompat;
            MediaSessionCompatApi21.setMetadata(this.mSessionObj, mediaMetadataCompat == null ? null : mediaMetadataCompat.getMediaMetadata());
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004c -> B:7:0x0026). Please submit an issue!!! */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
            this.mPlaybackState = playbackStateCompat;
            for (int beginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mExtraControllerCallbacks.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
            MediaSessionCompatApi21.setPlaybackState(this.mSessionObj, playbackStateCompat == null ? null : playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToLocal(int i) {
            MediaSessionCompatApi21.setPlaybackToLocal(this.mSessionObj, i);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
            MediaSessionCompatApi21.setPlaybackToRemote(this.mSessionObj, volumeProviderCompat.m17980d());
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueue(List<QueueItem> list) {
            ArrayList arrayList;
            this.mQueue = list;
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<QueueItem> it = list.iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    arrayList2.add(it.next().getQueueItem());
                }
            } else {
                arrayList = null;
            }
            MediaSessionCompatApi21.setQueue(this.mSessionObj, arrayList);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueueTitle(CharSequence charSequence) {
            MediaSessionCompatApi21.setQueueTitle(this.mSessionObj, charSequence);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRatingType(int i) {
            if (Build.VERSION.SDK_INT < 22) {
                this.mRatingType = i;
            } else {
                MediaSessionCompatApi22.setRatingType(this.mSessionObj, i);
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRepeatMode(int i) {
            if (this.mRepeatMode != i) {
                this.mRepeatMode = i;
                for (int beginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.mExtraControllerCallbacks.getBroadcastItem(beginBroadcast).onRepeatModeChanged(i);
                    } catch (RemoteException e) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setSessionActivity(PendingIntent pendingIntent) {
            MediaSessionCompatApi21.setSessionActivity(this.mSessionObj, pendingIntent);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003c -> B:9:0x002e). Please submit an issue!!! */
        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setShuffleMode(int i) {
            if (this.mShuffleMode != i) {
                this.mShuffleMode = i;
                for (int beginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.mExtraControllerCallbacks.getBroadcastItem(beginBroadcast).onShuffleModeChanged(i);
                    } catch (RemoteException e) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }
    }

    @RequiresApi
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi28 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28.class */
    static class MediaSessionImplApi28 extends MediaSessionImplApi21 {
        MediaSessionImplApi28(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        MediaSessionImplApi28(Object obj) {
            super(obj);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        @NonNull
        public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            return new MediaSessionManager.RemoteUserInfo(((MediaSession) this.mSessionObj).getCurrentControllerInfo());
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase.class */
    public static class MediaSessionImplBase implements MediaSessionImpl {
        static final int RCC_PLAYSTATE_NONE = 0;
        final AudioManager mAudioManager;
        volatile Callback mCallback;
        boolean mCaptioningEnabled;
        private final Context mContext;
        Bundle mExtras;
        int mFlags;
        private MessageHandler mHandler;
        int mLocalStream;
        private final ComponentName mMediaButtonReceiverComponentName;
        private final PendingIntent mMediaButtonReceiverIntent;
        MediaMetadataCompat mMetadata;
        final String mPackageName;
        List<QueueItem> mQueue;
        CharSequence mQueueTitle;
        int mRatingType;
        final RemoteControlClient mRcc;
        private MediaSessionManager.RemoteUserInfo mRemoteUserInfo;
        int mRepeatMode;
        PendingIntent mSessionActivity;
        int mShuffleMode;
        PlaybackStateCompat mState;
        private final MediaSessionStub mStub;
        final String mTag;
        private final Token mToken;
        VolumeProviderCompat mVolumeProvider;
        int mVolumeType;
        final Object mLock = new Object();
        final RemoteCallbackList<IMediaControllerCallback> mControllerCallbacks = new RemoteCallbackList<>();
        boolean mDestroyed = false;
        boolean mIsActive = false;
        private boolean mIsMbrRegistered = false;
        private boolean mIsRccRegistered = false;
        private VolumeProviderCompat.Callback mVolumeCallback = new VolumeProviderCompat.Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.1
            @Override // androidx.media.VolumeProviderCompat.Callback
            public void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
                if (MediaSessionImplBase.this.mVolumeProvider == volumeProviderCompat) {
                    MediaSessionImplBase mediaSessionImplBase = MediaSessionImplBase.this;
                    MediaSessionImplBase.this.sendVolumeInfoChanged(new ParcelableVolumeInfo(mediaSessionImplBase.mVolumeType, mediaSessionImplBase.mLocalStream, volumeProviderCompat.m17981c(), volumeProviderCompat.m17982b(), volumeProviderCompat.m17983a()));
                }
            }
        };

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$Command */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command.class */
        private static final class Command {
            public final String command;
            public final Bundle extras;
            public final ResultReceiver stub;

            public Command(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.command = str;
                this.extras = bundle;
                this.stub = resultReceiver;
            }
        }

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MediaSessionStub */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub.class */
        class MediaSessionStub extends IMediaSession.Stub {
            MediaSessionStub() {
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(25, mediaDescriptionCompat);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                postToHandler(26, mediaDescriptionCompat, i);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void adjustVolume(int i, int i2, String str) {
                MediaSessionImplBase.this.adjustVolume(i, i2);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void fastForward() throws RemoteException {
                postToHandler(16);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public Bundle getExtras() {
                Bundle bundle;
                synchronized (MediaSessionImplBase.this.mLock) {
                    bundle = MediaSessionImplBase.this.mExtras;
                }
                return bundle;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public long getFlags() {
                long j;
                synchronized (MediaSessionImplBase.this.mLock) {
                    j = MediaSessionImplBase.this.mFlags;
                }
                return j;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                PendingIntent pendingIntent;
                synchronized (MediaSessionImplBase.this.mLock) {
                    pendingIntent = MediaSessionImplBase.this.mSessionActivity;
                }
                return pendingIntent;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                return MediaSessionImplBase.this.mMetadata;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public String getPackageName() {
                return MediaSessionImplBase.this.mPackageName;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (MediaSessionImplBase.this.mLock) {
                    playbackStateCompat = MediaSessionImplBase.this.mState;
                    mediaMetadataCompat = MediaSessionImplBase.this.mMetadata;
                }
                return MediaSessionCompat.getStateWithUpdatedPosition(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                List<QueueItem> list;
                synchronized (MediaSessionImplBase.this.mLock) {
                    list = MediaSessionImplBase.this.mQueue;
                }
                return list;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                return MediaSessionImplBase.this.mQueueTitle;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getRatingType() {
                return MediaSessionImplBase.this.mRatingType;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getRepeatMode() {
                return MediaSessionImplBase.this.mRepeatMode;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public int getShuffleMode() {
                return MediaSessionImplBase.this.mShuffleMode;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public String getTag() {
                return MediaSessionImplBase.this.mTag;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                synchronized (MediaSessionImplBase.this.mLock) {
                    i = MediaSessionImplBase.this.mVolumeType;
                    i2 = MediaSessionImplBase.this.mLocalStream;
                    VolumeProviderCompat volumeProviderCompat = MediaSessionImplBase.this.mVolumeProvider;
                    if (i == 2) {
                        i5 = volumeProviderCompat.m17981c();
                        i4 = volumeProviderCompat.m17982b();
                        i3 = volumeProviderCompat.m17983a();
                    } else {
                        i4 = MediaSessionImplBase.this.mAudioManager.getStreamMaxVolume(i2);
                        i3 = MediaSessionImplBase.this.mAudioManager.getStreamVolume(i2);
                        i5 = 2;
                    }
                }
                return new ParcelableVolumeInfo(i, i2, i5, i4, i3);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return MediaSessionImplBase.this.mCaptioningEnabled;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                return (MediaSessionImplBase.this.mFlags & 2) != 0;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void next() throws RemoteException {
                postToHandler(14);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void pause() throws RemoteException {
                postToHandler(12);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void play() throws RemoteException {
                postToHandler(7);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) throws RemoteException {
                postToHandler(8, str, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromSearch(String str, Bundle bundle) throws RemoteException {
                postToHandler(9, str, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) throws RemoteException {
                postToHandler(10, uri, bundle);
            }

            void postToHandler(int i) {
                MediaSessionImplBase.this.postToHandler(i, 0, 0, null, null);
            }

            void postToHandler(int i, int i2) {
                MediaSessionImplBase.this.postToHandler(i, i2, 0, null, null);
            }

            void postToHandler(int i, Object obj) {
                MediaSessionImplBase.this.postToHandler(i, 0, 0, obj, null);
            }

            void postToHandler(int i, Object obj, int i2) {
                MediaSessionImplBase.this.postToHandler(i, i2, 0, obj, null);
            }

            void postToHandler(int i, Object obj, Bundle bundle) {
                MediaSessionImplBase.this.postToHandler(i, 0, 0, obj, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                postToHandler(3);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromMediaId(String str, Bundle bundle) throws RemoteException {
                postToHandler(4, str, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromSearch(String str, Bundle bundle) throws RemoteException {
                postToHandler(5, str, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void prepareFromUri(Uri uri, Bundle bundle) throws RemoteException {
                postToHandler(6, uri, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void previous() throws RemoteException {
                postToHandler(15);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rate(RatingCompat ratingCompat) throws RemoteException {
                postToHandler(19, ratingCompat);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                postToHandler(31, ratingCompat, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                if (MediaSessionImplBase.this.mDestroyed) {
                    try {
                        iMediaControllerCallback.onSessionDestroyed();
                    } catch (Exception e) {
                    }
                } else {
                    MediaSessionImplBase.this.mControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(27, mediaDescriptionCompat);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void removeQueueItemAt(int i) {
                postToHandler(28, i);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void rewind() throws RemoteException {
                postToHandler(17);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void seekTo(long j) throws RemoteException {
                postToHandler(18, Long.valueOf(j));
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                postToHandler(1, new Command(str, bundle, resultReceiverWrapper.mResultReceiver));
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) throws RemoteException {
                postToHandler(20, str, bundle);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                boolean z = true;
                if ((MediaSessionImplBase.this.mFlags & 1) == 0) {
                    z = false;
                }
                if (z) {
                    postToHandler(21, keyEvent);
                }
                return z;
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) throws RemoteException {
                postToHandler(29, Boolean.valueOf(z));
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setRepeatMode(int i) throws RemoteException {
                postToHandler(23, i);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setShuffleMode(int i) throws RemoteException {
                postToHandler(30, i);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) throws RemoteException {
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void setVolumeTo(int i, int i2, String str) {
                MediaSessionImplBase.this.setVolumeTo(i, i2);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void skipToQueueItem(long j) {
                postToHandler(11, Long.valueOf(j));
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void stop() throws RemoteException {
                postToHandler(13);
            }

            @Override // android.support.p001v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplBase.this.mControllerCallbacks.unregister(iMediaControllerCallback);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MessageHandler */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler.class */
        public class MessageHandler extends Handler {
            private static final int KEYCODE_MEDIA_PAUSE = 127;
            private static final int KEYCODE_MEDIA_PLAY = 126;
            private static final int MSG_ADD_QUEUE_ITEM = 25;
            private static final int MSG_ADD_QUEUE_ITEM_AT = 26;
            private static final int MSG_ADJUST_VOLUME = 2;
            private static final int MSG_COMMAND = 1;
            private static final int MSG_CUSTOM_ACTION = 20;
            private static final int MSG_FAST_FORWARD = 16;
            private static final int MSG_MEDIA_BUTTON = 21;
            private static final int MSG_NEXT = 14;
            private static final int MSG_PAUSE = 12;
            private static final int MSG_PLAY = 7;
            private static final int MSG_PLAY_MEDIA_ID = 8;
            private static final int MSG_PLAY_SEARCH = 9;
            private static final int MSG_PLAY_URI = 10;
            private static final int MSG_PREPARE = 3;
            private static final int MSG_PREPARE_MEDIA_ID = 4;
            private static final int MSG_PREPARE_SEARCH = 5;
            private static final int MSG_PREPARE_URI = 6;
            private static final int MSG_PREVIOUS = 15;
            private static final int MSG_RATE = 19;
            private static final int MSG_RATE_EXTRA = 31;
            private static final int MSG_REMOVE_QUEUE_ITEM = 27;
            private static final int MSG_REMOVE_QUEUE_ITEM_AT = 28;
            private static final int MSG_REWIND = 17;
            private static final int MSG_SEEK_TO = 18;
            private static final int MSG_SET_CAPTIONING_ENABLED = 29;
            private static final int MSG_SET_REPEAT_MODE = 23;
            private static final int MSG_SET_SHUFFLE_MODE = 30;
            private static final int MSG_SET_VOLUME = 22;
            private static final int MSG_SKIP_TO_ITEM = 11;
            private static final int MSG_STOP = 13;

            public MessageHandler(Looper looper) {
                super(looper);
            }

            private void onMediaButtonEvent(KeyEvent keyEvent, Callback callback) {
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    PlaybackStateCompat playbackStateCompat = MediaSessionImplBase.this.mState;
                    long actions = playbackStateCompat == null ? 0L : playbackStateCompat.getActions();
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode != 79) {
                        if (keyCode != 126) {
                            if (keyCode != 127) {
                                switch (keyCode) {
                                    case 85:
                                        break;
                                    case 86:
                                        if ((actions & 1) != 0) {
                                            callback.onStop();
                                            return;
                                        }
                                        return;
                                    case 87:
                                        if ((actions & 32) != 0) {
                                            callback.onSkipToNext();
                                            return;
                                        }
                                        return;
                                    case 88:
                                        if ((actions & 16) != 0) {
                                            callback.onSkipToPrevious();
                                            return;
                                        }
                                        return;
                                    case 89:
                                        if ((actions & 8) != 0) {
                                            callback.onRewind();
                                            return;
                                        }
                                        return;
                                    case 90:
                                        if ((actions & 64) != 0) {
                                            callback.onFastForward();
                                            return;
                                        }
                                        return;
                                    default:
                                        return;
                                }
                            } else if ((actions & 2) != 0) {
                                callback.onPause();
                                return;
                            } else {
                                return;
                            }
                        } else if ((actions & 4) != 0) {
                            callback.onPlay();
                            return;
                        } else {
                            return;
                        }
                    }
                    Log.w(MediaSessionCompat.TAG, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Callback callback = MediaSessionImplBase.this.mCallback;
                if (callback != null) {
                    Bundle data = message.getData();
                    MediaSessionCompat.ensureClassLoader(data);
                    MediaSessionImplBase.this.setCurrentControllerInfo(new MediaSessionManager.RemoteUserInfo(data.getString(MediaSessionCompat.DATA_CALLING_PACKAGE), data.getInt(MediaSessionCompat.DATA_CALLING_PID), data.getInt(MediaSessionCompat.DATA_CALLING_UID)));
                    Bundle bundle = data.getBundle(MediaSessionCompat.DATA_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle);
                    try {
                        switch (message.what) {
                            case 1:
                                Command command = (Command) message.obj;
                                callback.onCommand(command.command, command.extras, command.stub);
                                break;
                            case 2:
                                MediaSessionImplBase.this.adjustVolume(message.arg1, 0);
                                break;
                            case 3:
                                callback.onPrepare();
                                break;
                            case 4:
                                callback.onPrepareFromMediaId((String) message.obj, bundle);
                                break;
                            case 5:
                                callback.onPrepareFromSearch((String) message.obj, bundle);
                                break;
                            case 6:
                                callback.onPrepareFromUri((Uri) message.obj, bundle);
                                break;
                            case 7:
                                callback.onPlay();
                                break;
                            case 8:
                                callback.onPlayFromMediaId((String) message.obj, bundle);
                                break;
                            case 9:
                                callback.onPlayFromSearch((String) message.obj, bundle);
                                break;
                            case 10:
                                callback.onPlayFromUri((Uri) message.obj, bundle);
                                break;
                            case 11:
                                callback.onSkipToQueueItem(((Long) message.obj).longValue());
                                break;
                            case 12:
                                callback.onPause();
                                break;
                            case 13:
                                callback.onStop();
                                break;
                            case 14:
                                callback.onSkipToNext();
                                break;
                            case 15:
                                callback.onSkipToPrevious();
                                break;
                            case 16:
                                callback.onFastForward();
                                break;
                            case 17:
                                callback.onRewind();
                                break;
                            case 18:
                                callback.onSeekTo(((Long) message.obj).longValue());
                                break;
                            case 19:
                                callback.onSetRating((RatingCompat) message.obj);
                                break;
                            case 20:
                                callback.onCustomAction((String) message.obj, bundle);
                                break;
                            case 21:
                                KeyEvent keyEvent = (KeyEvent) message.obj;
                                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                                intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                                if (!callback.onMediaButtonEvent(intent)) {
                                    onMediaButtonEvent(keyEvent, callback);
                                    break;
                                }
                                break;
                            case 22:
                                MediaSessionImplBase.this.setVolumeTo(message.arg1, 0);
                                break;
                            case 23:
                                callback.onSetRepeatMode(message.arg1);
                                break;
                            case 25:
                                callback.onAddQueueItem((MediaDescriptionCompat) message.obj);
                                break;
                            case 26:
                                callback.onAddQueueItem((MediaDescriptionCompat) message.obj, message.arg1);
                                break;
                            case 27:
                                callback.onRemoveQueueItem((MediaDescriptionCompat) message.obj);
                                break;
                            case 28:
                                if (MediaSessionImplBase.this.mQueue != null) {
                                    QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= MediaSessionImplBase.this.mQueue.size()) ? null : MediaSessionImplBase.this.mQueue.get(message.arg1);
                                    if (queueItem != null) {
                                        callback.onRemoveQueueItem(queueItem.getDescription());
                                        break;
                                    }
                                }
                                break;
                            case 29:
                                callback.onSetCaptioningEnabled(((Boolean) message.obj).booleanValue());
                                break;
                            case 30:
                                callback.onSetShuffleMode(message.arg1);
                                break;
                            case 31:
                                callback.onSetRating((RatingCompat) message.obj, bundle);
                                break;
                        }
                    } finally {
                        MediaSessionImplBase.this.setCurrentControllerInfo(null);
                    }
                }
            }
        }

        public MediaSessionImplBase(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName != null) {
                this.mContext = context;
                this.mPackageName = context.getPackageName();
                this.mAudioManager = (AudioManager) context.getSystemService("audio");
                this.mTag = str;
                this.mMediaButtonReceiverComponentName = componentName;
                this.mMediaButtonReceiverIntent = pendingIntent;
                this.mStub = new MediaSessionStub();
                this.mToken = new Token(this.mStub);
                this.mRatingType = 0;
                this.mVolumeType = 1;
                this.mLocalStream = 3;
                this.mRcc = new RemoteControlClient(pendingIntent);
                return;
            }
            throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendCaptioningEnabled(boolean z) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onCaptioningEnabledChanged(z);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0032 -> B:7:0x0024). Please submit an issue!!! */
        private void sendEvent(String str, Bundle bundle) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onEvent(str, bundle);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendExtras(Bundle bundle) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onExtrasChanged(bundle);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendMetadata(MediaMetadataCompat mediaMetadataCompat) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onMetadataChanged(mediaMetadataCompat);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendQueue(List<QueueItem> list) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onQueueChanged(list);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendQueueTitle(CharSequence charSequence) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onQueueTitleChanged(charSequence);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendRepeatMode(int i) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onRepeatModeChanged(i);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:7:0x0020). Please submit an issue!!! */
        private void sendSessionDestroyed() {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onSessionDestroyed();
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
            this.mControllerCallbacks.kill();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendShuffleMode(int i) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onShuffleModeChanged(i);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        private void sendState(PlaybackStateCompat playbackStateCompat) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onPlaybackStateChanged(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        void adjustVolume(int i, int i2) {
            if (this.mVolumeType == 2) {
                VolumeProviderCompat volumeProviderCompat = this.mVolumeProvider;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.m17979e(i);
                    return;
                }
                return;
            }
            this.mAudioManager.adjustStreamVolume(this.mLocalStream, i, i2);
        }

        RemoteControlClient.MetadataEditor buildRccMetadata(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.mRcc.editMetadata(true);
            if (bundle == null) {
                return editMetadata;
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ART)) {
                Bitmap bitmap = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ART);
                Bitmap bitmap2 = bitmap;
                if (bitmap != null) {
                    bitmap2 = bitmap.copy(bitmap.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap2);
            } else if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ART)) {
                Bitmap bitmap3 = (Bitmap) bundle.getParcelable(MediaMetadataCompat.METADATA_KEY_ALBUM_ART);
                Bitmap bitmap4 = bitmap3;
                if (bitmap3 != null) {
                    bitmap4 = bitmap3.copy(bitmap3.getConfig(), false);
                }
                editMetadata.putBitmap(100, bitmap4);
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
                editMetadata.putString(1, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST)) {
                editMetadata.putString(13, bundle.getString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
                editMetadata.putString(2, bundle.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_AUTHOR)) {
                editMetadata.putString(3, bundle.getString(MediaMetadataCompat.METADATA_KEY_AUTHOR));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPILATION)) {
                editMetadata.putString(15, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPILATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_COMPOSER)) {
                editMetadata.putString(4, bundle.getString(MediaMetadataCompat.METADATA_KEY_COMPOSER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DATE)) {
                editMetadata.putString(5, bundle.getString(MediaMetadataCompat.METADATA_KEY_DATE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER)) {
                editMetadata.putLong(14, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                editMetadata.putLong(9, bundle.getLong(MediaMetadataCompat.METADATA_KEY_DURATION));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_GENRE)) {
                editMetadata.putString(6, bundle.getString(MediaMetadataCompat.METADATA_KEY_GENRE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
                editMetadata.putString(7, bundle.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER)) {
                editMetadata.putLong(0, bundle.getLong(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER));
            }
            if (bundle.containsKey(MediaMetadataCompat.METADATA_KEY_WRITER)) {
                editMetadata.putString(11, bundle.getString(MediaMetadataCompat.METADATA_KEY_WRITER));
            }
            return editMetadata;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public String getCallingPackage() {
            return null;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.mLock) {
                remoteUserInfo = this.mRemoteUserInfo;
            }
            return remoteUserInfo;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Object getMediaSession() {
            return null;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public PlaybackStateCompat getPlaybackState() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.mLock) {
                playbackStateCompat = this.mState;
            }
            return playbackStateCompat;
        }

        int getRccStateFromState(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        int getRccTransportControlFlagsFromActions(long j) {
            int i = (1 & j) != 0 ? 32 : 0;
            int i2 = i;
            if ((2 & j) != 0) {
                i2 = i | 16;
            }
            int i3 = i2;
            if ((4 & j) != 0) {
                i3 = i2 | 4;
            }
            int i4 = i3;
            if ((8 & j) != 0) {
                i4 = i3 | 2;
            }
            int i5 = i4;
            if ((16 & j) != 0) {
                i5 = i4 | 1;
            }
            int i6 = i5;
            if ((32 & j) != 0) {
                i6 = i5 | 128;
            }
            int i7 = i6;
            if ((64 & j) != 0) {
                i7 = i6 | 64;
            }
            int i8 = i7;
            if ((j & 512) != 0) {
                i8 = i7 | 8;
            }
            return i8;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Object getRemoteControlClient() {
            return null;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Token getSessionToken() {
            return this.mToken;
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public boolean isActive() {
            return this.mIsActive;
        }

        void postToHandler(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.mLock) {
                if (this.mHandler != null) {
                    Message obtainMessage = this.mHandler.obtainMessage(i, i2, i3, obj);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(MediaSessionCompat.DATA_CALLING_PACKAGE, "android.media.session.MediaController");
                    bundle2.putInt(MediaSessionCompat.DATA_CALLING_PID, Binder.getCallingPid());
                    bundle2.putInt(MediaSessionCompat.DATA_CALLING_UID, Binder.getCallingUid());
                    if (bundle != null) {
                        bundle2.putBundle(MediaSessionCompat.DATA_EXTRAS, bundle);
                    }
                    obtainMessage.setData(bundle2);
                    obtainMessage.sendToTarget();
                }
            }
        }

        void registerMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
            this.mAudioManager.registerMediaButtonEventReceiver(componentName);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.mIsActive = false;
            this.mDestroyed = true;
            update();
            sendSessionDestroyed();
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void sendSessionEvent(String str, Bundle bundle) {
            sendEvent(str, bundle);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:7:0x0021). Please submit an issue!!! */
        void sendVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int beginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                try {
                    this.mControllerCallbacks.getBroadcastItem(beginBroadcast).onVolumeInfoChanged(parcelableVolumeInfo);
                } catch (RemoteException e) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setActive(boolean z) {
            if (z != this.mIsActive) {
                this.mIsActive = z;
                if (update()) {
                    setMetadata(this.mMetadata);
                    setPlaybackState(this.mState);
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(Callback callback, Handler handler) {
            this.mCallback = callback;
            if (callback != null) {
                Handler handler2 = handler;
                if (handler == null) {
                    handler2 = new Handler();
                }
                synchronized (this.mLock) {
                    if (this.mHandler != null) {
                        this.mHandler.removeCallbacksAndMessages(null);
                    }
                    this.mHandler = new MessageHandler(handler2.getLooper());
                    this.mCallback.setSessionImpl(this, handler2);
                }
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCaptioningEnabled(boolean z) {
            if (this.mCaptioningEnabled != z) {
                this.mCaptioningEnabled = z;
                sendCaptioningEnabled(z);
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.mLock) {
                this.mRemoteUserInfo = remoteUserInfo;
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setExtras(Bundle bundle) {
            this.mExtras = bundle;
            sendExtras(bundle);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setFlags(int i) {
            synchronized (this.mLock) {
                this.mFlags = i;
            }
            update();
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
            MediaMetadataCompat mediaMetadataCompat2 = mediaMetadataCompat;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat2 = new MediaMetadataCompat.Builder(mediaMetadataCompat, MediaSessionCompat.sMaxBitmapSize).build();
            }
            synchronized (this.mLock) {
                this.mMetadata = mediaMetadataCompat2;
            }
            sendMetadata(mediaMetadataCompat2);
            if (this.mIsActive) {
                buildRccMetadata(mediaMetadataCompat2 == null ? null : mediaMetadataCompat2.getBundle()).apply();
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.mLock) {
                this.mState = playbackStateCompat;
            }
            sendState(playbackStateCompat);
            if (this.mIsActive) {
                if (playbackStateCompat == null) {
                    this.mRcc.setPlaybackState(0);
                    this.mRcc.setTransportControlFlags(0);
                    return;
                }
                setRccState(playbackStateCompat);
                this.mRcc.setTransportControlFlags(getRccTransportControlFlagsFromActions(playbackStateCompat.getActions()));
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToLocal(int i) {
            VolumeProviderCompat volumeProviderCompat = this.mVolumeProvider;
            if (volumeProviderCompat != null) {
                volumeProviderCompat.m17977g(null);
            }
            this.mLocalStream = i;
            this.mVolumeType = 1;
            int i2 = this.mVolumeType;
            int i3 = this.mLocalStream;
            sendVolumeInfoChanged(new ParcelableVolumeInfo(i2, i3, 2, this.mAudioManager.getStreamMaxVolume(i3), this.mAudioManager.getStreamVolume(this.mLocalStream)));
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
            if (volumeProviderCompat != null) {
                VolumeProviderCompat volumeProviderCompat2 = this.mVolumeProvider;
                if (volumeProviderCompat2 != null) {
                    volumeProviderCompat2.m17977g(null);
                }
                this.mVolumeType = 2;
                this.mVolumeProvider = volumeProviderCompat;
                sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, this.mVolumeProvider.m17981c(), this.mVolumeProvider.m17982b(), this.mVolumeProvider.m17983a()));
                volumeProviderCompat.m17977g(this.mVolumeCallback);
                return;
            }
            throw new IllegalArgumentException("volumeProvider may not be null");
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueue(List<QueueItem> list) {
            this.mQueue = list;
            sendQueue(list);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueueTitle(CharSequence charSequence) {
            this.mQueueTitle = charSequence;
            sendQueueTitle(charSequence);
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRatingType(int i) {
            this.mRatingType = i;
        }

        void setRccState(PlaybackStateCompat playbackStateCompat) {
            this.mRcc.setPlaybackState(getRccStateFromState(playbackStateCompat.getState()));
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRepeatMode(int i) {
            if (this.mRepeatMode != i) {
                this.mRepeatMode = i;
                sendRepeatMode(i);
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setSessionActivity(PendingIntent pendingIntent) {
            synchronized (this.mLock) {
                this.mSessionActivity = pendingIntent;
            }
        }

        @Override // android.support.p001v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setShuffleMode(int i) {
            if (this.mShuffleMode != i) {
                this.mShuffleMode = i;
                sendShuffleMode(i);
            }
        }

        void setVolumeTo(int i, int i2) {
            if (this.mVolumeType == 2) {
                VolumeProviderCompat volumeProviderCompat = this.mVolumeProvider;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.m17978f(i);
                    return;
                }
                return;
            }
            this.mAudioManager.setStreamVolume(this.mLocalStream, i, i2);
        }

        void unregisterMediaButtonEventReceiver(PendingIntent pendingIntent, ComponentName componentName) {
            this.mAudioManager.unregisterMediaButtonEventReceiver(componentName);
        }

        boolean update() {
            boolean z = true;
            if (this.mIsActive) {
                if (!this.mIsMbrRegistered && (this.mFlags & 1) != 0) {
                    registerMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                    this.mIsMbrRegistered = true;
                } else if (this.mIsMbrRegistered && (this.mFlags & 1) == 0) {
                    unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                    this.mIsMbrRegistered = false;
                }
                if (!this.mIsRccRegistered && (this.mFlags & 2) != 0) {
                    this.mAudioManager.registerRemoteControlClient(this.mRcc);
                    this.mIsRccRegistered = true;
                    return z;
                } else if (this.mIsRccRegistered && (this.mFlags & 2) == 0) {
                    this.mRcc.setPlaybackState(0);
                    this.mAudioManager.unregisterRemoteControlClient(this.mRcc);
                    this.mIsRccRegistered = false;
                }
            } else {
                if (this.mIsMbrRegistered) {
                    unregisterMediaButtonEventReceiver(this.mMediaButtonReceiverIntent, this.mMediaButtonReceiverComponentName);
                    this.mIsMbrRegistered = false;
                }
                if (this.mIsRccRegistered) {
                    this.mRcc.setPlaybackState(0);
                    this.mAudioManager.unregisterRemoteControlClient(this.mRcc);
                    this.mIsRccRegistered = false;
                }
            }
            z = false;
            return z;
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$OnActiveChangeListener */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener.class */
    public interface OnActiveChangeListener {
        void onActiveChanged();
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private Object mItem;

        QueueItem(Parcel parcel) {
            this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            } else if (j != -1) {
                this.mDescription = mediaDescriptionCompat;
                this.mId = j;
                this.mItem = obj;
            } else {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
        }

        public static QueueItem fromQueueItem(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompatApi21.QueueItem.getDescription(obj)), MediaSessionCompatApi21.QueueItem.getQueueId(obj));
        }

        public static List<QueueItem> fromQueueItemList(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(fromQueueItem(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public Object getQueueItem() {
            if (this.mItem != null || Build.VERSION.SDK_INT < 21) {
                return this.mItem;
            }
            Object createItem = MediaSessionCompatApi21.QueueItem.createItem(this.mDescription.getMediaDescription(), this.mId);
            this.mItem = createItem;
            return createItem;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.mDescription.writeToParcel(parcel, i);
            parcel.writeLong(this.mId);
        }
    }

    @RestrictTo
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };
        ResultReceiver mResultReceiver;

        ResultReceiverWrapper(Parcel parcel) {
            this.mResultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public ResultReceiverWrapper(ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.mResultReceiver.writeToParcel(parcel, i);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* renamed from: android.support.v4.media.session.MediaSessionCompat$SessionFlags */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$SessionFlags.class */
    public @interface SessionFlags {
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i) {
                return new Token[i];
            }
        };
        private IMediaSession mExtraBinder;
        private final Object mInner;
        private Bundle mSessionToken2Bundle;

        Token(Object obj) {
            this(obj, null, null);
        }

        Token(Object obj, IMediaSession iMediaSession) {
            this(obj, iMediaSession, null);
        }

        Token(Object obj, IMediaSession iMediaSession, Bundle bundle) {
            this.mInner = obj;
            this.mExtraBinder = iMediaSession;
            this.mSessionToken2Bundle = bundle;
        }

        @RestrictTo
        public static Token fromBundle(Bundle bundle) {
            Token token = null;
            if (bundle == null) {
                return null;
            }
            IMediaSession asInterface = IMediaSession.Stub.asInterface(BundleCompat.m19834a(bundle, MediaSessionCompat.KEY_EXTRA_BINDER));
            Bundle bundle2 = bundle.getBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE);
            Token token2 = (Token) bundle.getParcelable(MediaSessionCompat.KEY_TOKEN);
            if (token2 != null) {
                token = new Token(token2.mInner, asInterface, bundle2);
            }
            return token;
        }

        public static Token fromToken(Object obj) {
            return fromToken(obj, null);
        }

        @RestrictTo
        public static Token fromToken(Object obj, IMediaSession iMediaSession) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(MediaSessionCompatApi21.verifyToken(obj), iMediaSession);
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
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.mInner;
            if (obj2 == null) {
                if (token.mInner != null) {
                    z = false;
                }
                return z;
            }
            Object obj3 = token.mInner;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        @RestrictTo
        public IMediaSession getExtraBinder() {
            return this.mExtraBinder;
        }

        @RestrictTo
        public Bundle getSessionToken2Bundle() {
            return this.mSessionToken2Bundle;
        }

        public Object getToken() {
            return this.mInner;
        }

        public int hashCode() {
            Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @RestrictTo
        public void setExtraBinder(IMediaSession iMediaSession) {
            this.mExtraBinder = iMediaSession;
        }

        @RestrictTo
        public void setSessionToken2Bundle(Bundle bundle) {
            this.mSessionToken2Bundle = bundle;
        }

        @RestrictTo
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaSessionCompat.KEY_TOKEN, this);
            IMediaSession iMediaSession = this.mExtraBinder;
            if (iMediaSession != null) {
                BundleCompat.m19833b(bundle, MediaSessionCompat.KEY_EXTRA_BINDER, iMediaSession.asBinder());
            }
            Bundle bundle2 = this.mSessionToken2Bundle;
            if (bundle2 != null) {
                bundle.putBundle(MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE, bundle2);
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.mInner, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.mInner);
            }
        }
    }

    private MediaSessionCompat(Context context, MediaSessionImpl mediaSessionImpl) {
        this.mActiveListeners = new ArrayList<>();
        this.mImpl = mediaSessionImpl;
        if (Build.VERSION.SDK_INT >= 21 && !MediaSessionCompatApi21.hasCallback(mediaSessionImpl.getMediaSession())) {
            setCallback(new Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.3
            });
        }
        this.mController = new MediaControllerCompat(context, this);
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    private MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this.mActiveListeners = new ArrayList<>();
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        } else if (!TextUtils.isEmpty(str)) {
            ComponentName componentName2 = componentName;
            if (componentName == null) {
                ComponentName a = MediaButtonReceiver.m17962a(context);
                componentName2 = a;
                if (a == null) {
                    Log.w(TAG, "Couldn't find a unique registered media button receiver in the given context.");
                    componentName2 = a;
                }
            }
            PendingIntent pendingIntent2 = pendingIntent;
            if (componentName2 != null) {
                pendingIntent2 = pendingIntent;
                if (pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName2);
                    pendingIntent2 = PendingIntent.getBroadcast(context, 0, intent, 0);
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                this.mImpl = new MediaSessionImplApi28(context, str, bundle);
                setCallback(new Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.1
                });
                this.mImpl.setMediaButtonReceiver(pendingIntent2);
            } else if (i >= 21) {
                this.mImpl = new MediaSessionImplApi21(context, str, bundle);
                setCallback(new Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.2
                });
                this.mImpl.setMediaButtonReceiver(pendingIntent2);
            } else if (i >= 19) {
                this.mImpl = new MediaSessionImplApi19(context, str, componentName2, pendingIntent2);
            } else if (i >= 18) {
                this.mImpl = new MediaSessionImplApi18(context, str, componentName2, pendingIntent2);
            } else {
                this.mImpl = new MediaSessionImplBase(context, str, componentName2, pendingIntent2);
            }
            this.mController = new MediaControllerCompat(context, this);
            if (sMaxBitmapSize == 0) {
                sMaxBitmapSize = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
            }
        } else {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
    }

    @RestrictTo
    public MediaSessionCompat(Context context, String str, Bundle bundle) {
        this(context, str, null, null, bundle);
    }

    @RestrictTo
    public static void ensureClassLoader(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public static MediaSessionCompat fromMediaSession(Context context, Object obj) {
        if (context == null || obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        return new MediaSessionCompat(context, new MediaSessionImplApi21(obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r8.getState() == 5) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
        if (r0 > 0) goto L_0x0096;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.support.v4.media.session.PlaybackStateCompat$Builder] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.support.p001v4.media.session.PlaybackStateCompat getStateWithUpdatedPosition(android.support.p001v4.media.session.PlaybackStateCompat r8, android.support.p001v4.media.MediaMetadataCompat r9) {
        /*
            r0 = r8
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b0
            r0 = r8
            long r0 = r0.getPosition()
            r11 = r0
            r0 = -1
            r13 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001d
            r0 = r8
            r10 = r0
            goto L_0x00b0
        L_0x001d:
            r0 = r8
            int r0 = r0.getState()
            r1 = 3
            if (r0 == r1) goto L_0x0037
            r0 = r8
            int r0 = r0.getState()
            r1 = 4
            if (r0 == r1) goto L_0x0037
            r0 = r8
            r10 = r0
            r0 = r8
            int r0 = r0.getState()
            r1 = 5
            if (r0 != r1) goto L_0x00b0
        L_0x0037:
            r0 = r8
            long r0 = r0.getLastPositionUpdateTime()
            r11 = r0
            r0 = r8
            r10 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00b0
            long r0 = android.os.SystemClock.elapsedRealtime()
            r15 = r0
            r0 = r8
            float r0 = r0.getPlaybackSpeed()
            r1 = r15
            r2 = r11
            long r1 = r1 - r2
            float r1 = (float) r1
            float r0 = r0 * r1
            long r0 = (long) r0
            r1 = r8
            long r1 = r1.getPosition()
            long r0 = r0 + r1
            r17 = r0
            r0 = r13
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0077
            r0 = r13
            r11 = r0
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0077
            r0 = r9
            java.lang.String r1 = "android.media.metadata.DURATION"
            long r0 = r0.getLong(r1)
            r11 = r0
        L_0x0077:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0087
            r0 = r17
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0087
            goto L_0x0096
        L_0x0087:
            r0 = r17
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0093
            r0 = 0
            r11 = r0
            goto L_0x0096
        L_0x0093:
            r0 = r17
            r11 = r0
        L_0x0096:
            android.support.v4.media.session.PlaybackStateCompat$Builder r0 = new android.support.v4.media.session.PlaybackStateCompat$Builder
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r1 = r8
            int r1 = r1.getState()
            r2 = r11
            r3 = r8
            float r3 = r3.getPlaybackSpeed()
            r4 = r15
            android.support.v4.media.session.PlaybackStateCompat$Builder r0 = r0.setState(r1, r2, r3, r4)
            android.support.v4.media.session.PlaybackStateCompat r0 = r0.build()
            r10 = r0
        L_0x00b0:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.getStateWithUpdatedPosition(android.support.v4.media.session.PlaybackStateCompat, android.support.v4.media.MediaMetadataCompat):android.support.v4.media.session.PlaybackStateCompat");
    }

    public void addOnActiveChangeListener(OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener != null) {
            this.mActiveListeners.add(onActiveChangeListener);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    @RestrictTo
    public String getCallingPackage() {
        return this.mImpl.getCallingPackage();
    }

    public MediaControllerCompat getController() {
        return this.mController;
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
        return this.mImpl.getCurrentControllerInfo();
    }

    public Object getMediaSession() {
        return this.mImpl.getMediaSession();
    }

    public Object getRemoteControlClient() {
        return this.mImpl.getRemoteControlClient();
    }

    public Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public boolean isActive() {
        return this.mImpl.isActive();
    }

    public void release() {
        this.mImpl.release();
    }

    public void removeOnActiveChangeListener(OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener != null) {
            this.mActiveListeners.remove(onActiveChangeListener);
            return;
        }
        throw new IllegalArgumentException("Listener may not be null");
    }

    public void sendSessionEvent(String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.mImpl.sendSessionEvent(str, bundle);
            return;
        }
        throw new IllegalArgumentException("event cannot be null or empty");
    }

    public void setActive(boolean z) {
        this.mImpl.setActive(z);
        Iterator<OnActiveChangeListener> it = this.mActiveListeners.iterator();
        while (it.hasNext()) {
            it.next().onActiveChanged();
        }
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }

    public void setCallback(Callback callback, Handler handler) {
        if (callback == null) {
            this.mImpl.setCallback(null, null);
            return;
        }
        MediaSessionImpl mediaSessionImpl = this.mImpl;
        if (handler == null) {
            handler = new Handler();
        }
        mediaSessionImpl.setCallback(callback, handler);
    }

    public void setCaptioningEnabled(boolean z) {
        this.mImpl.setCaptioningEnabled(z);
    }

    public void setExtras(Bundle bundle) {
        this.mImpl.setExtras(bundle);
    }

    public void setFlags(int i) {
        this.mImpl.setFlags(i);
    }

    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        this.mImpl.setMediaButtonReceiver(pendingIntent);
    }

    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        this.mImpl.setMetadata(mediaMetadataCompat);
    }

    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        this.mImpl.setPlaybackState(playbackStateCompat);
    }

    public void setPlaybackToLocal(int i) {
        this.mImpl.setPlaybackToLocal(i);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        if (volumeProviderCompat != null) {
            this.mImpl.setPlaybackToRemote(volumeProviderCompat);
            return;
        }
        throw new IllegalArgumentException("volumeProvider may not be null!");
    }

    public void setQueue(List<QueueItem> list) {
        this.mImpl.setQueue(list);
    }

    public void setQueueTitle(CharSequence charSequence) {
        this.mImpl.setQueueTitle(charSequence);
    }

    public void setRatingType(int i) {
        this.mImpl.setRatingType(i);
    }

    public void setRepeatMode(int i) {
        this.mImpl.setRepeatMode(i);
    }

    public void setSessionActivity(PendingIntent pendingIntent) {
        this.mImpl.setSessionActivity(pendingIntent);
    }

    public void setShuffleMode(int i) {
        this.mImpl.setShuffleMode(i);
    }
}
