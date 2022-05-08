package androidx.media2.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.media2.common.BaseResult;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.widget.PlayerWrapper;
import androidx.media2.widget.SelectiveLayout;
import androidx.media2.widget.SubtitleController;
import androidx.media2.widget.VideoViewInterface;
import androidx.palette.graphics.Palette;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView.class */
public class VideoView extends SelectiveLayout {
    public static final int VIEW_TYPE_SURFACEVIEW = 0;
    public static final int VIEW_TYPE_TEXTUREVIEW = 1;
    public int mAudioTrackCount;
    public VideoViewInterface mCurrentView;
    public MediaControlView mMediaControlView;
    public MusicView mMusicView;
    public PlayerWrapper mPlayer;
    public SessionPlayer.TrackInfo mSelectedSubtitleTrackInfo;
    public SelectiveLayout.LayoutParams mSelectiveLayoutParams;
    public SubtitleAnchorView mSubtitleAnchorView;
    public SubtitleController mSubtitleController;
    public Map<SessionPlayer.TrackInfo, SubtitleTrack> mSubtitleTracks;
    public final VideoViewInterface.SurfaceListener mSurfaceListener;
    public VideoSurfaceView mSurfaceView;
    public VideoViewInterface mTargetView;
    public VideoTextureView mTextureView;
    public int mVideoTrackCount;
    public OnViewTypeChangedListener mViewTypeChangedListener;
    public static final String TAG = "VideoView";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$OnViewTypeChangedListener.class */
    public interface OnViewTypeChangedListener {
        void onViewTypeChanged(@NonNull View view, int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$PlayerCallback.class */
    public class PlayerCallback extends PlayerWrapper.PlayerCallback {
        public PlayerCallback() {
        }

        private boolean shouldIgnoreCallback(@NonNull PlayerWrapper playerWrapper) {
            if (playerWrapper == VideoView.this.mPlayer) {
                return false;
            }
            if (!VideoView.DEBUG) {
                return true;
            }
            try {
                String str = new Throwable().getStackTrace()[1].getMethodName() + " should be ignored. player is already gone.";
                return true;
            } catch (IndexOutOfBoundsException e) {
                return true;
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onConnected(@NonNull PlayerWrapper playerWrapper) {
            boolean z = VideoView.DEBUG;
            if (!shouldIgnoreCallback(playerWrapper) && VideoView.this.isAggregatedVisible()) {
                VideoView videoView = VideoView.this;
                videoView.mTargetView.assignSurfaceToPlayerWrapper(videoView.mPlayer);
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onCurrentMediaItemChanged(@NonNull PlayerWrapper playerWrapper, @Nullable MediaItem mediaItem) {
            if (VideoView.DEBUG) {
                String str = "onCurrentMediaItemChanged(): MediaItem: " + mediaItem;
            }
            if (!shouldIgnoreCallback(playerWrapper)) {
                VideoView.this.updateMusicView(mediaItem);
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onPlayerStateChanged(@NonNull PlayerWrapper playerWrapper, int i) {
            if (VideoView.DEBUG) {
                String str = "onPlayerStateChanged(): state: " + i;
            }
            if (shouldIgnoreCallback(playerWrapper)) {
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onSubtitleData(@NonNull PlayerWrapper playerWrapper, @NonNull MediaItem mediaItem, @NonNull SessionPlayer.TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
            SubtitleTrack subtitleTrack;
            if (VideoView.DEBUG) {
                String str = "onSubtitleData(): TrackInfo: " + trackInfo + ", getCurrentPosition: " + playerWrapper.getCurrentPosition() + ", getStartTimeUs(): " + subtitleData.getStartTimeUs() + ", diff: " + ((subtitleData.getStartTimeUs() / 1000) - playerWrapper.getCurrentPosition()) + "ms, getDurationUs(): " + subtitleData.getDurationUs();
            }
            if (!shouldIgnoreCallback(playerWrapper) && trackInfo.equals(VideoView.this.mSelectedSubtitleTrackInfo) && (subtitleTrack = VideoView.this.mSubtitleTracks.get(trackInfo)) != null) {
                subtitleTrack.onData(subtitleData);
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackDeselected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
            if (VideoView.DEBUG) {
                String str = "onTrackDeselected(): deselected track: " + trackInfo;
            }
            if (!shouldIgnoreCallback(playerWrapper) && VideoView.this.mSubtitleTracks.get(trackInfo) != null) {
                VideoView.this.mSubtitleController.selectTrack(null);
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackInfoChanged(@NonNull PlayerWrapper playerWrapper, @NonNull List<SessionPlayer.TrackInfo> list) {
            if (VideoView.DEBUG) {
                String str = "onTrackInfoChanged(): tracks: " + list;
            }
            if (!shouldIgnoreCallback(playerWrapper)) {
                VideoView.this.updateTracks(playerWrapper, list);
                VideoView.this.updateMusicView(playerWrapper.getCurrentMediaItem());
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackSelected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
            SubtitleTrack subtitleTrack;
            if (VideoView.DEBUG) {
                String str = "onTrackSelected(): selected track: " + trackInfo;
            }
            if (!shouldIgnoreCallback(playerWrapper) && (subtitleTrack = VideoView.this.mSubtitleTracks.get(trackInfo)) != null) {
                VideoView.this.mSubtitleController.selectTrack(subtitleTrack);
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onVideoSizeChanged(@NonNull PlayerWrapper playerWrapper, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> trackInfo;
            if (VideoView.DEBUG) {
                String str = "onVideoSizeChanged(): size: " + videoSize;
            }
            if (!shouldIgnoreCallback(playerWrapper)) {
                if (VideoView.this.mVideoTrackCount == 0 && videoSize.getHeight() > 0 && videoSize.getWidth() > 0 && VideoView.this.isMediaPrepared() && (trackInfo = playerWrapper.getTrackInfo()) != null) {
                    VideoView.this.updateTracks(playerWrapper, trackInfo);
                }
                VideoView.this.mTextureView.forceLayout();
                VideoView.this.mSurfaceView.forceLayout();
                VideoView.this.requestLayout();
            }
        }
    }

    public VideoView(@NonNull Context context) {
        this(context, null);
    }

    public VideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSurfaceListener = new VideoViewInterface.SurfaceListener() { // from class: androidx.media2.widget.VideoView.1
            @Override // androidx.media2.widget.VideoViewInterface.SurfaceListener
            public void onSurfaceChanged(@NonNull View view, int i2, int i3) {
                if (VideoView.DEBUG) {
                    String str = "onSurfaceChanged(). width/height: " + i2 + "/" + i3 + UserProfile.CARD_CATE_SEPARATOR + view.toString();
                }
            }

            @Override // androidx.media2.widget.VideoViewInterface.SurfaceListener
            public void onSurfaceCreated(@NonNull View view, int i2, int i3) {
                if (VideoView.DEBUG) {
                    String str = "onSurfaceCreated(), width/height: " + i2 + "/" + i3 + UserProfile.CARD_CATE_SEPARATOR + view.toString();
                }
                VideoView videoView = VideoView.this;
                if (view == videoView.mTargetView && videoView.isAggregatedVisible()) {
                    VideoView videoView2 = VideoView.this;
                    videoView2.mTargetView.assignSurfaceToPlayerWrapper(videoView2.mPlayer);
                }
            }

            @Override // androidx.media2.widget.VideoViewInterface.SurfaceListener
            public void onSurfaceDestroyed(@NonNull View view) {
                if (VideoView.DEBUG) {
                    String str = "onSurfaceDestroyed(). " + view.toString();
                }
            }

            @Override // androidx.media2.widget.VideoViewInterface.SurfaceListener
            public void onSurfaceTakeOverDone(@NonNull VideoViewInterface videoViewInterface) {
                if (videoViewInterface != VideoView.this.mTargetView) {
                    String str = "onSurfaceTakeOverDone(). view is not targetView. ignore.: " + videoViewInterface;
                    return;
                }
                if (VideoView.DEBUG) {
                    String str2 = "onSurfaceTakeOverDone(). Now current view is: " + videoViewInterface;
                }
                VideoViewInterface videoViewInterface2 = VideoView.this.mCurrentView;
                if (videoViewInterface != videoViewInterface2) {
                    ((View) videoViewInterface2).setVisibility(8);
                    VideoView videoView = VideoView.this;
                    videoView.mCurrentView = videoViewInterface;
                    OnViewTypeChangedListener onViewTypeChangedListener = videoView.mViewTypeChangedListener;
                    if (onViewTypeChangedListener != null) {
                        onViewTypeChangedListener.onViewTypeChanged(videoView, videoViewInterface.getViewType());
                    }
                }
            }
        };
        initialize(context, attributeSet);
    }

    private Drawable getAlbumArt(@NonNull MediaMetadata mediaMetadata, Drawable drawable) {
        Bitmap bitmap = (mediaMetadata == null || !mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_ALBUM_ART)) ? null : mediaMetadata.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART);
        if (bitmap != null) {
            Palette.from(bitmap).generate(new Palette.PaletteAsyncListener() { // from class: androidx.media2.widget.VideoView.4
                @Override // androidx.palette.graphics.Palette.PaletteAsyncListener
                public void onGenerated(Palette palette) {
                    VideoView.this.mMusicView.setBackgroundColor(palette.getDominantColor(0));
                }
            });
            drawable = new BitmapDrawable(getResources(), bitmap);
        } else {
            this.mMusicView.setBackgroundColor(getResources().getColor(C0995R.color.music_view_default_background));
        }
        return drawable;
    }

    private String getString(@NonNull MediaMetadata mediaMetadata, String str, String str2) {
        String string = mediaMetadata == null ? str2 : mediaMetadata.getString(str);
        String str3 = string;
        if (string == null) {
            str3 = str2;
        }
        return str3;
    }

    private void initialize(Context context, @Nullable AttributeSet attributeSet) {
        this.mSelectedSubtitleTrackInfo = null;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.mTextureView = new VideoTextureView(context);
        this.mSurfaceView = new VideoSurfaceView(context);
        this.mTextureView.setSurfaceListener(this.mSurfaceListener);
        this.mSurfaceView.setSurfaceListener(this.mSurfaceListener);
        addView(this.mTextureView);
        addView(this.mSurfaceView);
        this.mSelectiveLayoutParams = new SelectiveLayout.LayoutParams();
        this.mSelectiveLayoutParams.forceMatchParent = true;
        this.mSubtitleAnchorView = new SubtitleAnchorView(context);
        this.mSubtitleAnchorView.setBackgroundColor(0);
        addView(this.mSubtitleAnchorView, this.mSelectiveLayoutParams);
        this.mSubtitleController = new SubtitleController(context, null, new SubtitleController.Listener() { // from class: androidx.media2.widget.VideoView.2
            @Override // androidx.media2.widget.SubtitleController.Listener
            public void onSubtitleTrackSelected(SubtitleTrack subtitleTrack) {
                SessionPlayer.TrackInfo trackInfo = null;
                if (subtitleTrack == null) {
                    VideoView videoView = VideoView.this;
                    videoView.mSelectedSubtitleTrackInfo = null;
                    videoView.mSubtitleAnchorView.setVisibility(8);
                    return;
                }
                Iterator<Map.Entry<SessionPlayer.TrackInfo, SubtitleTrack>> it = VideoView.this.mSubtitleTracks.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<SessionPlayer.TrackInfo, SubtitleTrack> next = it.next();
                    if (next.getValue() == subtitleTrack) {
                        trackInfo = next.getKey();
                        break;
                    }
                }
                if (trackInfo != null) {
                    VideoView videoView2 = VideoView.this;
                    videoView2.mSelectedSubtitleTrackInfo = trackInfo;
                    videoView2.mSubtitleAnchorView.setVisibility(0);
                }
            }
        });
        this.mSubtitleController.registerRenderer(new Cea608CaptionRenderer(context));
        this.mSubtitleController.registerRenderer(new Cea708CaptionRenderer(context));
        this.mSubtitleController.setAnchor(this.mSubtitleAnchorView);
        this.mMusicView = new MusicView(context);
        this.mMusicView.setVisibility(8);
        addView(this.mMusicView, this.mSelectiveLayoutParams);
        if (attributeSet == null || attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "enableControlView", true)) {
            this.mMediaControlView = new MediaControlView(context);
            this.mMediaControlView.setAttachedToVideoView(true);
            addView(this.mMediaControlView, this.mSelectiveLayoutParams);
        }
        int attributeIntValue = attributeSet == null ? 0 : attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "viewType", 0);
        if (attributeIntValue == 0) {
            boolean z = DEBUG;
            this.mTextureView.setVisibility(8);
            this.mSurfaceView.setVisibility(0);
            this.mCurrentView = this.mSurfaceView;
        } else if (attributeIntValue == 1) {
            boolean z2 = DEBUG;
            this.mTextureView.setVisibility(0);
            this.mSurfaceView.setVisibility(8);
            this.mCurrentView = this.mTextureView;
        }
        this.mTargetView = this.mCurrentView;
    }

    @Override // androidx.media2.widget.SelectiveLayout, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return super.generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.VideoView";
    }

    @Nullable
    public MediaControlView getMediaControlView() {
        return this.mMediaControlView;
    }

    public int getViewType() {
        return this.mCurrentView.getViewType();
    }

    public boolean hasActualVideo() {
        if (this.mVideoTrackCount > 0) {
            return true;
        }
        VideoSize videoSize = this.mPlayer.getVideoSize();
        if (videoSize.getHeight() <= 0 || videoSize.getWidth() <= 0) {
            return false;
        }
        String str = "video track count is zero, but it renders video. size: " + videoSize.getWidth() + "/" + videoSize.getHeight();
        return true;
    }

    public boolean isCurrentItemMusic() {
        return !hasActualVideo() && this.mAudioTrackCount > 0;
    }

    public boolean isMediaPrepared() {
        PlayerWrapper playerWrapper = this.mPlayer;
        return (playerWrapper == null || playerWrapper.getPlayerState() == 3 || this.mPlayer.getPlayerState() == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.attachCallback();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.detachCallback();
        }
    }

    @Override // androidx.media2.widget.MediaViewGroup, android.view.View
    @RequiresApi(24)
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    @Override // androidx.media2.widget.MediaViewGroup
    public void onVisibilityAggregatedCompat(boolean z) {
        super.onVisibilityAggregatedCompat(z);
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            if (z) {
                this.mTargetView.assignSurfaceToPlayerWrapper(playerWrapper);
            } else if (playerWrapper != null && !playerWrapper.hasDisconnectedController()) {
                resetPlayerSurfaceWithNull();
            }
        }
    }

    public void resetPlayerSurfaceWithNull() {
        try {
            int resultCode = ((BaseResult) this.mPlayer.setSurface(null).get(100L, TimeUnit.MILLISECONDS)).getResultCode();
            if (resultCode != 0) {
                Log.e(TAG, "calling setSurface(null) was not successful. ResultCode: " + resultCode);
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.e(TAG, "calling setSurface(null) was not successful.", e);
        }
    }

    public void resetPlayerSurfaceWithNullAsync() {
        final AbstractFutureC9382a<? extends BaseResult> surface = this.mPlayer.setSurface(null);
        surface.addListener(new Runnable() { // from class: androidx.media2.widget.VideoView.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int resultCode = ((BaseResult) surface.get()).getResultCode();
                    if (resultCode != 0) {
                        Log.e(VideoView.TAG, "calling setSurface(null) was not successful. ResultCode: " + resultCode);
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(VideoView.TAG, "calling setSurface(null) was not successful.", e);
                }
            }
        }, ContextCompat.getMainExecutor(getContext()));
    }

    public void setMediaControlView(@NonNull MediaControlView mediaControlView, long j) {
        MediaControlView mediaControlView2 = this.mMediaControlView;
        if (mediaControlView2 != null) {
            removeView(mediaControlView2);
            this.mMediaControlView.setAttachedToVideoView(false);
        }
        addView(mediaControlView, this.mSelectiveLayoutParams);
        mediaControlView.setAttachedToVideoView(true);
        this.mMediaControlView = mediaControlView;
        this.mMediaControlView.setDelayedAnimationInterval(j);
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            MediaController mediaController = playerWrapper.mController;
            if (mediaController != null) {
                this.mMediaControlView.setMediaControllerInternal(mediaController);
                return;
            }
            SessionPlayer sessionPlayer = playerWrapper.mPlayer;
            if (sessionPlayer != null) {
                this.mMediaControlView.setPlayerInternal(sessionPlayer);
            }
        }
    }

    public void setMediaController(@NonNull MediaController mediaController) {
        if (mediaController != null) {
            PlayerWrapper playerWrapper = this.mPlayer;
            if (playerWrapper != null) {
                playerWrapper.detachCallback();
            }
            this.mPlayer = new PlayerWrapper(mediaController, ContextCompat.getMainExecutor(getContext()), new PlayerCallback());
            if (isAttachedToWindow()) {
                this.mPlayer.attachCallback();
            }
            if (isAggregatedVisible()) {
                this.mTargetView.assignSurfaceToPlayerWrapper(this.mPlayer);
            } else {
                resetPlayerSurfaceWithNullAsync();
            }
            MediaControlView mediaControlView = this.mMediaControlView;
            if (mediaControlView != null) {
                mediaControlView.setMediaControllerInternal(mediaController);
                return;
            }
            return;
        }
        throw new NullPointerException("controller must not be null");
    }

    public void setOnViewTypeChangedListener(@Nullable OnViewTypeChangedListener onViewTypeChangedListener) {
        this.mViewTypeChangedListener = onViewTypeChangedListener;
    }

    public void setPlayer(@NonNull SessionPlayer sessionPlayer) {
        if (sessionPlayer != null) {
            PlayerWrapper playerWrapper = this.mPlayer;
            if (playerWrapper != null) {
                playerWrapper.detachCallback();
            }
            this.mPlayer = new PlayerWrapper(sessionPlayer, ContextCompat.getMainExecutor(getContext()), new PlayerCallback());
            if (isAttachedToWindow()) {
                this.mPlayer.attachCallback();
            }
            if (isAggregatedVisible()) {
                this.mTargetView.assignSurfaceToPlayerWrapper(this.mPlayer);
            } else {
                resetPlayerSurfaceWithNullAsync();
            }
            MediaControlView mediaControlView = this.mMediaControlView;
            if (mediaControlView != null) {
                mediaControlView.setPlayerInternal(sessionPlayer);
                return;
            }
            return;
        }
        throw new NullPointerException("player must not be null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.media2.widget.VideoTextureView] */
    public void setViewType(int i) {
        VideoSurfaceView videoSurfaceView;
        if (i == this.mTargetView.getViewType()) {
            String str = "setViewType with the same type (" + i + ") is ignored.";
            return;
        }
        if (i == 1) {
            videoSurfaceView = this.mTextureView;
        } else if (i == 0) {
            videoSurfaceView = this.mSurfaceView;
        } else {
            throw new IllegalArgumentException("Unknown view type: " + i);
        }
        this.mTargetView = videoSurfaceView;
        if (isAggregatedVisible()) {
            videoSurfaceView.assignSurfaceToPlayerWrapper(this.mPlayer);
        }
        videoSurfaceView.setVisibility(0);
        requestLayout();
    }

    @Override // androidx.media2.widget.SelectiveLayout, android.view.ViewGroup
    public /* bridge */ /* synthetic */ boolean shouldDelayChildPressedState() {
        return super.shouldDelayChildPressedState();
    }

    public void updateMusicView(MediaItem mediaItem) {
        if (mediaItem != null && isCurrentItemMusic()) {
            this.mMusicView.setVisibility(0);
            MediaMetadata metadata = mediaItem.getMetadata();
            Resources resources = getResources();
            Drawable albumArt = getAlbumArt(metadata, resources.getDrawable(C0995R.C0996drawable.ic_default_album_image));
            String string = getString(metadata, MediaMetadata.METADATA_KEY_TITLE, resources.getString(C0995R.string.mcv2_music_title_unknown_text));
            String string2 = getString(metadata, MediaMetadata.METADATA_KEY_ARTIST, resources.getString(C0995R.string.mcv2_music_artist_unknown_text));
            this.mMusicView.setAlbumDrawable(albumArt);
            this.mMusicView.setTitleText(string);
            this.mMusicView.setArtistText(string2);
            return;
        }
        this.mMusicView.setVisibility(8);
        this.mMusicView.setAlbumDrawable(null);
        this.mMusicView.setTitleText(null);
        this.mMusicView.setArtistText(null);
    }

    public void updateTracks(PlayerWrapper playerWrapper, List<SessionPlayer.TrackInfo> list) {
        SubtitleTrack addTrack;
        this.mSubtitleTracks = new LinkedHashMap();
        this.mVideoTrackCount = 0;
        this.mAudioTrackCount = 0;
        for (int i = 0; i < list.size(); i++) {
            SessionPlayer.TrackInfo trackInfo = list.get(i);
            int trackType = list.get(i).getTrackType();
            if (trackType == 1) {
                this.mVideoTrackCount++;
            } else if (trackType == 2) {
                this.mAudioTrackCount++;
            } else if (trackType == 4 && (addTrack = this.mSubtitleController.addTrack(trackInfo.getFormat())) != null) {
                this.mSubtitleTracks.put(trackInfo, addTrack);
            }
        }
        this.mSelectedSubtitleTrackInfo = playerWrapper.getSelectedTrack(4);
    }
}
