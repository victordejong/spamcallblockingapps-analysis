package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.internal.ads.zzabt;
import com.google.android.gms.internal.ads.zzabv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/MediaView.class */
public class MediaView extends FrameLayout {

    /* renamed from: a */
    private UnifiedNativeAd.MediaContent f5852a;

    /* renamed from: b */
    private boolean f5853b;

    /* renamed from: c */
    private zzabt f5854c;

    /* renamed from: d */
    private ImageView.ScaleType f5855d;

    /* renamed from: e */
    private boolean f5856e;

    /* renamed from: f */
    private zzabv f5857f;

    public MediaView(Context context) {
        super(context);
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6090a(zzabt zzabtVar) {
        synchronized (this) {
            this.f5854c = zzabtVar;
            if (this.f5853b) {
                zzabtVar.setMediaContent(this.f5852a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6089a(zzabv zzabvVar) {
        synchronized (this) {
            this.f5857f = zzabvVar;
            if (this.f5856e) {
                zzabvVar.setImageScaleType(this.f5855d);
            }
        }
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f5856e = true;
        this.f5855d = scaleType;
        zzabv zzabvVar = this.f5857f;
        if (zzabvVar != null) {
            zzabvVar.setImageScaleType(this.f5855d);
        }
    }

    public void setMediaContent(UnifiedNativeAd.MediaContent mediaContent) {
        this.f5853b = true;
        this.f5852a = mediaContent;
        zzabt zzabtVar = this.f5854c;
        if (zzabtVar != null) {
            zzabtVar.setMediaContent(mediaContent);
        }
    }
}
