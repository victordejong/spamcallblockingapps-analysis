package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2923l;
import p131c.p161d.p170b.p188c.p204h1.C2924m;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/VideoDecoderGLSurfaceView.class */
public class VideoDecoderGLSurfaceView extends GLSurfaceView {

    /* renamed from: a */
    public final C2924m f22635a;

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22635a = new C2924m(this);
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(this.f22635a);
        setRenderMode(0);
    }

    public AbstractC2923l getVideoDecoderOutputBufferRenderer() {
        return this.f22635a;
    }
}
