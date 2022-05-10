package com.inmobi.ads;

import android.app.KeyguardManager;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.view.Surface;
import android.view.TextureView;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p513e.C8365a;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoView.class */
public class NativeVideoView extends TextureView implements MediaController.MediaPlayerControl {

    /* renamed from: m */
    public static final String f31427m = NativeVideoView.class.getSimpleName();

    /* renamed from: a */
    public Uri f31432a;

    /* renamed from: b */
    public Map<String, String> f31433b;

    /* renamed from: d */
    public int f31435d;

    /* renamed from: e */
    public int f31436e;

    /* renamed from: f */
    public int f31437f;

    /* renamed from: g */
    public HandlerC8046d f31438g;

    /* renamed from: h */
    public Handler f31439h;

    /* renamed from: i */
    public boolean f31440i;

    /* renamed from: o */
    public int f31445o;

    /* renamed from: r */
    public AbstractC8045c f31448r;

    /* renamed from: s */
    public AbstractC8044b f31449s;

    /* renamed from: t */
    public AbstractC8043a f31450t;

    /* renamed from: u */
    public boolean f31451u;

    /* renamed from: v */
    public NativeVideoController f31452v;

    /* renamed from: w */
    public int f31453w;

    /* renamed from: x */
    public boolean f31454x;

    /* renamed from: y */
    public boolean f31455y;

    /* renamed from: z */
    public boolean f31456z;

    /* renamed from: n */
    public Surface f31444n = null;

    /* renamed from: c */
    public C8135av f31434c = null;

    /* renamed from: p */
    public int f31446p = Integer.MIN_VALUE;

    /* renamed from: q */
    public int f31447q = 0;

