package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrp.class */
public final class zzrp {

    /* renamed from: a */
    private zzvu f15429a;

    /* renamed from: b */
    private final Context f15430b;

    /* renamed from: c */
    private final String f15431c;

    /* renamed from: d */
    private final zzxj f15432d;

    /* renamed from: e */
    private final int f15433e;

    /* renamed from: f */
    private final AppOpenAd.AppOpenAdLoadCallback f15434f;

    /* renamed from: g */
    private final zzakz f15435g = new zzakz();

    /* renamed from: h */
    private final zzuh f15436h = zzuh.zzccn;

    public zzrp(Context context, String str, zzxj zzxjVar, int i, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f15430b = context;
        this.f15431c = str;
        this.f15432d = zzxjVar;
        this.f15433e = i;
        this.f15434f = appOpenAdLoadCallback;
    }

    public final void zzmn() {
        try {
            this.f15429a = zzve.zzov().zza(this.f15430b, zzuj.zzom(), this.f15431c, this.f15435g);
            this.f15429a.zza(new zzuo(this.f15433e));
            this.f15429a.zza(new zzrd(this.f15434f));
            this.f15429a.zza(zzuh.zza(this.f15430b, this.f15432d));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
