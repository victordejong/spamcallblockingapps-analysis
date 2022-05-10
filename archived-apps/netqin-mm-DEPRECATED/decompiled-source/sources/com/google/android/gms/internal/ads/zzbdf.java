package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4057t7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdf.class */
public abstract class zzbdf extends TextureView implements AbstractC4057t7 {

    /* renamed from: a */
    public final zzbdp f24790a = new zzbdp();

    /* renamed from: b */
    public final zzbdz f24791b;

    public zzbdf(Context context) {
        super(context);
        this.f24791b = new zzbdz(context, this);
    }

    /* renamed from: a */
    public abstract void mo15737a();

    /* renamed from: a */
    public abstract void mo15736a(float f, float f2);

    /* renamed from: a */
    public abstract void mo15732a(zzbdc zzbdcVar);

    /* renamed from: a */
    public void mo15730a(String str, String[] strArr) {
        setVideoPath(str);
    }

    /* renamed from: b */
    public abstract void mo15729b();

    /* renamed from: b */
    public abstract void mo15728b(int i);

    /* renamed from: c */
    public abstract void mo15726c();

    /* renamed from: c */
    public void mo15725c(int i) {
    }

    /* renamed from: d */
    public abstract void mo15723d();

    /* renamed from: d */
    public void mo15722d(int i) {
    }

    /* renamed from: e */
    public abstract String mo15721e();

    /* renamed from: e */
    public void mo15720e(int i) {
    }

    /* renamed from: f */
    public void mo15718f(int i) {
    }

    /* renamed from: g */
    public void mo15716g(int i) {
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void setVideoPath(String str);
}
