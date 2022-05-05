package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabu.class */
public final class zzabu extends zzach {

    /* renamed from: a */
    private final Drawable f10841a;

    /* renamed from: b */
    private final Uri f10842b;

    /* renamed from: c */
    private final double f10843c;

    /* renamed from: d */
    private final int f10844d;

    /* renamed from: e */
    private final int f10845e;

    public zzabu(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.f10841a = drawable;
        this.f10842b = uri;
        this.f10843c = d;
        this.f10844d = i;
        this.f10845e = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final int getHeight() {
        return this.f10845e;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final double getScale() {
        return this.f10843c;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final Uri getUri() {
        return this.f10842b;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final int getWidth() {
        return this.f10844d;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final IObjectWrapper zzrc() {
        return ObjectWrapper.wrap(this.f10841a);
    }
}
