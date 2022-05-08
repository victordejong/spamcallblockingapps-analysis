package com.flurry.android;

import android.content.ComponentName;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import com.flurry.sdk.AbstractC2871bf;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryCustomTabsServiceConnection.class */
public final class FlurryCustomTabsServiceConnection extends CustomTabsServiceConnection {

    /* renamed from: a */
    public WeakReference<AbstractC2871bf> f3839a;

    public FlurryCustomTabsServiceConnection(AbstractC2871bf bfVar) {
        this.f3839a = new WeakReference<>(bfVar);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        AbstractC2871bf bfVar = this.f3839a.get();
        if (bfVar != null) {
            bfVar.mo33478a(customTabsClient);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        AbstractC2871bf bfVar = this.f3839a.get();
        if (bfVar != null) {
            bfVar.mo33479a();
        }
    }
}
