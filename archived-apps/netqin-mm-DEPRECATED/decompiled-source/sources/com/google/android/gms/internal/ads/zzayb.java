package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzayb;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p170b.p224d.p252g.p253a.C3343a5;
import p131c.p161d.p170b.p224d.p252g.p253a.C4277z4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayb.class */
public final class zzayb {

    /* renamed from: e */
    public Context f24614e;

    /* renamed from: f */
    public zzbbx f24615f;

    /* renamed from: l */
    public zzdzc<ArrayList<String>> f24621l;

    /* renamed from: a */
    public final Object f24610a = new Object();

    /* renamed from: b */
    public final zzayq f24611b = new zzayq();

    /* renamed from: c */
    public final zzayi f24612c = new zzayi(zzwm.m11165f(), this.f24611b);

    /* renamed from: d */
    public boolean f24613d = false;

    /* renamed from: g */
    public zzabi f24616g = null;

    /* renamed from: h */
    public Boolean f24617h = null;

    /* renamed from: i */
    public final AtomicInteger f24618i = new AtomicInteger(0);

    /* renamed from: j */
    public final C4277z4 f24619j = new C4277z4(null);

    /* renamed from: k */
    public final Object f24620k = new Object();

    /* renamed from: a */
    public static ArrayList<String> m16192a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo b = Wrappers.m17026b(context).m17028b(context.getApplicationInfo().packageName, 4096);
            if (b.requestedPermissions != null && b.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = b.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((b.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    /* renamed from: a */
    public final Context m16193a() {
        return this.f24614e;
    }

    /* renamed from: a */
    public final void m16191a(Context context, zzbbx zzbbxVar) {
        synchronized (this.f24610a) {
            if (!this.f24613d) {
                this.f24614e = context.getApplicationContext();
                this.f24615f = zzbbxVar;
                zzp.m17966f().m11509a(this.f24612c);
                zzabi zzabiVar = null;
                this.f24611b.m16151a(this.f24614e, (String) null, true);
                zzasf.m16389a(this.f24614e, this.f24615f);
                new zzqn(context.getApplicationContext(), this.f24615f);
                zzp.m17960l();
                if (!zzacp.f23968c.mo16862a().booleanValue()) {
                    zzayp.m16153g("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                } else {
                    zzabiVar = new zzabi();
                }
                this.f24616g = zzabiVar;
                if (zzabiVar != null) {
                    zzbcc.m15837a(new C3343a5(this).m16157b(), "AppState.registerCsiReporter");
                }
                this.f24613d = true;
                m16175j();
            }
        }
        zzp.m17969c().m16141a(context, zzbbxVar.f24759a);
    }

    /* renamed from: a */
    public final void m16189a(Boolean bool) {
        synchronized (this.f24610a) {
            this.f24617h = bool;
        }
    }

    /* renamed from: a */
    public final void m16188a(Throwable th, String str) {
        zzasf.m16389a(this.f24614e, this.f24615f).mo16385a(th, str);
    }

    /* renamed from: b */
    public final Resources m16187b() {
        if (this.f24615f.f24762d) {
            return this.f24614e.getResources();
        }
        try {
            zzbbt.m15848a(this.f24614e).getResources();
            return null;
        } catch (zzbbv e) {
            zzbbq.m15853c("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    /* renamed from: b */
    public final void m16185b(Throwable th, String str) {
        zzasf.m16389a(this.f24614e, this.f24615f).mo16384a(th, str, zzadb.f24009g.mo16862a().floatValue());
    }

    /* renamed from: c */
    public final zzabi m16184c() {
        zzabi zzabiVar;
        synchronized (this.f24610a) {
            zzabiVar = this.f24616g;
        }
        return zzabiVar;
    }

    /* renamed from: d */
    public final Boolean m16182d() {
        Boolean bool;
        synchronized (this.f24610a) {
            bool = this.f24617h;
        }
        return bool;
    }

    /* renamed from: e */
    public final void m16180e() {
        this.f24619j.m26104a();
    }

    /* renamed from: f */
    public final void m16179f() {
        this.f24618i.incrementAndGet();
    }

    /* renamed from: g */
    public final void m16178g() {
        this.f24618i.decrementAndGet();
    }

    /* renamed from: h */
    public final int m16177h() {
        return this.f24618i.get();
    }

    /* renamed from: i */
    public final zzayr m16176i() {
        zzayq zzayqVar;
        synchronized (this.f24610a) {
            zzayqVar = this.f24611b;
        }
        return zzayqVar;
    }

    /* renamed from: j */
    public final zzdzc<ArrayList<String>> m16175j() {
        if (PlatformVersion.m17065c() && this.f24614e != null) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23822h1)).booleanValue()) {
                synchronized (this.f24620k) {
                    if (this.f24621l != null) {
                        return this.f24621l;
                    }
                    zzdzc<ArrayList<String>> a = zzbbz.f24764a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.y4

                        /* renamed from: a */
                        public final zzayb f16091a;

                        {
                            this.f16091a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f16091a.m16173l();
                        }
                    });
                    this.f24621l = a;
                    return a;
                }
            }
        }
        return zzdyq.m12988a(new ArrayList());
    }

    /* renamed from: k */
    public final zzayi m16174k() {
        return this.f24612c;
    }

    /* renamed from: l */
    public final /* synthetic */ ArrayList m16173l() throws Exception {
        return m16192a(zzatx.m16348b(this.f24614e));
    }
}
