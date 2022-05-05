package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahq.class */
public final class zzahq {

    /* renamed from: a */
    private final Context f10926a;

    /* renamed from: b */
    private final zzvn f10927b;

    private zzahq(Context context, zzvn zzvnVar) {
        this.f10926a = context;
        this.f10927b = zzvnVar;
    }

    public zzahq(Context context, String str) {
        this((Context) Preconditions.checkNotNull(context, "context cannot be null"), zzve.zzov().zzb(context, str, new zzakz()));
    }

    public final zzahq zza(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        try {
            this.f10927b.zza(new zzaho(instreamAdLoadCallback));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final zzahq zza(zzahl zzahlVar) {
        try {
            this.f10927b.zza(new zzagz(zzahlVar));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final zzahn zzry() {
        try {
            return new zzahn(this.f10926a, this.f10927b.zzpd());
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
