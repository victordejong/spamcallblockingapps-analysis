package com.facebook.stetho.inspector.network;

import android.content.Context;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.helper.PeersRegisteredListener;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/NetworkPeerManager.class */
public class NetworkPeerManager extends ChromePeerManager {
    private static NetworkPeerManager sInstance;
    private AsyncPrettyPrinterRegistry mAsyncPrettyPrinterRegistry;
    private AsyncPrettyPrinterInitializer mPrettyPrinterInitializer;
    private final ResponseBodyFileManager mResponseBodyFileManager;
    private final PeersRegisteredListener mTempFileCleanup = new PeersRegisteredListener() { // from class: com.facebook.stetho.inspector.network.NetworkPeerManager.1
        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onFirstPeerRegistered() {
            AsyncPrettyPrinterExecutorHolder.ensureInitialized();
            if (NetworkPeerManager.this.mAsyncPrettyPrinterRegistry == null && NetworkPeerManager.this.mPrettyPrinterInitializer != null) {
                NetworkPeerManager.this.mAsyncPrettyPrinterRegistry = new AsyncPrettyPrinterRegistry();
                NetworkPeerManager.this.mPrettyPrinterInitializer.populatePrettyPrinters(NetworkPeerManager.this.mAsyncPrettyPrinterRegistry);
            }
            NetworkPeerManager.this.mResponseBodyFileManager.cleanupFiles();
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onLastPeerUnregistered() {
            NetworkPeerManager.this.mResponseBodyFileManager.cleanupFiles();
            AsyncPrettyPrinterExecutorHolder.shutdown();
        }
    };

    public NetworkPeerManager(ResponseBodyFileManager responseBodyFileManager) {
        this.mResponseBodyFileManager = responseBodyFileManager;
        setListener(this.mTempFileCleanup);
    }

    @Nullable
    public static NetworkPeerManager getInstanceOrNull() {
        NetworkPeerManager networkPeerManager;
        synchronized (NetworkPeerManager.class) {
            try {
                networkPeerManager = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkPeerManager;
    }

    public static NetworkPeerManager getOrCreateInstance(Context context) {
        NetworkPeerManager networkPeerManager;
        synchronized (NetworkPeerManager.class) {
            try {
                if (sInstance == null) {
                    sInstance = new NetworkPeerManager(new ResponseBodyFileManager(context.getApplicationContext()));
                }
                networkPeerManager = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkPeerManager;
    }

    @Nullable
    public AsyncPrettyPrinterRegistry getAsyncPrettyPrinterRegistry() {
        return this.mAsyncPrettyPrinterRegistry;
    }

    public ResponseBodyFileManager getResponseBodyFileManager() {
        return this.mResponseBodyFileManager;
    }

    public void setPrettyPrinterInitializer(AsyncPrettyPrinterInitializer asyncPrettyPrinterInitializer) {
        Util.throwIfNotNull(this.mPrettyPrinterInitializer);
        this.mPrettyPrinterInitializer = (AsyncPrettyPrinterInitializer) Util.throwIfNull(asyncPrettyPrinterInitializer);
    }
}
