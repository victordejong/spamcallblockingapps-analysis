package com.aotter.net.trek.ads.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.interfaces.InterActiveWebViewListener;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.network.ImageHelper;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/TrekMediaView.class */
public class TrekMediaView extends RelativeLayout implements InterActiveWebViewListener {

    /* renamed from: a */
    public double f1331a;
    @NonNull

    /* renamed from: b */
    public ImageView f1332b;
    @NonNull

    /* renamed from: c */
    public InterActiveWebView f1333c;

    /* renamed from: d */
    public Activity f1334d;

    /* renamed from: e */
    public AdListener f1335e;

    public TrekMediaView(Context context) {
        this(context, null);
    }

    public TrekMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrekMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Preconditions.checkNotNull(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f1333c = new InterActiveWebView(context);
        this.f1333c.setLayoutParams(layoutParams);
        this.f1333c.setListener(this);
        this.f1332b = new ImageView(context);
        this.f1332b.setLayoutParams(layoutParams);
        this.f1332b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f1332b.setVisibility(0);
        addView(this.f1333c);
        addView(this.f1332b);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        try {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (this.f1331a != 0.0d) {
                layoutParams.height = (int) (getMeasuredWidth() * this.f1331a);
                setLayoutParams(layoutParams);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.aotter.net.trek.ads.interfaces.InterActiveWebViewListener
    public void onPageFinish() {
        this.f1334d.runOnUiThread(new RunnableC1712w(this));
    }

    public void onPause() {
        this.f1333c.onPause();
    }

    public void onResume() {
        this.f1333c.onResume();
    }

    public void recordImpression() {
        this.f1333c.recordImpression();
    }

    public void setActivity(Activity activity) {
        this.f1334d = activity;
    }

    public void setAdapter(AdListener adListener) {
        this.f1335e = adListener;
    }

    public void setMediaBackgroundBlack(boolean z) {
        this.f1333c.setMediaBackgroundBlack(z);
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.f1333c.create(this.f1334d, this.f1335e, nativeAd);
        this.f1333c.setBackgroundColor(0);
        if (nativeAd.getInteractSrc() != null) {
            this.f1331a = nativeAd.getInteractSrc().getHeight() / nativeAd.getInteractSrc().getWidth();
            if (!TextUtils.isEmpty(nativeAd.getInteractSrc().getBgPlaceholder())) {
                ImageHelper.loadImageView(nativeAd.getInteractSrc().getBgPlaceholder(), this.f1332b);
                this.f1332b.setVisibility(0);
            }
            this.f1333c.loadUrl(nativeAd.getInteractSrc().getUrlInteractive());
        }
    }
}
