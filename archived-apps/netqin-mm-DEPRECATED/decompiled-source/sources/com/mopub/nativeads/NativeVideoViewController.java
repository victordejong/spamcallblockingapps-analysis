package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.VideoView;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.nativeads.NativeFullScreenVideoView;
import com.mopub.nativeads.NativeVideoController;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController.class */
public class NativeVideoViewController extends BaseVideoViewController implements TextureView.SurfaceTextureListener, NativeVideoController.Listener, AudioManager.OnAudioFocusChangeListener {

    /* renamed from: e */
    public VideoState f34902e;

    /* renamed from: f */
    public VastVideoConfig f34903f;

    /* renamed from: g */
    public final NativeFullScreenVideoView f34904g;

    /* renamed from: h */
    public final NativeVideoController f34905h;

    /* renamed from: i */
    public Bitmap f34906i;

    /* renamed from: j */
    public boolean f34907j;

    /* renamed from: k */
    public boolean f34908k;

    /* renamed from: l */
    public int f34909l;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$VideoState.class */
    public enum VideoState {
        NONE,
        LOADING,
        BUFFERING,
        PAUSED,
        PLAYING,
        ENDED,
        FAILED_LOAD
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$a.class */
    public class View$OnClickListenerC8971a implements View.OnClickListener {
        public View$OnClickListenerC8971a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (NativeVideoViewController.this.f34907j) {
                NativeVideoViewController.this.f34907j = false;
                NativeVideoViewController.this.f34904g.resetProgress();
                NativeVideoViewController.this.f34905h.seekTo(0L);
            }
            NativeVideoViewController.this.m3883a(VideoState.PLAYING);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$b.class */
    public class View$OnClickListenerC8972b implements View.OnClickListener {
        public View$OnClickListenerC8972b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NativeVideoViewController.this.m3882a(VideoState.PAUSED, true);
            NativeVideoViewController.this.m4417a().onFinish();
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$c.class */
    public class View$OnClickListenerC8973c implements View.OnClickListener {
        public View$OnClickListenerC8973c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NativeVideoViewController.this.f34905h.setPlayWhenReady(false);
            NativeVideoViewController nativeVideoViewController = NativeVideoViewController.this;
            nativeVideoViewController.f34906i = nativeVideoViewController.f34904g.getTextureView().getBitmap();
            NativeVideoViewController.this.f34905h.handleCtaClick((Activity) NativeVideoViewController.this.m4414b());
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$d.class */
    public class View$OnClickListenerC8974d implements View.OnClickListener {
        public View$OnClickListenerC8974d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NativeVideoViewController.this.f34905h.setPlayWhenReady(false);
            NativeVideoViewController nativeVideoViewController = NativeVideoViewController.this;
            nativeVideoViewController.f34906i = nativeVideoViewController.f34904g.getTextureView().getBitmap();
            String privacyInformationIconClickthroughUrl = NativeVideoViewController.this.f34903f.getPrivacyInformationIconClickthroughUrl();
            String str = privacyInformationIconClickthroughUrl;
            if (TextUtils.isEmpty(privacyInformationIconClickthroughUrl)) {
                str = "https://www.mopub.com/optout/";
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.OPEN_IN_APP_BROWSER, new UrlAction[0]).build().handleUrl(NativeVideoViewController.this.m4414b(), str);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$e.class */
    public class C8975e implements NativeVideoController.NativeVideoProgressRunnable.ProgressListener {
        public C8975e() {
        }

        @Override // com.mopub.nativeads.NativeVideoController.NativeVideoProgressRunnable.ProgressListener
        public void updateProgress(int i) {
            NativeVideoViewController.this.f34904g.updateProgress(i);
        }
    }

