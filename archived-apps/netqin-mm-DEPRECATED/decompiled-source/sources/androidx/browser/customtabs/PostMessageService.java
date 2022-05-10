package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0005c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: a */
    public AbstractC0005c.AbstractBinderC0006a f850a = new BinderC0178a(this);

    /* renamed from: androidx.browser.customtabs.PostMessageService$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService$a.class */
    public class BinderC0178a extends AbstractC0005c.AbstractBinderC0006a {
        public BinderC0178a(PostMessageService postMessageService) {
        }

        @Override // p000a.p001a.p002a.AbstractC0005c
        /* renamed from: a */
        public void mo38819a(AbstractC0000a aVar, Bundle bundle) throws RemoteException {
            aVar.mo39339j(bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0005c
        /* renamed from: a */
        public void mo38818a(AbstractC0000a aVar, String str, Bundle bundle) throws RemoteException {
            aVar.mo39340c(str, bundle);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f850a;
    }
}
