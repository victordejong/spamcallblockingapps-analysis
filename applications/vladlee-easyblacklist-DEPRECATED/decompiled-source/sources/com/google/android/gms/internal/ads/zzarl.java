package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarl.class */
public interface zzarl extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getMediationAdapterClassName();

    boolean isLoaded();

    void pause();

    void resume();

    void setAppPackageName(String str);

    void setCustomData(String str);

    void setImmersiveMode(boolean z);

    void setUserId(String str);

    void show();

    void zza(zzarj zzarjVar);

    void zza(zzaro zzaroVar);

    void zza(zzaru zzaruVar);

    void zza(zzvx zzvxVar);

    void zzi(IObjectWrapper iObjectWrapper);

    void zzj(IObjectWrapper iObjectWrapper);

    void zzk(IObjectWrapper iObjectWrapper);

    zzxa zzkb();

    void zzl(IObjectWrapper iObjectWrapper);

    boolean zzqa();
}
