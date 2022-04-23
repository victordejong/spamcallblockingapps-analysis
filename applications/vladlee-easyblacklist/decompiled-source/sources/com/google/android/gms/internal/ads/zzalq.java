package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalq.class */
public interface zzalq extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    zzxb getVideoController();

    void recordImpression();

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaca zzrh();

    IObjectWrapper zzri();

    zzaci zzrj();

    IObjectWrapper zzsu();

    IObjectWrapper zzsv();

    void zzu(IObjectWrapper iObjectWrapper);

    void zzv(IObjectWrapper iObjectWrapper);

    void zzw(IObjectWrapper iObjectWrapper);
}
