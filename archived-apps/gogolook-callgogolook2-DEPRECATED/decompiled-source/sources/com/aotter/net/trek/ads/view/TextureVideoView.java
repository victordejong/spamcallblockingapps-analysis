package com.aotter.net.trek.ads.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import androidx.media2.exoplayer.external.util.MimeTypes;
import java.io.IOException;
import java.util.Map;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/TextureVideoView.class */
public class TextureVideoView extends TextureView implements MediaController.MediaPlayerControl {

    /* renamed from: g */
    public static final int f1296g = -1;

    /* renamed from: h */
    public static final int f1297h = 0;

    /* renamed from: i */
    public static final int f1298i = 1;

    /* renamed from: j */
    public static final int f1299j = 2;

    /* renamed from: k */
    public static final int f1300k = 3;

    /* renamed from: l */
    public static final int f1301l = 4;

    /* renamed from: m */
    public static final int f1302m = 5;

    /* renamed from: A */
    public int f1303A;

    /* renamed from: B */
    public boolean f1304B;

    /* renamed from: C */
    public boolean f1305C;

    /* renamed from: D */
    public boolean f1306D;

    /* renamed from: E */
    public OnPlayerStateChangeListener f1307E;

    /* renamed from: F */
    public MediaPlayer.OnCompletionListener f1308F;

    /* renamed from: G */
    public MediaPlayer.OnInfoListener f1309G;

    /* renamed from: H */
    public MediaPlayer.OnErrorListener f1310H;

    /* renamed from: I */
    public MediaPlayer.OnBufferingUpdateListener f1311I;

    /* renamed from: a */
    public MediaPlayer.OnVideoSizeChangedListener f1312a;

    /* renamed from: b */
    public MediaPlayer.OnPreparedListener f1313b;

    /* renamed from: c */
    public TextureView.SurfaceTextureListener f1314c;

    /* renamed from: d */
    public String f1315d;

    /* renamed from: e */
    public Uri f1316e;

    /* renamed from: f */
    public Map<String, String> f1317f;

    /* renamed from: n */
    public int f1318n;

    /* renamed from: o */
    public int f1319o;

    /* renamed from: p */
    public Surface f1320p;

    /* renamed from: q */
    public MediaPlayer f1321q;

    /* renamed from: r */
    public int f1322r;

    /* renamed from: s */
    public int f1323s;

    /* renamed from: t */
    public int f1324t;

    /* renamed from: u */
    public MediaController f1325u;

    /* renamed from: v */
    public MediaPlayer.OnCompletionListener f1326v;

    /* renamed from: w */
    public MediaPlayer.OnPreparedListener f1327w;

    /* renamed from: x */
    public int f1328x;

    /* renamed from: y */
    public MediaPlayer.OnErrorListener f1329y;

    /* renamed from: z */
    public MediaPlayer.OnInfoListener f1330z;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/TextureVideoView$OnPlayerStateChangeListener.class */
    public interface OnPlayerStateChangeListener {
        void onStateChange(int i, int i2);
    }

    public TextureVideoView(Context context) {
        super(context);
        this.f1315d = "TextureVideoView";
        this.f1318n = 0;
        this.f1319o = 0;
        this.f1320p = null;
        this.f1321q = null;
        this.f1312a = new C1704o(this);
        this.f1313b = new C1705p(this);
        this.f1308F = new C1706q(this);
        this.f1309G = new C1707r(this);
        this.f1310H = new C1708s(this);
        this.f1311I = new C1710u(this);
        this.f1314c = new TextureView$SurfaceTextureListenerC1711v(this);
        m36464a();
    }

