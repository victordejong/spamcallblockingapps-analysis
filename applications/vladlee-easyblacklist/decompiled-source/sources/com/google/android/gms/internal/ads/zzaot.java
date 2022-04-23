package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaot.class */
public interface zzaot extends IInterface {
    void onActivityResult(int i, int i2, Intent intent);

    void onBackPressed();

    void onCreate(Bundle bundle);

    void onDestroy();

    void onPause();

    void onRestart();

    void onResume();

    void onSaveInstanceState(Bundle bundle);

    void onStart();

    void onStop();

    void zzad(IObjectWrapper iObjectWrapper);

    void zzdf();

    boolean zztm();
}
