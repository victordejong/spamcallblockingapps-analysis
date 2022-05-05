package androidx.browser.customtabs;

import android.app.Service;
import android.os.Bundle;
import android.os.IBinder;
import android.support.p013a.AbstractC0155b;
import androidx.p026b.C0529a;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: a */
    final Map<IBinder, IBinder.DeathRecipient> f2521a = new C0529a();

    /* renamed from: b */
    private AbstractC0155b.AbstractBinderC0156a f2522b = new BinderC0549c(this);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract boolean m8887a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m8886a(C0551e eVar) {
        try {
            synchronized (this.f2521a) {
                IBinder a = eVar.m8869a();
                a.unlinkToDeath(this.f2521a.get(a), 0);
                this.f2521a.remove(a);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract boolean m8885b();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract boolean m8884c();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public abstract Bundle m8883d();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public abstract boolean m8882e();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public abstract boolean m8881f();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public abstract int m8880g();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public abstract boolean m8879h();
}
