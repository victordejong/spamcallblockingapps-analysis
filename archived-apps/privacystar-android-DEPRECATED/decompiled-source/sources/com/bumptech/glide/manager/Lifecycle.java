package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/Lifecycle.class */
public interface Lifecycle {
    void addListener(@NonNull LifecycleListener lifecycleListener);

    void removeListener(@NonNull LifecycleListener lifecycleListener);
}
