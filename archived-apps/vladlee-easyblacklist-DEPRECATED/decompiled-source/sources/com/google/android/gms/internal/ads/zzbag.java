package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbag.class */
public abstract class zzbag extends TextureView implements AbstractC1920hd {

    /* renamed from: a */
    protected final zzbaq f11577a = new zzbaq();

    /* renamed from: b */
    protected final zzbba f11578b;

    public zzbag(Context context) {
        super(context);
        this.f11578b = new zzbba(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzbah zzbahVar);

    public void zzb(String str, String[] strArr) {
        setVideoPath(str);
    }

    public void zzcv(int i) {
    }

    public void zzcw(int i) {
    }

    public void zzcx(int i) {
    }

    public void zzcy(int i) {
    }

    public void zzcz(int i) {
    }

    public abstract String zzxo();

    public abstract void zzxs();
}
