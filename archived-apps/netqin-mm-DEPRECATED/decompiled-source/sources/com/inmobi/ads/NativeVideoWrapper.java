package com.inmobi.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeVideoWrapper.class */
public class NativeVideoWrapper extends RelativeLayout {

    /* renamed from: b */
    public static final String f31466b = NativeVideoWrapper.class.getSimpleName();

    /* renamed from: c */
    public ImageView f31468c;

    /* renamed from: d */
    public ProgressBar f31469d;

    /* renamed from: f */
    public AbstractC8172bh f31471f;

    /* renamed from: a */
    public NativeVideoView f31467a = new NativeVideoView(getContext());

    /* renamed from: e */
    public NativeVideoController f31470e = new NativeVideoController(getContext());

    public NativeVideoWrapper(Context context) {
        super(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.f31467a, layoutParams);
        ImageView imageView = new ImageView(getContext());
        this.f31468c = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f31468c.setVisibility(8);
        addView(this.f31468c, layoutParams);
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f31469d = progressBar;
        progressBar.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        addView(this.f31469d, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        this.f31467a.setMediaController(this.f31470e);
        addView(this.f31470e, layoutParams3);
    }

    public ImageView getPoster() {
        return this.f31468c;
    }

    public ProgressBar getProgressBar() {
        return this.f31469d;
    }

    public NativeVideoController getVideoController() {
        return this.f31470e;
    }

    public NativeVideoView getVideoView() {
        return this.f31467a;
    }

    public void setPosterImage(Bitmap bitmap) {
        this.f31468c.setImageBitmap(bitmap);
    }

    public void setVideoEventListener(AbstractC8172bh bhVar) {
        this.f31471f = bhVar;
    }
}
