package com.aotter.net.trek.ads.view;

import android.media.MediaPlayer;
/* renamed from: com.aotter.net.trek.ads.view.u */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/u.class */
public class C1710u implements MediaPlayer.OnBufferingUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ TextureVideoView f1400a;

    public C1710u(TextureVideoView textureVideoView) {
        this.f1400a = textureVideoView;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f1400a.f1328x = i;
    }
}