    /* renamed from: j */
    public MediaPlayer.OnVideoSizeChangedListener f31441j = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.inmobi.ads.NativeVideoView.1
        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            NativeVideoView.this.f31436e = mediaPlayer.getVideoWidth();
            NativeVideoView.this.f31437f = mediaPlayer.getVideoHeight();
            if (NativeVideoView.this.f31436e != 0 && NativeVideoView.this.f31437f != 0) {
                NativeVideoView.this.requestLayout();
            }
        }
    };

    /* renamed from: k */
    public MediaPlayer.OnPreparedListener f31442k = new MediaPlayer.OnPreparedListener() { // from class: com.inmobi.ads.NativeVideoView.2
        @Override // android.media.MediaPlayer.OnPreparedListener
        public final void onPrepared(MediaPlayer mediaPlayer) {
            if (NativeVideoView.this.f31434c != null) {
                NativeVideoView.this.f31434c.f31813a = 2;
                NativeVideoView nativeVideoView = NativeVideoView.this;
                nativeVideoView.f31454x = nativeVideoView.f31455y = nativeVideoView.f31456z = true;
                if (NativeVideoView.this.f31452v != null) {
                    NativeVideoView.this.f31452v.setEnabled(true);
                }
                NativeVideoView.this.f31436e = mediaPlayer.getVideoWidth();
                NativeVideoView.this.f31437f = mediaPlayer.getVideoHeight();
                C8152be beVar = (C8152be) NativeVideoView.this.getTag();
                if (beVar != null && ((Boolean) beVar.f31697v.get("didCompleteQ4")).booleanValue()) {
                    NativeVideoView.this.m6655a(8, 0);
                    if (((AdContainer.RenderingProperties.PlacementType) beVar.f31697v.get("placementType")) == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN) {
                        return;
                    }
                }
                if (NativeVideoView.this.getPlaybackEventListener() != null) {
                    NativeVideoView.this.getPlaybackEventListener().mo6359a(0);
                }
                int i = 0;
                if (beVar != null) {
                    i = 0;
                    if (!((Boolean) beVar.f31697v.get("didCompleteQ4")).booleanValue()) {
                        i = ((Integer) beVar.f31697v.get("seekPosition")).intValue();
                    }
                }
                if (NativeVideoView.this.f31436e == 0 || NativeVideoView.this.f31437f == 0) {
                    if (3 == NativeVideoView.this.f31434c.f31814b && beVar != null && ((Boolean) beVar.f31697v.get("isFullScreen")).booleanValue()) {
                        NativeVideoView.this.start();
                    }
                } else if (3 == NativeVideoView.this.f31434c.f31814b) {
                    if (beVar != null && ((Boolean) beVar.f31697v.get("isFullScreen")).booleanValue()) {
                        NativeVideoView.this.start();
                    }
                    if (NativeVideoView.this.f31452v != null) {
                        NativeVideoView.this.f31452v.m6665a();
                    }
                } else if (NativeVideoView.this.isPlaying()) {
                } else {
                    if ((i != 0 || NativeVideoView.this.getCurrentPosition() > 0) && NativeVideoView.this.f31452v != null) {
                        NativeVideoView.this.f31452v.m6665a();
                    }
                }
            }
        }
    };

    /* renamed from: A */
    public MediaPlayer.OnCompletionListener f31428A = new MediaPlayer.OnCompletionListener() { // from class: com.inmobi.ads.NativeVideoView.3
        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            try {
                NativeVideoView.m6638f(NativeVideoView.this);
            } catch (Exception e) {
                String unused = NativeVideoView.f31427m;
                new StringBuilder("SDK encountered unexpected error in handling the media playback complete event; ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
    };

    /* renamed from: B */
    public MediaPlayer.OnInfoListener f31429B = new MediaPlayer.OnInfoListener() { // from class: com.inmobi.ads.NativeVideoView.4
        @Override // android.media.MediaPlayer.OnInfoListener
        public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (Build.VERSION.SDK_INT < 17 || 3 != i) {
                return true;
            }
            NativeVideoView.this.m6655a(8, 8);
            return true;
        }
    };

    /* renamed from: C */
    public MediaPlayer.OnBufferingUpdateListener f31430C = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.inmobi.ads.NativeVideoView.5
        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            NativeVideoView.this.f31453w = i;
        }
    };

    /* renamed from: D */
    public MediaPlayer.OnErrorListener f31431D = new MediaPlayer.OnErrorListener() { // from class: com.inmobi.ads.NativeVideoView.6
        @Override // android.media.MediaPlayer.OnErrorListener
        public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            String unused = NativeVideoView.f31427m;
            StringBuilder sb = new StringBuilder("Media Play Error ");
            sb.append(i);
            sb.append(",");
            sb.append(i2);
            if (NativeVideoView.this.f31450t != null) {
                NativeVideoView.this.f31450t.mo6358a(i);
            }
            if (NativeVideoView.this.f31434c != null) {
                NativeVideoView.this.f31434c.f31813a = -1;
                NativeVideoView.this.f31434c.f31814b = -1;
            }
            if (NativeVideoView.this.f31452v != null) {
                NativeVideoView.this.f31452v.m6663b();
            }
            NativeVideoView.m6634h(NativeVideoView.this);
            return true;
        }
    };

    /* renamed from: l */
    public final TextureView.SurfaceTextureListener f31443l = new TextureView.SurfaceTextureListener() { // from class: com.inmobi.ads.NativeVideoView.7
        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            NativeVideoView.this.f31444n = new Surface(surfaceTexture);
            NativeVideoView.this.m6637g();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            if (NativeVideoView.this.f31444n != null) {
                NativeVideoView.this.f31444n.release();
                NativeVideoView.this.f31444n = null;
            }
            if (NativeVideoView.this.f31452v != null) {
                NativeVideoView.this.f31452v.m6663b();
            }
            NativeVideoView.this.m6646c();
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            int intValue;
            boolean z = true;
            boolean z2 = NativeVideoView.this.f31434c != null && NativeVideoView.this.f31434c.f31814b == 3;
            if (i <= 0 || i2 <= 0) {
                z = false;
            }
            if (NativeVideoView.this.f31434c != null && z2 && z) {
                if (!(NativeVideoView.this.getTag() == null || (intValue = ((Integer) ((C8152be) NativeVideoView.this.getTag()).f31697v.get("seekPosition")).intValue()) == 0)) {
                    NativeVideoView.this.m6656a(intValue);
                }
                NativeVideoView.this.start();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    };

    /* renamed from: com.inmobi.ads.NativeVideoView$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoView$a.class */
    public interface AbstractC8043a {
        /* renamed from: a */
        void mo6358a(int i);
    }

    /* renamed from: com.inmobi.ads.NativeVideoView$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoView$b.class */
    public interface AbstractC8044b {
        /* renamed from: a */
        void mo6359a(int i);
    }

    /* renamed from: com.inmobi.ads.NativeVideoView$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoView$c.class */
    public interface AbstractC8045c {
        /* renamed from: a */
        void mo6360a(int i);
    }

    /* renamed from: com.inmobi.ads.NativeVideoView$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoView$d.class */
    public static final class HandlerC8046d extends Handler {

        /* renamed from: a */
        public final WeakReference<NativeVideoView> f31465a;

        public HandlerC8046d(NativeVideoView nativeVideoView) {
            this.f31465a = new WeakReference<>(nativeVideoView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            NativeVideoView nativeVideoView = this.f31465a.get();
            if (nativeVideoView != null && message.what == 1) {
                int duration = nativeVideoView.getDuration();
                int currentPosition = nativeVideoView.getCurrentPosition();
                if (!(duration == -1 || currentPosition == 0)) {
                    C8152be beVar = (C8152be) nativeVideoView.getTag();
                    if (!((Boolean) beVar.f31697v.get("didCompleteQ1")).booleanValue() && (currentPosition * 4) - duration >= 0) {
                        beVar.f31697v.put("didCompleteQ1", true);
                        nativeVideoView.getQuartileCompletedListener().mo6360a(0);
                    }
                    if (!((Boolean) beVar.f31697v.get("didCompleteQ2")).booleanValue() && (currentPosition * 2) - duration >= 0) {
                        beVar.f31697v.put("didCompleteQ2", true);
                        nativeVideoView.getQuartileCompletedListener().mo6360a(1);
                    }
                    if (!((Boolean) beVar.f31697v.get("didCompleteQ3")).booleanValue() && (currentPosition * 4) - (duration * 3) >= 0) {
                        beVar.f31697v.put("didCompleteQ3", true);
                        nativeVideoView.getQuartileCompletedListener().mo6360a(2);
                    }
                    boolean booleanValue = ((Boolean) beVar.f31697v.get("didQ4Fire")).booleanValue();
                    if ((currentPosition / duration) * 100.0f > beVar.f31850E && !booleanValue) {
                        nativeVideoView.getPlaybackEventListener().mo6359a(5);
                    }
                }
                sendEmptyMessageDelayed(1, 1000L);
            }
            super.handleMessage(message);
        }
    }

    public NativeVideoView(Context context) {
        super(context);
        requestLayout();
        invalidate();
    }

    /* renamed from: f */
    public static /* synthetic */ void m6638f(NativeVideoView nativeVideoView) {
        C8135av avVar = nativeVideoView.f31434c;
        if (avVar != null) {
            avVar.f31813a = 5;
            avVar.f31814b = 5;
        }
        NativeVideoController nativeVideoController = nativeVideoView.f31452v;
        if (nativeVideoController != null) {
            nativeVideoController.m6663b();
        }
        HandlerC8046d dVar = nativeVideoView.f31438g;
        if (dVar != null) {
            dVar.removeMessages(1);
        }
        if (nativeVideoView.getTag() != null) {
            C8152be beVar = (C8152be) nativeVideoView.getTag();
            if (!((Boolean) beVar.f31697v.get("didCompleteQ4")).booleanValue()) {
                beVar.f31697v.put("didCompleteQ4", true);
                if (nativeVideoView.getQuartileCompletedListener() != null) {
                    nativeVideoView.getQuartileCompletedListener().mo6360a(3);
                }
            }
            beVar.f31697v.put("didSignalVideoCompleted", true);
            if (beVar != null) {
                beVar.f31697v.put("didCompleteQ1", false);
                beVar.f31697v.put("didCompleteQ2", false);
                beVar.f31697v.put("didCompleteQ3", false);
                beVar.f31697v.put("didPause", false);
                beVar.f31697v.put("didStartPlaying", false);
                beVar.f31697v.put("didQ4Fire", false);
            }
            if (beVar.f31848C) {
                nativeVideoView.start();
            } else if (((Boolean) beVar.f31697v.get("isFullScreen")).booleanValue()) {
                nativeVideoView.m6655a(8, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m6637g() {
        if (this.f31432a != null && this.f31444n != null) {
            if (this.f31434c == null) {
                C8152be beVar = (C8152be) getTag();
                AdContainer.RenderingProperties.PlacementType placementType = AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN;
                if (beVar != null) {
                    placementType = (AdContainer.RenderingProperties.PlacementType) beVar.f31697v.get("placementType");
                }
                C8135av avVar = AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == placementType ? new C8135av() : C8135av.m6354a();
                this.f31434c = avVar;
                int i = this.f31435d;
                if (i != 0) {
                    avVar.setAudioSessionId(i);
                } else {
                    this.f31435d = avVar.getAudioSessionId();
                }
                try {
                    this.f31434c.setDataSource(getContext().getApplicationContext(), this.f31432a, this.f31433b);
                } catch (IOException e) {
                    C8135av avVar2 = this.f31434c;
                    avVar2.f31813a = -1;
                    avVar2.f31814b = -1;
                    return;
                }
            }
            try {
                C8152be beVar2 = (C8152be) getTag();
                this.f31434c.setOnPreparedListener(this.f31442k);
                this.f31434c.setOnVideoSizeChangedListener(this.f31441j);
                this.f31434c.setOnCompletionListener(this.f31428A);
                this.f31434c.setOnErrorListener(this.f31431D);
                this.f31434c.setOnInfoListener(this.f31429B);
                this.f31434c.setOnBufferingUpdateListener(this.f31430C);
                this.f31434c.setSurface(this.f31444n);
                if (Build.VERSION.SDK_INT >= 26) {
                    this.f31434c.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(2).setLegacyStreamType(3).build());
                } else {
                    this.f31434c.setAudioStreamType(3);
                }
                this.f31434c.prepareAsync();
                this.f31453w = 0;
                this.f31434c.f31813a = 1;
                m6635h();
                if (beVar2 != null) {
                    if (((Boolean) beVar2.f31697v.get("shouldAutoPlay")).booleanValue()) {
                        this.f31434c.f31814b = 3;
                    }
                    if (((Boolean) beVar2.f31697v.get("didCompleteQ4")).booleanValue()) {
                        m6655a(8, 0);
                        return;
                    }
                }
                m6655a(0, 0);
            } catch (Exception e2) {
                C8135av avVar3 = this.f31434c;
                avVar3.f31813a = -1;
                avVar3.f31814b = -1;
                this.f31431D.onError(avVar3, 1, 0);
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
        }
    }

    /* renamed from: h */
    private void m6635h() {
        NativeVideoController nativeVideoController;
        if (this.f31434c != null && (nativeVideoController = this.f31452v) != null) {
            nativeVideoController.setMediaPlayer(this);
            this.f31452v.setEnabled(m6650b());
            this.f31452v.m6665a();
        }
    }

    /* renamed from: h */
    public static /* synthetic */ void m6634h(NativeVideoView nativeVideoView) {
        try {
            if (nativeVideoView.f31432a != null) {
                String uri = nativeVideoView.f31432a.toString();
                C8053d.m6605a();
                C8363b a = C8363b.m5815a();
                List<ContentValues> a2 = a.m5809a("asset", C8053d.f31521a, "disk_uri=? ", new String[]{uri}, null, null, "created_ts DESC ", "1");
                a.m5808b();
                C8049a a3 = a2.isEmpty() ? null : C8053d.m6604a(a2.get(0));
                C8049a.C8050a aVar = new C8049a.C8050a();
                if (a3 != null) {
                    C8049a a4 = aVar.m6610a(a3.f31492d, 0, 0L).m6612a();
                    C8053d.m6605a();
                    C8053d.m6600b(a4);
                }
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m6657a() {
        Surface surface = this.f31444n;
        if (surface != null) {
            surface.release();
            this.f31444n = null;
        }
        m6646c();
    }

    /* renamed from: a */
    public final void m6656a(int i) {
        if (m6650b()) {
            this.f31434c.seekTo(i);
        }
    }

    /* renamed from: a */
    public final void m6655a(int i, int i2) {
        if (this.f31434c != null) {
            ProgressBar progressBar = ((NativeVideoWrapper) getParent()).getProgressBar();
            ImageView poster = ((NativeVideoWrapper) getParent()).getPoster();
            progressBar.setVisibility(i);
            poster.setVisibility(i2);
        }
    }

    /* renamed from: b */
    public final boolean m6650b() {
        int i;
        C8135av avVar = this.f31434c;
        return (avVar == null || (i = avVar.f31813a) == -1 || i == 0 || i == 1) ? false : true;
    }

    /* renamed from: c */
    public final void m6646c() {
        if (this.f31434c != null) {
            HandlerC8046d dVar = this.f31438g;
            if (dVar != null) {
                dVar.removeMessages(1);
            }
            if (getTag() != null) {
                ((C8152be) getTag()).f31697v.put("seekPosition", Integer.valueOf(getCurrentPosition()));
            }
            C8135av avVar = this.f31434c;
            avVar.f31813a = 0;
            avVar.f31814b = 0;
            avVar.reset();
            this.f31434c.setOnPreparedListener(null);
            this.f31434c.setOnVideoSizeChangedListener(null);
            this.f31434c.setOnCompletionListener(null);
            this.f31434c.setOnErrorListener(null);
            this.f31434c.setOnInfoListener(null);
            this.f31434c.setOnBufferingUpdateListener(null);
            if (getTag() != null) {
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == ((C8152be) getTag()).f31697v.get("placementType")) {
                    this.f31434c.m6353b();
                }
            } else {
                this.f31434c.m6353b();
            }
            AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.abandonAudioFocus(null);
            }
            this.f31434c = null;
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.f31454x;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.f31455y;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.f31456z;
    }

    /* renamed from: d */
    public final void m6643d() {
        C8135av avVar = this.f31434c;
        if (avVar != null) {
            this.f31445o = 0;
            avVar.setVolume(0.0f, 0.0f);
            if (getTag() != null) {
                ((C8152be) getTag()).f31697v.put("currentMediaVolume", 0);
            }
        }
    }

    /* renamed from: e */
    public final void m6641e() {
        C8135av avVar = this.f31434c;
        if (avVar != null) {
            this.f31445o = 1;
            avVar.setVolume(1.0f, 1.0f);
            if (getTag() != null) {
                ((C8152be) getTag()).f31697v.put("currentMediaVolume", 15);
            }
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.f31435d == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f31435d = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.f31435d;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f31434c != null) {
            return this.f31453w;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (m6650b()) {
            return this.f31434c.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (m6650b()) {
            return this.f31434c.getDuration();
        }
        return -1;
    }

    public int getLastVolume() {
        return this.f31446p;
    }

    public NativeVideoController getMediaController() {
        return this.f31452v;
    }

    public C8135av getMediaPlayer() {
        return this.f31434c;
    }

    public AbstractC8044b getPlaybackEventListener() {
        return this.f31449s;
    }

    public AbstractC8045c getQuartileCompletedListener() {
        return this.f31448r;
    }

    public int getState() {
        C8135av avVar = this.f31434c;
        if (avVar != null) {
            return avVar.f31813a;
        }
        return 0;
    }

    public int getVideoVolume() {
        if (isPlaying()) {
            return this.f31445o;
        }
        return -1;
    }

    public int getVolume() {
        if (m6650b()) {
            return this.f31445o;
        }
        return -1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return m6650b() && this.f31434c.isPlaying();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ae, code lost:
        if (r5 > r6) goto L_0x00eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e8, code lost:
        if (r0 > r0) goto L_0x00eb;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.NativeVideoView.onMeasure(int, int):void");
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (m6650b() && this.f31434c.isPlaying()) {
            this.f31434c.pause();
            this.f31434c.f31813a = 4;
            if (getTag() != null) {
                C8152be beVar = (C8152be) getTag();
                beVar.f31697v.put("didPause", true);
                beVar.f31697v.put("seekPosition", Integer.valueOf(getCurrentPosition()));
            }
            getPlaybackEventListener().mo6359a(2);
        }
        C8135av avVar = this.f31434c;
        if (avVar != null) {
            avVar.f31814b = 4;
        }
        this.f31440i = false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
    }

    public void setIsLockScreen(boolean z) {
        this.f31451u = z;
    }

    public void setLastVolume(int i) {
        this.f31446p = i;
    }

    public void setMediaController(NativeVideoController nativeVideoController) {
        if (nativeVideoController != null) {
            this.f31452v = nativeVideoController;
            m6635h();
        }
    }

    public void setMediaErrorListener(AbstractC8043a aVar) {
        this.f31450t = aVar;
    }

    public void setPlaybackEventListener(AbstractC8044b bVar) {
        this.f31449s = bVar;
    }

    public void setQuartileCompletedListener(AbstractC8045c cVar) {
        this.f31448r = cVar;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map<String, String> map) {
        this.f31432a = uri;
        this.f31433b = map;
        m6637g();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        PowerManager powerManager = (PowerManager) getContext().getSystemService("power");
        boolean inKeyguardRestrictedInputMode = ((KeyguardManager) getContext().getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        boolean isScreenOn = Build.VERSION.SDK_INT < 20 ? powerManager.isScreenOn() : powerManager.isInteractive();
        boolean b = m6650b();
        C8152be beVar = (C8152be) getTag();
        boolean z = beVar == null || ((Boolean) beVar.f31697v.get("shouldAutoPlay")).booleanValue();
        if (b && !z) {
            m6655a(8, 0);
        }
        if (b && isScreenOn && !this.f31434c.isPlaying() && z && (this.f31451u || !inKeyguardRestrictedInputMode)) {
            int intValue = (beVar == null || ((Boolean) beVar.f31697v.get("didCompleteQ4")).booleanValue()) ? 0 : ((Integer) beVar.f31697v.get("seekPosition")).intValue();
            m6643d();
            m6656a(intValue);
            this.f31434c.start();
            this.f31434c.f31813a = 3;
            m6655a(8, 8);
            if (beVar != null) {
                beVar.f31697v.put("didCompleteQ4", false);
                if (beVar.m6313a()) {
                    m6641e();
                }
                if (((Boolean) beVar.f31697v.get("didPause")).booleanValue()) {
                    getPlaybackEventListener().mo6359a(3);
                    beVar.f31697v.put("didPause", false);
                } else {
                    getPlaybackEventListener().mo6359a(1);
                }
                HandlerC8046d dVar = this.f31438g;
                if (dVar != null && !dVar.hasMessages(1)) {
                    this.f31438g.sendEmptyMessage(1);
                }
            }
            NativeVideoController nativeVideoController = this.f31452v;
            if (nativeVideoController != null) {
                nativeVideoController.m6665a();
            }
        }
        C8135av avVar = this.f31434c;
        if (avVar != null) {
            avVar.f31814b = 3;
        }
    }
}
