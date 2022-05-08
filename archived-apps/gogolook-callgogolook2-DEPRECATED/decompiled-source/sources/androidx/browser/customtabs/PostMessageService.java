package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import p065f.p066a.p067a.AbstractC4232a;
import p065f.p066a.p067a.AbstractC4238c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {
    public AbstractC4238c.AbstractBinderC4239a mBinder = new AbstractC4238c.AbstractBinderC4239a() { // from class: androidx.browser.customtabs.PostMessageService.1
        @Override // p065f.p066a.p067a.AbstractC4238c
        public void onMessageChannelReady(AbstractC4232a aVar, Bundle bundle) throws RemoteException {
            aVar.onMessageChannelReady(bundle);
        }

        @Override // p065f.p066a.p067a.AbstractC4238c
        public void onPostMessage(AbstractC4232a aVar, String str, Bundle bundle) throws RemoteException {
            aVar.onPostMessage(str, bundle);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }
}