    public TextureVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        m36464a();
    }

    public TextureVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1315d = "TextureVideoView";
        this.f1318n = 0;
        this.f1319o = 0;
        this.f1320p = null;
        this.f1321q = null;
        this.f1312a = new C1704o(this);
        this.f1313b = new C1705p(this);
        this.f1308F = new C1706q(this);
        this.f1309G = new C1707r(this);
        this.f1310H = new C1708s(this);
        this.f1311I = new C1710u(this);
        this.f1314c = new TextureView$SurfaceTextureListenerC1711v(this);
        m36464a();
    }

    /* renamed from: a */
    private void m36464a() {
        this.f1323s = 0;
        this.f1324t = 0;
        setSurfaceTextureListener(this.f1314c);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f1318n = 0;
        this.f1319o = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36459a(boolean z) {
        MediaPlayer mediaPlayer = this.f1321q;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f1321q.release();
            this.f1321q = null;
            this.f1318n = 0;
            if (z) {
                this.f1319o = 0;
            }
            ((AudioManager) getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)).abandonAudioFocus(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m36458b() {
        StringBuilder sb;
        if (this.f1316e != null && this.f1320p != null) {
            m36459a(false);
            try {
                this.f1321q = new MediaPlayer();
                if (this.f1322r != 0) {
                    this.f1321q.setAudioSessionId(this.f1322r);
                } else {
                    this.f1322r = this.f1321q.getAudioSessionId();
                }
                this.f1321q.setOnPreparedListener(this.f1313b);
                this.f1321q.setOnVideoSizeChangedListener(this.f1312a);
                this.f1321q.setOnCompletionListener(this.f1308F);
                this.f1321q.setOnErrorListener(this.f1310H);
                this.f1321q.setOnInfoListener(this.f1309G);
                this.f1321q.setOnBufferingUpdateListener(this.f1311I);
                this.f1328x = 0;
                this.f1321q.setDataSource(getContext().getApplicationContext(), this.f1316e, this.f1317f);
                this.f1321q.setSurface(this.f1320p);
                this.f1321q.setAudioStreamType(3);
                this.f1321q.setScreenOnWhilePlaying(true);
                this.f1321q.prepareAsync();
                this.f1318n = 1;
                m36454c();
            } catch (IOException e) {
                sb = new StringBuilder();
                sb.append("Unable to open content: ");
                sb.append(this.f1316e);
                sb.toString();
                this.f1318n = -1;
                this.f1319o = -1;
                this.f1310H.onError(this.f1321q, 1, 0);
            } catch (IllegalArgumentException e2) {
                sb = new StringBuilder();
                sb.append("Unable to open content: ");
                sb.append(this.f1316e);
                sb.toString();
                this.f1318n = -1;
                this.f1319o = -1;
                this.f1310H.onError(this.f1321q, 1, 0);
            }
        }
    }

    /* renamed from: c */
    private void m36454c() {
        MediaController mediaController;
        if (this.f1321q != null && (mediaController = this.f1325u) != null) {
            mediaController.setMediaPlayer(this);
            this.f1325u.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
            this.f1325u.setEnabled(m36446e());
        }
    }

    /* renamed from: d */
    private void m36450d() {
        if (this.f1325u.isShowing()) {
            this.f1325u.hide();
        } else {
            this.f1325u.show();
        }
    }

    /* renamed from: e */
    private boolean m36446e() {
        int i;
        boolean z = true;
        if (this.f1321q == null || (i = this.f1318n) == -1 || i == 0 || i == 1) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.f1304B;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.f1305C;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.f1306D;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.f1322r == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f1322r = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.f1322r;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.f1321q != null) {
            return this.f1328x;
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (m36446e()) {
            return this.f1321q.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (m36446e()) {
            return this.f1321q.getDuration();
        }
        return -1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return m36446e() && this.f1321q.isPlaying();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextureVideoView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextureVideoView.class.getName());
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean z = (i == 4 || i == 24 || i == 25 || i == 164 || i == 82 || i == 5 || i == 6) ? false : true;
        if (m36446e() && z && this.f1325u != null) {
            if (i == 79 || i == 85) {
                if (this.f1321q.isPlaying()) {
                    pause();
                    this.f1325u.show();
                    return true;
                }
                start();
                this.f1325u.hide();
                return true;
            } else if (i == 126) {
                if (this.f1321q.isPlaying()) {
                    return true;
                }
                start();
                this.f1325u.hide();
                return true;
            } else if (i != 86 && i != 127) {
                m36450d();
            } else if (!this.f1321q.isPlaying()) {
                return true;
            } else {
                pause();
                this.f1325u.show();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00de, code lost:
        if (r6 > r0) goto L_0x00e1;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.ads.view.TextureVideoView.onMeasure(int, int):void");
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        if (m36446e() && this.f1321q.isPlaying()) {
            this.f1321q.pause();
            this.f1318n = 4;
            OnPlayerStateChangeListener onPlayerStateChangeListener = this.f1307E;
            if (onPlayerStateChangeListener != null) {
                onPlayerStateChangeListener.onStateChange(this.f1318n, getCurrentPosition());
            }
        }
        this.f1319o = 4;
    }

    public int resolveAdjustedSize(int i, int i2) {
        return TextureView.getDefaultSize(i, i2);
    }

    public void resume() {
        m36458b();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        int i2 = i;
        if (m36446e()) {
            this.f1321q.seekTo(i);
            i2 = 0;
        }
        this.f1303A = i2;
    }

    public void setMediaController(MediaController mediaController) {
        MediaController mediaController2 = this.f1325u;
        if (mediaController2 != null) {
            mediaController2.hide();
        }
        this.f1325u = mediaController;
        m36454c();
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f1326v = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.f1329y = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.f1330z = onInfoListener;
    }

    public void setOnPlayerStateChangeListener(OnPlayerStateChangeListener onPlayerStateChangeListener) {
        this.f1307E = onPlayerStateChangeListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f1327w = onPreparedListener;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        setVideoURI(uri, null);
    }

    public void setVideoURI(Uri uri, Map<String, String> map) {
        this.f1316e = uri;
        this.f1317f = map;
        this.f1303A = 0;
        m36458b();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        if (m36446e()) {
            if (this.f1307E != null && !this.f1321q.isPlaying()) {
                this.f1307E.onStateChange(3, getCurrentPosition());
            }
            this.f1321q.start();
            this.f1318n = 3;
        }
        this.f1319o = 3;
    }

    public void stopPlayback() {
        MediaPlayer mediaPlayer = this.f1321q;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f1321q.release();
            this.f1321q = null;
            this.f1318n = 0;
            this.f1319o = 0;
            ((AudioManager) getContext().getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO)).abandonAudioFocus(null);
        }
    }

    public void suspend() {
        m36459a(false);
    }
}
