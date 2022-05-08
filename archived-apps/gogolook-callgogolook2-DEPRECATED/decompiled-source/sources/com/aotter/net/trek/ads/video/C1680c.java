package com.aotter.net.trek.ads.video;

import android.media.MediaPlayer;
import android.widget.VideoView;
/* renamed from: com.aotter.net.trek.ads.video.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/c.class */
public class C1680c implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    public final /* synthetic */ NativeVideoViewController f1255a;

    public C1680c(NativeVideoViewController nativeVideoViewController) {
        this.f1255a = nativeVideoViewController;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        VideoView videoView;
        NativeVideoViewController nativeVideoViewController = this.f1255a;
        videoView = nativeVideoViewController.f1235f;
        nativeVideoViewController.f1248s = videoView.getDuration();
    }
}
