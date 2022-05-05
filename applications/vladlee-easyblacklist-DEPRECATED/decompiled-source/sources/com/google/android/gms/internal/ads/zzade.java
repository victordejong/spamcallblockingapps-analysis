package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzade.class */
public interface zzade extends IInterface {
    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    zzxb getVideoController();

    void performClick(String str);

    void recordImpression();

    String zzct(String str);

    zzaci zzcu(String str);

    boolean zzp(IObjectWrapper iObjectWrapper);

    void zzq(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzrf();

    IObjectWrapper zzrk();

    boolean zzrl();

    boolean zzrm();

    void zzrn();
}
