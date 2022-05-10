package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.internal.ads.zzagt;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzux;
/* renamed from: c.d.b.d.g.a.rj */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/rj.class */
public final class C3995rj implements zzp, zzv, zzagt, zzagv, zzux {

    /* renamed from: a */
    public zzux f15016a;

    /* renamed from: b */
    public zzagt f15017b;

    /* renamed from: c */
    public zzp f15018c;

    /* renamed from: d */
    public zzagv f15019d;

    /* renamed from: e */
    public zzv f15020e;

    public C3995rj() {
    }

    public /* synthetic */ C3995rj(C3881oj ojVar) {
        this();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        synchronized (this) {
            if (this.f15018c != null) {
                this.f15018c.mo13537B1();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    /* renamed from: a */
    public final void mo17999a() {
        synchronized (this) {
            if (this.f15020e != null) {
                this.f15020e.mo17999a();
            }
        }
    }

    /* renamed from: a */
    public final void m26405a(zzux zzuxVar, zzagt zzagtVar, zzp zzpVar, zzagv zzagvVar, zzv zzvVar) {
        synchronized (this) {
            this.f15016a = zzuxVar;
            this.f15017b = zzagtVar;
            this.f15018c = zzpVar;
            this.f15019d = zzagvVar;
            this.f15020e = zzvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    /* renamed from: a */
    public final void mo15013a(String str, Bundle bundle) {
        synchronized (this) {
            if (this.f15017b != null) {
                this.f15017b.mo15013a(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagv
    /* renamed from: a */
    public final void mo14944a(String str, String str2) {
        synchronized (this) {
            if (this.f15019d != null) {
                this.f15019d.mo14944a(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f15016a != null) {
                this.f15016a.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            if (this.f15018c != null) {
                this.f15018c.onPause();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            if (this.f15018c != null) {
                this.f15018c.onResume();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        synchronized (this) {
            if (this.f15018c != null) {
                this.f15018c.mo13529u1();
            }
        }
    }
}
