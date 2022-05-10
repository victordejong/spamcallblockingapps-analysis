package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbql;
import com.google.android.gms.internal.ads.zzbqn;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzczf;
import com.google.android.gms.internal.ads.zzdnu;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdoq;
import com.google.android.gms.internal.ads.zzdos;
import com.google.android.gms.internal.ads.zzeos;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzyo;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.oc */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/oc.class */
public final class C3874oc extends zzboq {

    /* renamed from: h */
    public final Context f14319h;

    /* renamed from: i */
    public final View f14320i;

    /* renamed from: j */
    public final zzbgj f14321j;

    /* renamed from: k */
    public final zzdnu f14322k;

    /* renamed from: l */
    public final zzbql f14323l;

    /* renamed from: m */
    public final zzcep f14324m;

    /* renamed from: n */
    public final zzcaf f14325n;

    /* renamed from: o */
    public final zzeos<zzczf> f14326o;

    /* renamed from: p */
    public final Executor f14327p;

    /* renamed from: q */
    public zzvn f14328q;

    public C3874oc(zzbqn zzbqnVar, Context context, zzdnu zzdnuVar, View view, zzbgj zzbgjVar, zzbql zzbqlVar, zzcep zzcepVar, zzcaf zzcafVar, zzeos<zzczf> zzeosVar, Executor executor) {
        super(zzbqnVar);
        this.f14319h = context;
        this.f14320i = view;
        this.f14321j = zzbgjVar;
        this.f14322k = zzdnuVar;
        this.f14323l = zzbqlVar;
        this.f14324m = zzcepVar;
        this.f14325n = zzcafVar;
        this.f14326o = zzeosVar;
        this.f14327p = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: a */
    public final void mo15199a(ViewGroup viewGroup, zzvn zzvnVar) {
        zzbgj zzbgjVar;
        if (viewGroup != null && (zzbgjVar = this.f14321j) != null) {
            zzbgjVar.mo15585a(zzbhy.m15511a(zzvnVar));
            viewGroup.setMinimumHeight(zzvnVar.f29037c);
            viewGroup.setMinimumWidth(zzvnVar.f29040f);
            this.f14328q = zzvnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqo
    /* renamed from: b */
    public final void mo14749b() {
        this.f14327p.execute(new Runnable(this) { // from class: c.d.b.d.g.a.nc

            /* renamed from: a */
            public final C3874oc f14233a;

            {
                this.f14233a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f14233a.m26597m();
            }
        });
        super.mo14749b();
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: g */
    public final zzyo mo15197g() {
        try {
            return this.f14323l.getVideoController();
        } catch (zzdos e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: h */
    public final zzdnu mo15196h() {
        boolean z;
        zzvn zzvnVar = this.f14328q;
        if (zzvnVar != null) {
            return zzdoq.m13402a(zzvnVar);
        }
        zzdnv zzdnvVar = this.f25381b;
        if (zzdnvVar.f27577X) {
            Iterator<String> it = zzdnvVar.f27580a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String next = it.next();
                if (next != null && next.contains("FirstParty")) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return new zzdnu(this.f14320i.getWidth(), this.f14320i.getHeight(), false);
            }
        }
        return zzdoq.m13401a(this.f25381b.f27601q, this.f14322k);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: i */
    public final View mo15195i() {
        return this.f14320i;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: j */
    public final zzdnu mo15194j() {
        return this.f14322k;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: k */
    public final int mo15193k() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23742S3)).booleanValue() && this.f25381b.f27585c0) {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23747T3)).booleanValue()) {
                return 0;
            }
        }
        return this.f25380a.f27634b.f27630b.f27613c;
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    /* renamed from: l */
    public final void mo15192l() {
        this.f14325n.m14864q();
    }

    /* renamed from: m */
    public final /* synthetic */ void m26597m() {
        if (this.f14324m.m14657d() != null) {
            try {
                this.f14324m.m14657d().mo16770a(this.f14326o.get(), ObjectWrapper.m17020a(this.f14319h));
            } catch (RemoteException e) {
                zzbbq.m15855b("RemoteException when notifyAdLoad is called", e);
            }
        }
    }
}
