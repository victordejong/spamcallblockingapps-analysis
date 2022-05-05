package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzald.class */
public interface zzald extends IInterface {
    void destroy();

    Bundle getInterstitialAdapterInfo();

    zzxb getVideoController();

    boolean isInitialized();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void showInterstitial();

    void showVideo();

    void zza(IObjectWrapper iObjectWrapper, zzagp zzagpVar, List<zzagx> list);

    void zza(IObjectWrapper iObjectWrapper, zzarz zzarzVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar);

    void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzarz zzarzVar, String str2);

    void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar);

    void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar, zzaby zzabyVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, zzali zzaliVar);

    void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, String str2, zzali zzaliVar);

    void zza(zzug zzugVar, String str);

    void zza(zzug zzugVar, String str, String str2);

    void zzb(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar);

    void zzs(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzsk();

    zzall zzsl();

    zzalq zzsm();

    Bundle zzsn();

    Bundle zzso();

    boolean zzsp();

    zzade zzsq();

    zzalr zzsr();

    void zzt(IObjectWrapper iObjectWrapper);
}
