package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.zzq;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazx.class */
public final class zzazx extends zzbag implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {

    /* renamed from: c */
    private static final Map<Integer, String> f11561c = new HashMap();

    /* renamed from: d */
    private final zzbay f11562d;

    /* renamed from: e */
    private final boolean f11563e;

    /* renamed from: f */
    private int f11564f = 0;

    /* renamed from: g */
    private int f11565g = 0;

    /* renamed from: h */
    private MediaPlayer f11566h;

    /* renamed from: i */
    private Uri f11567i;

    /* renamed from: j */
    private int f11568j;

    /* renamed from: k */
    private int f11569k;

    /* renamed from: l */
    private int f11570l;

    /* renamed from: m */
    private int f11571m;

    /* renamed from: n */
    private int f11572n;

    /* renamed from: o */
    private zzbax f11573o;

    /* renamed from: p */
    private boolean f11574p;

    /* renamed from: q */
    private int f11575q;

    /* renamed from: r */
    private zzbah f11576r;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f11561c.put(-1004, "MEDIA_ERROR_IO");
            f11561c.put(-1007, "MEDIA_ERROR_MALFORMED");
            f11561c.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            f11561c.put(-110, "MEDIA_ERROR_TIMED_OUT");
            f11561c.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        f11561c.put(100, "MEDIA_ERROR_SERVER_DIED");
        f11561c.put(1, "MEDIA_ERROR_UNKNOWN");
        f11561c.put(1, "MEDIA_INFO_UNKNOWN");
        f11561c.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        f11561c.put(701, "MEDIA_INFO_BUFFERING_START");
        f11561c.put(702, "MEDIA_INFO_BUFFERING_END");
        f11561c.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        f11561c.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        f11561c.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            f11561c.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            f11561c.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzazx(Context context, boolean z, boolean z2, zzbaw zzbawVar, zzbay zzbayVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.f11562d = zzbayVar;
        this.f11574p = z;
        this.f11563e = z2;
        this.f11562d.zzb(this);
    }

