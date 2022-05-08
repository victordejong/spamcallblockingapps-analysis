package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import p065f.p066a.p067a.AbstractC4232a;
import p065f.p066a.p067a.AbstractC4238c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageServiceConnection.class */
public abstract class PostMessageServiceConnection implements ServiceConnection {
    public final Object mLock = new Object();
    public AbstractC4238c mService;
    public final AbstractC4232a mSessionBinder;

    public PostMessageServiceConnection(CustomTabsSessionToken customTabsSessionToken) {
        this.mSessionBinder = AbstractC4232a.AbstractBinderC4233a.asInterface(customTabsSessionToken.getCallbackBinder());
    }

    public boolean bindSessionToPostMessageService(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName(str, PostMessageService.class.getName());
        return context.bindService(intent, this, 1);
    }

    public final boolean notifyMessageChannelReady(Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                this.mService.onMessageChannelReady(this.mSessionBinder, bundle);
            } catch (RemoteException e) {
                return false;
            }
        }
        return true;
    }

    public void onPostMessageServiceConnected() {
    }

    public void onPostMessageServiceDisconnected() {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.mService = AbstractC4238c.AbstractBinderC4239a.asInterface(iBinder);
        onPostMessageServiceConnected();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.mService = null;
        onPostMessageServiceDisconnected();
    }

    public final boolean postMessage(String str, Bundle bundle) {
        if (this.mService == null) {
            return false;
        }
        synchronized (this.mLock) {
            try {
                this.mService.onPostMessage(this.mSessionBinder, str, bundle);
            } catch (RemoteException e) {
                return false;
            }
        }
        return true;
    }

    public void unbindFromContext(Context context) {
        context.unbindService(this);
    }
}
