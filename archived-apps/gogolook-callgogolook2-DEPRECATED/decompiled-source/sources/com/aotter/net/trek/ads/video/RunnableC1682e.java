package com.aotter.net.trek.ads.video;

import android.widget.TextView;
import android.widget.VideoView;
/* renamed from: com.aotter.net.trek.ads.video.e */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/e.class */
public class RunnableC1682e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f1258a;

    /* renamed from: b */
    public final /* synthetic */ C1681d f1259b;

    public RunnableC1682e(C1681d dVar, int i) {
        this.f1259b = dVar;
        this.f1258a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        TextView textView;
        boolean z;
        VideoView videoView;
        do {
            textView = this.f1259b.f1257b.f1239j;
            textView.post(new RunnableC1683f(this));
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            z = this.f1259b.f1257b.f1249t;
            if (z) {
                videoView = this.f1259b.f1257b.f1235f;
            } else {
                return;
            }
        } while (videoView.getCurrentPosition() < this.f1258a);
    }
}
