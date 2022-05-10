package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CtaButtonDrawable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCtaButtonWidget.class */
public class VastVideoCtaButtonWidget extends ImageView {

    /* renamed from: a */
    public CtaButtonDrawable f34288a;

    /* renamed from: b */
    public final RelativeLayout.LayoutParams f34289b;

    /* renamed from: c */
    public final RelativeLayout.LayoutParams f34290c;

    /* renamed from: d */
    public boolean f34291d;

    /* renamed from: e */
    public boolean f34292e;

    /* renamed from: f */
    public boolean f34293f;

    /* renamed from: g */
    public boolean f34294g;

    public VastVideoCtaButtonWidget(Context context, int i, boolean z, boolean z2) {
        super(context);
        this.f34293f = z;
        this.f34294g = z2;
        setId(View.generateViewId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        this.f34288a = ctaButtonDrawable;
        setImageDrawable(ctaButtonDrawable);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f34289b = layoutParams;
        layoutParams.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.f34289b.addRule(8, i);
        this.f34289b.addRule(7, i);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f34290c = layoutParams2;
        layoutParams2.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.f34290c.addRule(12);
        this.f34290c.addRule(11);
        m4249c();
    }

    /* renamed from: a */
    public void m4252a() {
        this.f34291d = true;
        this.f34292e = true;
        m4249c();
    }

    /* renamed from: a */
    public void m4251a(String str) {
        this.f34288a.setCtaText(str);
    }

    /* renamed from: b */
    public void m4250b() {
        this.f34291d = true;
        m4249c();
    }

    /* renamed from: c */
    public final void m4249c() {
        if (!this.f34294g) {
            setVisibility(8);
        } else if (!this.f34291d) {
            setVisibility(4);
        } else if (!this.f34292e || !this.f34293f) {
            int i = getResources().getConfiguration().orientation;
            if (i == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34290c);
            } else if (i == 1) {
                setLayoutParams(this.f34290c);
            } else if (i == 2) {
                setLayoutParams(this.f34289b);
            } else if (i != 3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34290c);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.f34290c);
            }
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    @Deprecated
    @VisibleForTesting
    public String getCtaText() {
        return this.f34288a.getCtaText();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m4249c();
    }
}
