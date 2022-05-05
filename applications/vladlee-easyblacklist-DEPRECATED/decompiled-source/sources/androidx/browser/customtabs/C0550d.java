package androidx.browser.customtabs;

import android.os.IBinder;
/* renamed from: androidx.browser.customtabs.d */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d.class */
final class C0550d implements IBinder.DeathRecipient {

    /* renamed from: a */
    final /* synthetic */ C0551e f2532a;

    /* renamed from: b */
    final /* synthetic */ BinderC0549c f2533b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0550d(BinderC0549c cVar, C0551e eVar) {
        this.f2533b = cVar;
        this.f2532a = eVar;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f2533b.f2531a.m8886a(this.f2532a);
    }
}
