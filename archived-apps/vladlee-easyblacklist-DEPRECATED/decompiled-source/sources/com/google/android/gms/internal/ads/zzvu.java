package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvu.class */
public interface zzvu extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getAdUnitId();

    String getMediationAdapterClassName();

    zzxb getVideoController();

    boolean isLoading();

    boolean isReady();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void setManualImpressionsEnabled(boolean z);

    void setUserId(String str);

    void showInterstitial();

    void stopLoading();

    void zza(zzaak zzaakVar);

    void zza(zzaoy zzaoyVar);

    void zza(zzape zzapeVar, String str);

    void zza(zzaro zzaroVar);

    void zza(zzrg zzrgVar);

    void zza(zzuj zzujVar);

    void zza(zzuo zzuoVar);

    void zza(zzvg zzvgVar);

    void zza(zzvh zzvhVar);

    void zza(zzvx zzvxVar);

    void zza(zzwc zzwcVar);

    void zza(zzwi zzwiVar);

    void zza(zzxh zzxhVar);

    void zza(zzyw zzywVar);

    boolean zza(zzug zzugVar);

    void zzbr(String str);

    IObjectWrapper zzjx();

    void zzjy();

    zzuj zzjz();

    String zzka();

    zzxa zzkb();

    zzwc zzkc();

    zzvh zzkd();
}