    /* renamed from: com.mopub.nativeads.NativeVideoViewController$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeVideoViewController$f.class */
    public static /* synthetic */ class C8976f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34915a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[VideoState.values().length];
            f34915a = iArr;
            try {
                iArr[VideoState.FAILED_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34915a[VideoState.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34915a[VideoState.BUFFERING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34915a[VideoState.PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34915a[VideoState.PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34915a[VideoState.ENDED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public NativeVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        this(context, bundle, bundle2, baseVideoViewControllerListener, new NativeFullScreenVideoView(context, context.getResources().getConfiguration().orientation, ((VastVideoConfig) bundle.get(Constants.NATIVE_VAST_VIDEO_CONFIG)).getCustomCtaText()));
    }

    @VisibleForTesting
    public NativeVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener, NativeFullScreenVideoView nativeFullScreenVideoView) {
        super(context, null, baseVideoViewControllerListener);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        Preconditions.checkNotNull(nativeFullScreenVideoView);
        this.f34902e = VideoState.NONE;
        this.f34903f = (VastVideoConfig) bundle.get(Constants.NATIVE_VAST_VIDEO_CONFIG);
        this.f34904g = nativeFullScreenVideoView;
        this.f34905h = NativeVideoController.getForId(((Long) bundle.get(Constants.NATIVE_VIDEO_ID)).longValue());
        Preconditions.checkNotNull(this.f34903f);
        Preconditions.checkNotNull(this.f34905h);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3885a(Configuration configuration) {
        this.f34904g.setOrientation(configuration.orientation);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3884a(Bundle bundle) {
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3883a(VideoState videoState) {
        m3882a(videoState, false);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3882a(VideoState videoState, boolean z) {
        Preconditions.checkNotNull(videoState);
        if (this.f34902e != videoState) {
            switch (C8976f.f34915a[videoState.ordinal()]) {
                case 1:
                    this.f34905h.setPlayWhenReady(false);
                    this.f34905h.setAudioEnabled(false);
                    this.f34905h.setAppAudioEnabled(false);
                    this.f34904g.setMode(NativeFullScreenVideoView.Mode.LOADING);
                    this.f34903f.handleError(m4414b(), null, 0);
                    break;
                case 2:
                case 3:
                    this.f34905h.setPlayWhenReady(true);
                    this.f34904g.setMode(NativeFullScreenVideoView.Mode.LOADING);
                    break;
                case 4:
                    this.f34905h.setPlayWhenReady(true);
                    this.f34905h.setAudioEnabled(true);
                    this.f34905h.setAppAudioEnabled(true);
                    this.f34904g.setMode(NativeFullScreenVideoView.Mode.PLAYING);
                    break;
                case 5:
                    if (!z) {
                        this.f34905h.setAppAudioEnabled(false);
                    }
                    this.f34905h.setPlayWhenReady(false);
                    this.f34904g.setMode(NativeFullScreenVideoView.Mode.PAUSED);
                    break;
                case 6:
                    this.f34907j = true;
                    this.f34905h.setAppAudioEnabled(false);
                    this.f34904g.updateProgress(1000);
                    this.f34904g.setMode(NativeFullScreenVideoView.Mode.FINISHED);
                    this.f34903f.handleComplete(m4414b(), 0);
                    break;
            }
            this.f34902e = videoState;
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public VideoView mo3877c() {
        return null;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo3875d() {
        m3882a(VideoState.PAUSED, true);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo3873e() {
        this.f34904g.setSurfaceTextureListener(this);
        this.f34904g.setMode(NativeFullScreenVideoView.Mode.LOADING);
        this.f34904g.setPlayControlClickListener(new View$OnClickListenerC8971a());
        this.f34904g.setCloseControlListener(new View$OnClickListenerC8972b());
        this.f34904g.setCtaClickListener(new View$OnClickListenerC8973c());
        this.f34904g.setPrivacyInformationClickListener(new View$OnClickListenerC8974d());
        this.f34904g.setPrivacyInformationIconImageUrl(this.f34903f.getPrivacyInformationIconImageUrl());
        this.f34904g.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        m4417a().onSetContentView(this.f34904g);
        this.f34905h.setProgressListener(new C8975e());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3871f() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3869g() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3867h() {
        Bitmap bitmap = this.f34906i;
        if (bitmap != null) {
            this.f34904g.setCachedVideoFrame(bitmap);
        }
        this.f34905h.prepare(this);
        this.f34905h.setListener(this);
        this.f34905h.setOnAudioFocusChangeListener(this);
    }

    /* renamed from: i */
    public final void m3866i() {
        VideoState videoState = this.f34902e;
        if (this.f34908k) {
            videoState = VideoState.FAILED_LOAD;
        } else if (this.f34907j) {
            videoState = VideoState.ENDED;
        } else {
            int i = this.f34909l;
            if (i == 1) {
                videoState = VideoState.LOADING;
            } else if (i == 2) {
                videoState = VideoState.BUFFERING;
            } else if (i == 3) {
                videoState = VideoState.PLAYING;
            } else if (i == 4 || i == 5) {
                videoState = VideoState.ENDED;
            }
        }
        m3883a(videoState);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == -1 || i == -2) {
            m3883a(VideoState.PAUSED);
        } else if (i == -3) {
            this.f34905h.setAudioVolume(0.3f);
        } else if (i == 1) {
            this.f34905h.setAudioVolume(1.0f);
            m3866i();
        }
    }

    @Override // com.mopub.nativeads.NativeVideoController.Listener
    public void onError(Exception exc) {
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error playing back video.", exc);
        this.f34908k = true;
        m3866i();
    }

    @Override // com.mopub.nativeads.NativeVideoController.Listener
    public void onStateChanged(boolean z, int i) {
        this.f34909l = i;
        m3866i();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f34905h.setTextureView(this.f34904g.getTextureView());
        if (!this.f34907j) {
            NativeVideoController nativeVideoController = this.f34905h;
            nativeVideoController.seekTo(nativeVideoController.getCurrentPosition());
        }
        this.f34905h.setPlayWhenReady(!this.f34907j);
        if (this.f34905h.getDuration() - this.f34905h.getCurrentPosition() < 750) {
            this.f34907j = true;
            m3866i();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f34905h.release(this);
        m3883a(VideoState.PAUSED);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
