package p000a.p001a.p002a.p003a.p004a.p012g;

import android.content.Context;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0014ad;
import p000a.p001a.p002a.p003a.p004a.p006b.C0024h;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0033n;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
import p000a.p001a.p002a.p003a.p004a.p006b.EnumC0034o;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
/* renamed from: a.a.a.a.a.g.q */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/q.class */
public final class C0125q {

    /* renamed from: a */
    private final AtomicReference<C0129t> f275a;

    /* renamed from: b */
    private final CountDownLatch f276b;

    /* renamed from: c */
    private AbstractC0128s f277c;

    /* renamed from: d */
    private boolean f278d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a.a.a.a.a.g.q$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/q$a.class */
    public static final class C0126a {

        /* renamed from: a */
        private static final C0125q f279a = new C0125q((byte) 0);
    }

    private C0125q() {
        this.f275a = new AtomicReference<>();
        this.f276b = new CountDownLatch(1);
        this.f278d = false;
    }

    /* synthetic */ C0125q(byte b) {
        this();
    }

    /* renamed from: a */
    public static C0125q m10178a() {
        return C0126a.f279a;
    }

    /* renamed from: a */
    private void m10177a(C0129t tVar) {
        this.f275a.set(tVar);
        this.f276b.countDown();
    }

    /* renamed from: a */
    public final C0125q m10176a(AbstractC0147l lVar, C0043x xVar, AbstractC0101h hVar, String str, String str2, String str3, C0033n nVar) {
        synchronized (this) {
            if (this.f278d) {
                return this;
            }
            if (this.f277c == null) {
                Context context = lVar.getContext();
                String c = xVar.m10292c();
                new C0024h();
                String a = C0024h.m10360a(context);
                String h = xVar.m10287h();
                this.f277c = new C0118j(lVar, new C0132w(a, C0043x.m10289f(), C0043x.m10290e(), C0043x.m10291d(), xVar.m10293b(), C0026j.m10337a(C0026j.m10318k(context)), str2, str, EnumC0034o.m10305a(h).m10306a(), C0026j.m10320i(context)), new C0014ad(), new C0119k(), new C0117i(lVar), new C0120l(lVar, str3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", c), hVar), nVar);
            }
            this.f278d = true;
            return this;
        }
    }

    /* renamed from: b */
    public final C0129t m10175b() {
        try {
            this.f276b.await();
            return this.f275a.get();
        } catch (InterruptedException e) {
            C0137d.m10155c().mo10128e("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    /* renamed from: c */
    public final boolean m10174c() {
        boolean z;
        synchronized (this) {
            C0129t a = this.f277c.mo10171a();
            m10177a(a);
            z = a != null;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m10173d() {
        boolean z;
        synchronized (this) {
            C0129t a = this.f277c.mo10170a(EnumC0127r.SKIP_CACHE_LOOKUP);
            m10177a(a);
            if (a == null) {
                C0137d.m10155c().mo10130c("Fabric", "Failed to force reload of settings from Crashlytics.", null);
            }
            z = a != null;
        }
        return z;
    }
}
