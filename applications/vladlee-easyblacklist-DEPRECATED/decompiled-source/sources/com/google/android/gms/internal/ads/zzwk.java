package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwk.class */
public interface zzwk extends IInterface {
    String getVersionString();

    void initialize();

    void setAppMuted(boolean z);

    void setAppVolume(float f);

    void zza(zzagu zzaguVar);

    void zza(zzalc zzalcVar);

    void zza(zzyq zzyqVar);

    void zza(String str, IObjectWrapper iObjectWrapper);

    void zzb(IObjectWrapper iObjectWrapper, String str);

    void zzcd(String str);

    void zzce(String str);

    float zzpe();

    boolean zzpf();

    List<zzagn> zzpg();
}
