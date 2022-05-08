package com.criteo.sync.sdk.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.criteo.sync.sdk.customtabs.ICustomTabsService;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsServiceConnection.class */
public abstract class CustomTabsServiceConnection implements ServiceConnection {
    public abstract void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new CustomTabsClient(ICustomTabsService.Stub.asInterface(iBinder), componentName) { // from class: com.criteo.sync.sdk.customtabs.CustomTabsServiceConnection.1
        });
    }
}
