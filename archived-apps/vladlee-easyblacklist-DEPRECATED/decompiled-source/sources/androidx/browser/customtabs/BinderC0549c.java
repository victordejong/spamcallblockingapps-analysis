package androidx.browser.customtabs;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.p013a.AbstractC0152a;
import android.support.p013a.AbstractC0155b;
/* renamed from: androidx.browser.customtabs.c */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c.class */
final class BinderC0549c extends AbstractC0155b.AbstractBinderC0156a {

    /* renamed from: a */
    final /* synthetic */ CustomTabsService f2531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC0549c(CustomTabsService customTabsService) {
        this.f2531a = customTabsService;
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: a */
    public final boolean mo8877a() {
        return this.f2531a.m8887a();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: a */
    public final boolean mo8876a(AbstractC0152a aVar) {
        try {
            C0550d dVar = new C0550d(this, new C0551e(aVar));
            synchronized (this.f2531a.f2521a) {
                aVar.asBinder().linkToDeath(dVar, 0);
                this.f2531a.f2521a.put(aVar.asBinder(), dVar);
            }
            return this.f2531a.m8885b();
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: b */
    public final Bundle mo8875b() {
        return this.f2531a.m8883d();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: b */
    public final boolean mo8874b(AbstractC0152a aVar) {
        CustomTabsService customTabsService = this.f2531a;
        new C0551e(aVar);
        return customTabsService.m8884c();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: c */
    public final boolean mo8873c(AbstractC0152a aVar) {
        CustomTabsService customTabsService = this.f2531a;
        new C0551e(aVar);
        return customTabsService.m8882e();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: d */
    public final boolean mo8872d(AbstractC0152a aVar) {
        CustomTabsService customTabsService = this.f2531a;
        new C0551e(aVar);
        return customTabsService.m8881f();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: e */
    public final int mo8871e(AbstractC0152a aVar) {
        CustomTabsService customTabsService = this.f2531a;
        new C0551e(aVar);
        return customTabsService.m8880g();
    }

    @Override // android.support.p013a.AbstractC0155b
    /* renamed from: f */
    public final boolean mo8870f(AbstractC0152a aVar) {
        CustomTabsService customTabsService = this.f2531a;
        new C0551e(aVar);
        return customTabsService.m8879h();
    }
}
