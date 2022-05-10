package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzadp;
import com.google.android.gms.internal.ads.zzadr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/MediaView.class */
public class MediaView extends FrameLayout {

    /* renamed from: a */
    public MediaContent f22692a;

    /* renamed from: b */
    public boolean f22693b;

    /* renamed from: c */
    public zzadp f22694c;

    /* renamed from: d */
    public ImageView.ScaleType f22695d;

    /* renamed from: e */
    public boolean f22696e;

    /* renamed from: f */
    public zzadr f22697f;

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

    /* renamed from: a */
    public final void m18072a(zzadp zzadpVar) {
        synchronized (this) {
            this.f22694c = zzadpVar;
            if (this.f22693b) {
                zzadpVar.mo16847a(this.f22692a);
            }
        }
    }

    /* renamed from: a */
    public final void m18071a(zzadr zzadrVar) {
        synchronized (this) {
            this.f22697f = zzadrVar;
            if (this.f22696e) {
                zzadrVar.mo16846a(this.f22695d);
            }
        }
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f22696e = true;
        this.f22695d = scaleType;
        zzadr zzadrVar = this.f22697f;
        if (zzadrVar != null) {
            zzadrVar.mo16846a(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.f22693b = true;
        this.f22692a = mediaContent;
        zzadp zzadpVar = this.f22694c;
        if (zzadpVar != null) {
            zzadpVar.mo16847a(mediaContent);
        }
    }
}
