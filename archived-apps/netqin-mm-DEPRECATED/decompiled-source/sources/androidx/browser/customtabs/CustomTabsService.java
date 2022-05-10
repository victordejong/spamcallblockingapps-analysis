package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0003b;
import p012b.p031d.p032b.C0763d;
import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: a */
    public final Map<IBinder, IBinder.DeathRecipient> f845a = new C0780a();

    /* renamed from: b */
    public AbstractC0003b.AbstractBinderC0004a f846b = new BinderC0176a();

    /* renamed from: androidx.browser.customtabs.CustomTabsService$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$a.class */
    public class BinderC0176a extends AbstractC0003b.AbstractBinderC0004a {

        /* renamed from: androidx.browser.customtabs.CustomTabsService$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$a$a.class */
        public class C0177a implements IBinder.DeathRecipient {

            /* renamed from: a */
            public final /* synthetic */ C0763d f848a;

            public C0177a(C0763d dVar) {
                this.f848a = dVar;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                CustomTabsService.this.m38835a(this.f848a);
            }
        }

        public BinderC0176a() {
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: a */
        public boolean mo38827a(AbstractC0000a aVar) {
            C0763d dVar = new C0763d(aVar);
            try {
                C0177a aVar2 = new C0177a(dVar);
                synchronized (CustomTabsService.this.f845a) {
                    aVar.asBinder().linkToDeath(aVar2, 0);
                    CustomTabsService.this.f845a.put(aVar.asBinder(), aVar2);
                }
                return CustomTabsService.this.m38828b(dVar);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: a */
        public boolean mo38826a(AbstractC0000a aVar, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.m38834a(new C0763d(aVar), i, uri, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: a */
        public boolean mo38825a(AbstractC0000a aVar, Uri uri) {
            return CustomTabsService.this.m38833a(new C0763d(aVar), uri);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: a */
        public boolean mo38824a(AbstractC0000a aVar, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.m38832a(new C0763d(aVar), uri, bundle, list);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: b */
        public int mo38822b(AbstractC0000a aVar, String str, Bundle bundle) {
            return CustomTabsService.this.m38830a(new C0763d(aVar), str, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: b */
        public Bundle mo38821b(String str, Bundle bundle) {
            return CustomTabsService.this.m38829a(str, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: b */
        public boolean mo38823b(AbstractC0000a aVar, Bundle bundle) {
            return CustomTabsService.this.m38831a(new C0763d(aVar), bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: d */
        public boolean mo38820d(long j) {
            return CustomTabsService.this.m38836a(j);
        }
    }

    /* renamed from: a */
    public abstract int m38830a(C0763d dVar, String str, Bundle bundle);

    /* renamed from: a */
    public abstract Bundle m38829a(String str, Bundle bundle);

    /* renamed from: a */
    public abstract boolean m38836a(long j);

    /* renamed from: a */
    public boolean m38835a(C0763d dVar) {
        try {
            synchronized (this.f845a) {
                IBinder a = dVar.m36129a();
                a.unlinkToDeath(this.f845a.get(a), 0);
                this.f845a.remove(a);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* renamed from: a */
    public abstract boolean m38834a(C0763d dVar, int i, Uri uri, Bundle bundle);

    /* renamed from: a */
    public abstract boolean m38833a(C0763d dVar, Uri uri);

    /* renamed from: a */
    public abstract boolean m38832a(C0763d dVar, Uri uri, Bundle bundle, List<Bundle> list);

    /* renamed from: a */
    public abstract boolean m38831a(C0763d dVar, Bundle bundle);

    /* renamed from: b */
    public abstract boolean m38828b(C0763d dVar);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f846b;
    }
}
