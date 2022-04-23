package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdac.class */
public final class zzdac {

    /* renamed from: a */
    private final zzald f14106a;

    public zzdac(zzald zzaldVar) {
        this.f14106a = zzaldVar;
    }

    public final void destroy() {
        try {
            this.f14106a.destroy();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final zzxb getVideoController() {
        try {
            return this.f14106a.getVideoController();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final View getView() {
        try {
            return (View) ObjectWrapper.unwrap(this.f14106a.zzsk());
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final boolean isInitialized() {
        try {
            return this.f14106a.isInitialized();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void onContextChanged(Context context) {
        try {
            this.f14106a.zzs(ObjectWrapper.wrap(context));
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void pause() {
        try {
            this.f14106a.pause();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void resume() {
        try {
            this.f14106a.resume();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.f14106a.setImmersiveMode(z);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void showInterstitial() {
        try {
            this.f14106a.showInterstitial();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void showVideo() {
        try {
            this.f14106a.showVideo();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzagp zzagpVar, List<zzagx> list) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzagpVar, list);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzarz zzarzVar, List<String> list) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzarzVar, list);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzug zzugVar, String str, zzali zzaliVar) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzugVar, str, zzaliVar);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzug zzugVar, String str, zzarz zzarzVar, String str2) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzugVar, (String) null, zzarzVar, str2);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzugVar, str, str2, zzaliVar);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzug zzugVar, String str, String str2, zzali zzaliVar, zzaby zzabyVar, List<String> list) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzugVar, str, str2, zzaliVar, zzabyVar, list);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzuj zzujVar, zzug zzugVar, String str, zzali zzaliVar) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzujVar, zzugVar, str, zzaliVar);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(Context context, zzuj zzujVar, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        try {
            this.f14106a.zza(ObjectWrapper.wrap(context), zzujVar, zzugVar, str, str2, zzaliVar);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zza(zzug zzugVar, String str) {
        try {
            this.f14106a.zza(zzugVar, str);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zzb(Context context, zzug zzugVar, String str, zzali zzaliVar) {
        try {
            this.f14106a.zzb(ObjectWrapper.wrap(context), zzugVar, str, zzaliVar);
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final void zzcb(Context context) {
        try {
            this.f14106a.zzt(ObjectWrapper.wrap(context));
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final zzall zzsl() {
        try {
            return this.f14106a.zzsl();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final zzalq zzsm() {
        try {
            return this.f14106a.zzsm();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final boolean zzsp() {
        try {
            return this.f14106a.zzsp();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }

    public final zzalr zzsr() {
        try {
            return this.f14106a.zzsr();
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }
}
