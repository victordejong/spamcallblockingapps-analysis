package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ContainerHolder.class */
public interface ContainerHolder extends Releasable, Result {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener.class */
    public interface ContainerAvailableListener {
        void onContainerAvailable(ContainerHolder containerHolder, String str);
    }

    Container getContainer();

    void refresh();

    void setContainerAvailableListener(ContainerAvailableListener containerAvailableListener);
}
