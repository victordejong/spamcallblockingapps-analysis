package com.bumptech.glide.manager;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/ConnectivityMonitor.class */
public interface ConnectivityMonitor extends LifecycleListener {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener.class */
    public interface ConnectivityListener {
        void onConnectivityChanged(boolean z);
    }
}
