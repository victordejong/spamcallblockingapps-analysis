package com.criteo.sync.sdk.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.criteo.sync.sdk.customtabs.IPostMessageService;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/PostMessageService.class */
public class PostMessageService extends Service {
    public IPostMessageService.Stub mBinder = new IPostMessageService.Stub() { // from class: com.criteo.sync.sdk.customtabs.PostMessageService.1
        @Override // com.criteo.sync.sdk.customtabs.IPostMessageService
        public void onMessageChannelReady(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            iCustomTabsCallback.onMessageChannelReady(bundle);
        }

        @Override // com.criteo.sync.sdk.customtabs.IPostMessageService
        public void onPostMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            iCustomTabsCallback.onPostMessage(str, bundle);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
