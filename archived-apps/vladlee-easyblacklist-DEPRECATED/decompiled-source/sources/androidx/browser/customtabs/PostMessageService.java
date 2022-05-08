package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.p013a.AbstractC0157c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: a */
    private AbstractC0157c.AbstractBinderC0158a f2523a = new BinderC0553g(this);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2523a;
    }
}
