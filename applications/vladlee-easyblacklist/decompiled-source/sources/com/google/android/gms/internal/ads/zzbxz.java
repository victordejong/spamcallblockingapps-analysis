package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxz.class */
public interface zzbxz extends View.OnClickListener, View.OnTouchListener {
    void zza(String str, View view, boolean z);

    View zzaga();

    Map<String, WeakReference<View>> zzajz();

    Map<String, WeakReference<View>> zzaka();

    Map<String, WeakReference<View>> zzakb();

    String zzakc();

    FrameLayout zzakd();

    zzpo zzake();

    IObjectWrapper zzakf();

    View zzgb(String str);
}