    /* renamed from: a */
    private final void m4190a() {
        zzavs.zzed("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f11567i != null && surfaceTexture != null) {
            m4186a(false);
            try {
                zzq.zzlg();
                this.f11566h = new MediaPlayer();
                this.f11566h.setOnBufferingUpdateListener(this);
                this.f11566h.setOnCompletionListener(this);
                this.f11566h.setOnErrorListener(this);
                this.f11566h.setOnInfoListener(this);
                this.f11566h.setOnPreparedListener(this);
                this.f11566h.setOnVideoSizeChangedListener(this);
                this.f11570l = 0;
                SurfaceTexture surfaceTexture2 = surfaceTexture;
                if (this.f11574p) {
                    this.f11573o = new zzbax(getContext());
                    this.f11573o.zza(surfaceTexture, getWidth(), getHeight());
                    this.f11573o.start();
                    surfaceTexture2 = this.f11573o.zzyg();
                    if (surfaceTexture2 == null) {
                        this.f11573o.zzyf();
                        this.f11573o = null;
                        surfaceTexture2 = surfaceTexture;
                    }
                }
                this.f11566h.setDataSource(getContext(), this.f11567i);
                zzq.zzlh();
                this.f11566h.setSurface(new Surface(surfaceTexture2));
                this.f11566h.setAudioStreamType(3);
                this.f11566h.setScreenOnWhilePlaying(true);
                this.f11566h.prepareAsync();
                m4184b(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                String valueOf = String.valueOf(this.f11567i);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                sb.append("Failed to initialize MediaPlayer at ");
                sb.append(valueOf);
                zzavs.zzd(sb.toString(), e);
                onError(this.f11566h, 1, 0);
            }
        }
    }

    /* renamed from: a */
    private final void m4189a(float f) {
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException e) {
            }
        } else {
            zzavs.zzez("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    /* renamed from: a */
    private final void m4186a(boolean z) {
        zzavs.zzed("AdMediaPlayerView release");
        zzbax zzbaxVar = this.f11573o;
        if (zzbaxVar != null) {
            zzbaxVar.zzyf();
            this.f11573o = null;
        }
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f11566h.release();
            this.f11566h = null;
            m4184b(0);
            if (z) {
                this.f11565g = 0;
                this.f11565g = 0;
            }
        }
    }

    /* renamed from: b */
    private final void m4185b() {
        if (this.f11563e && m4183c() && this.f11566h.getCurrentPosition() > 0 && this.f11565g != 3) {
            zzavs.zzed("AdMediaPlayerView nudging MediaPlayer");
            m4189a(0.0f);
            this.f11566h.start();
            int currentPosition = this.f11566h.getCurrentPosition();
            long currentTimeMillis = zzq.zzkx().currentTimeMillis();
            while (m4183c() && this.f11566h.getCurrentPosition() == currentPosition && zzq.zzkx().currentTimeMillis() - currentTimeMillis <= 250) {
            }
            this.f11566h.pause();
            zzxs();
        }
    }

    /* renamed from: b */
    private final void m4184b(int i) {
        if (i == 3) {
            this.f11562d.zzyi();
            this.f11578b.zzyi();
        } else if (this.f11564f == 3) {
            this.f11562d.zzyj();
            this.f11578b.zzyj();
        }
        this.f11564f = i;
    }

    /* renamed from: c */
    private final boolean m4183c() {
        int i;
        return (this.f11566h == null || (i = this.f11564f) == -1 || i == 0 || i == 1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4188a(int i) {
        zzbah zzbahVar = this.f11576r;
        if (zzbahVar != null) {
            zzbahVar.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getCurrentPosition() {
        if (m4183c()) {
            return this.f11566h.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getDuration() {
        if (m4183c()) {
            return this.f11566h.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f11570l = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzavs.zzed("AdMediaPlayerView completion");
        m4184b(5);
        this.f11565g = 5;
        zzawb.zzdsr.post(new RunnableC1900gk(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f11561c.get(Integer.valueOf(i));
        String str2 = f11561c.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzavs.zzez(sb.toString());
        m4184b(-1);
        this.f11565g = -1;
        zzawb.zzdsr.post(new RunnableC1903gn(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f11561c.get(Integer.valueOf(i));
        String str2 = f11561c.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzavs.zzed(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ec, code lost:
        if (r6 > r0) goto L_0x00ef;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzazx.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzavs.zzed("AdMediaPlayerView prepared");
        m4184b(2);
        this.f11562d.zzer();
        zzawb.zzdsr.post(new RunnableC1901gl(this));
        this.f11568j = mediaPlayer.getVideoWidth();
        this.f11569k = mediaPlayer.getVideoHeight();
        int i = this.f11575q;
        if (i != 0) {
            seekTo(i);
        }
        m4185b();
        int i2 = this.f11568j;
        int i3 = this.f11569k;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzavs.zzey(sb.toString());
        if (this.f11565g == 3) {
            play();
        }
        zzxs();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzavs.zzed("AdMediaPlayerView surface created");
        m4190a();
        zzawb.zzdsr.post(new RunnableC1902gm(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzavs.zzed("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null && this.f11575q == 0) {
            this.f11575q = mediaPlayer.getCurrentPosition();
        }
        zzbax zzbaxVar = this.f11573o;
        if (zzbaxVar != null) {
            zzbaxVar.zzyf();
        }
        zzawb.zzdsr.post(new RunnableC1904go(this));
        m4186a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzavs.zzed("AdMediaPlayerView surface changed");
        boolean z = true;
        boolean z2 = this.f11565g == 3;
        if (!(this.f11568j == i && this.f11569k == i2)) {
            z = false;
        }
        if (this.f11566h != null && z2 && z) {
            int i3 = this.f11575q;
            if (i3 != 0) {
                seekTo(i3);
            }
            play();
        }
        zzbax zzbaxVar = this.f11573o;
        if (zzbaxVar != null) {
            zzbaxVar.zzm(i, i2);
        }
        zzawb.zzdsr.post(new RunnableC1905gp(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f11562d.zzc(this);
        this.f11577a.zza(surfaceTexture, this.f11576r);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzavs.zzed(sb.toString());
        this.f11568j = mediaPlayer.getVideoWidth();
        this.f11569k = mediaPlayer.getVideoHeight();
        if (this.f11568j != 0 && this.f11569k != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzavs.zzed(sb.toString());
        zzawb.zzdsr.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.gj

            /* renamed from: a */
            private final zzazx f8501a;

            /* renamed from: b */
            private final int f8502b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8501a = this;
                this.f8502b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8501a.m4188a(this.f8502b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void pause() {
        zzavs.zzed("AdMediaPlayerView pause");
        if (m4183c() && this.f11566h.isPlaying()) {
            this.f11566h.pause();
            m4184b(4);
            zzawb.zzdsr.post(new RunnableC1906gq(this));
        }
        this.f11565g = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void play() {
        zzavs.zzed("AdMediaPlayerView play");
        if (m4183c()) {
            this.f11566h.start();
            m4184b(3);
            this.f11577a.zzxu();
            zzawb.zzdsr.post(new RunnableC1907gr(this));
        }
        this.f11565g = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void seekTo(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzavs.zzed(sb.toString());
        if (m4183c()) {
            this.f11566h.seekTo(i);
            this.f11575q = 0;
            return;
        }
        this.f11575q = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzry zzd = zzry.zzd(parse);
        if (zzd == null || zzd.url != null) {
            if (zzd != null) {
                parse = Uri.parse(zzd.url);
            }
            this.f11567i = parse;
            this.f11575q = 0;
            m4190a();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void stop() {
        zzavs.zzed("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f11566h;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f11566h.release();
            this.f11566h = null;
            m4184b(0);
            this.f11565g = 0;
        }
        this.f11562d.onStop();
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zza(float f, float f2) {
        zzbax zzbaxVar = this.f11573o;
        if (zzbaxVar != null) {
            zzbaxVar.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final void zza(zzbah zzbahVar) {
        this.f11576r = zzbahVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbag
    public final String zzxo() {
        String str = this.f11574p ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbag, com.google.android.gms.internal.ads.AbstractC1920hd
    public final void zzxs() {
        m4189a(this.f11578b.getVolume());
    }
}
