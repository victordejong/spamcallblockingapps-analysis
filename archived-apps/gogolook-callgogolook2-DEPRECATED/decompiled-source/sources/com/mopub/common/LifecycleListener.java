package com.mopub.common;

import android.app.Activity;
import androidx.annotation.NonNull;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/LifecycleListener.class */
public interface LifecycleListener {
    void onBackPressed(@NonNull Activity activity);

    void onCreate(@NonNull Activity activity);

    void onDestroy(@NonNull Activity activity);

    void onPause(@NonNull Activity activity);

    void onRestart(@NonNull Activity activity);

    void onResume(@NonNull Activity activity);

    void onStart(@NonNull Activity activity);

    void onStop(@NonNull Activity activity);
}
