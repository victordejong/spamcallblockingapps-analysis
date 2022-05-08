package com.aotter.net.trek.ads.view;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.widget.MediaController;
/* renamed from: com.aotter.net.trek.ads.view.p */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/p.class */
public class C1705p implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1395a;

    public C1705p(TextureVideoView textureVideoView) {
        this.f1395a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        MediaPlayer.OnPreparedListener onPreparedListener;
        MediaController mediaController;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        MediaController mediaController2;
        MediaController mediaController3;
        MediaController mediaController4;
        MediaController mediaController5;
        MediaController mediaController6;
        MediaPlayer.OnPreparedListener onPreparedListener2;
        MediaPlayer mediaPlayer2;
        this.f1395a.f1318n = 2;
        TextureVideoView textureVideoView = this.f1395a;
        textureVideoView.f1304B = textureVideoView.f1305C = textureVideoView.f1306D = true;
        onPreparedListener = this.f1395a.f1327w;
        if (onPreparedListener != null) {
            onPreparedListener2 = this.f1395a.f1327w;
            mediaPlayer2 = this.f1395a.f1321q;
            onPreparedListener2.onPrepared(mediaPlayer2);
        }
        mediaController = this.f1395a.f1325u;
        if (mediaController != null) {
            mediaController6 = this.f1395a.f1325u;
            mediaController6.setEnabled(true);
        }
        this.f1395a.f1323s = mediaPlayer.getVideoWidth();
        this.f1395a.f1324t = mediaPlayer.getVideoHeight();
        i = this.f1395a.f1303A;
        if (i != 0) {
            this.f1395a.seekTo(i);
        }
        i2 = this.f1395a.f1323s;
        if (i2 != 0) {
            i4 = this.f1395a.f1324t;
            if (i4 != 0) {
                SurfaceTexture surfaceTexture = this.f1395a.getSurfaceTexture();
                i5 = this.f1395a.f1323s;
                i6 = this.f1395a.f1324t;
                surfaceTexture.setDefaultBufferSize(i5, i6);
                i7 = this.f1395a.f1319o;
                if (i7 == 3) {
                    this.f1395a.start();
                    mediaController4 = this.f1395a.f1325u;
                    if (mediaController4 != null) {
                        mediaController5 = this.f1395a.f1325u;
                        mediaController5.show();
                        return;
                    }
                    return;
                } else if (this.f1395a.isPlaying()) {
                    return;
                } else {
                    if (i != 0 || this.f1395a.getCurrentPosition() > 0) {
                        mediaController2 = this.f1395a.f1325u;
                        if (mediaController2 != null) {
                            mediaController3 = this.f1395a.f1325u;
                            mediaController3.show(0);
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
        }
        i3 = this.f1395a.f1319o;
        if (i3 == 3) {
            this.f1395a.start();
        }
    }
}
