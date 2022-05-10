package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbwk;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzczj;
import com.google.android.gms.internal.ads.zzczn;
import com.google.android.gms.internal.ads.zzczp;
import com.google.android.gms.internal.ads.zzczr;
import com.google.android.gms.internal.ads.zzczs;
import com.google.android.gms.internal.ads.zzdox;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.dr */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/dr.class */
public final class C3481dr implements zzdyr<zzboq> {

    /* renamed from: a */
    public final /* synthetic */ zzbpm f12768a;

    /* renamed from: b */
    public final /* synthetic */ zzczj f12769b;

    public C3481dr(zzczj zzczjVar, zzbpm zzbpmVar) {
        this.f12769b = zzczjVar;
        this.f12768a = zzbpmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzbwk zzbwkVar;
        zzbix zzbixVar;
        final zzva a = this.f12768a.mo15207a().m15124a(th);
        synchronized (this.f12769b) {
            this.f12769b.f26816m = null;
            this.f12768a.mo15204b().mo13335a(a);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23795c4)).booleanValue()) {
                zzbixVar = this.f12769b.f26804a;
                zzbixVar.mo15396a().execute(new Runnable(this, a) { // from class: c.d.b.d.g.a.er

                    /* renamed from: a */
                    public final C3481dr f12855a;

                    /* renamed from: b */
                    public final zzva f12856b;

                    {
                        this.f12855a = this;
                        this.f12856b = a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzczs zzczsVar;
                        C3481dr drVar = this.f12855a;
                        zzva zzvaVar = this.f12856b;
                        zzczsVar = drVar.f12769b.f26807d;
                        zzczsVar.mo13335a(zzvaVar);
                    }
                });
            }
            zzbwkVar = this.f12769b.f26811h;
            zzbwkVar.m14978b(60);
            zzdox.m13387a(a.f28995a, th, "BannerAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzboq zzboqVar) {
        zzboq zzboqVar2;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzbwk zzbwkVar;
        zzbix zzbixVar;
        zzczs zzczsVar;
        zzczs zzczsVar2;
        zzczp zzczpVar;
        zzczr zzczrVar;
        zzczn zzcznVar;
        zzboq zzboqVar3;
        zzboq zzboqVar4 = zzboqVar;
        synchronized (this.f12769b) {
            this.f12769b.f26816m = null;
            zzboqVar2 = this.f12769b.f26815l;
            if (zzboqVar2 != null) {
                zzboqVar3 = this.f12769b.f26815l;
                zzboqVar3.mo14764a();
            }
            this.f12769b.f26815l = zzboqVar4;
            viewGroup = this.f12769b.f26806c;
            viewGroup.removeAllViews();
            if (zzboqVar4.mo15195i() != null) {
                ViewParent parent = zzboqVar4.mo15195i().getParent();
                if (parent instanceof ViewGroup) {
                    String a = this.f12769b.mo10965a();
                    StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 78);
                    sb.append("Banner view provided from ");
                    sb.append(a);
                    sb.append(" already has a parent view. Removing its old parent.");
                    zzbbq.m15852d(sb.toString());
                    ((ViewGroup) parent).removeView(zzboqVar4.mo15195i());
                }
            }
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23795c4)).booleanValue()) {
                zzbxq f = zzboqVar4.m15164f();
                zzczsVar2 = this.f12769b.f26807d;
                f.m14964a(zzczsVar2);
                zzczpVar = this.f12769b.f26808e;
                f.m14966a(zzczpVar);
                zzczrVar = this.f12769b.f26809f;
                f.m14965a(zzczrVar);
                zzcznVar = this.f12769b.f26810g;
                f.m14967a(zzcznVar);
            }
            viewGroup2 = this.f12769b.f26806c;
            viewGroup2.addView(zzboqVar4.mo15195i());
            zzboqVar4.mo14749b();
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23795c4)).booleanValue()) {
                zzbixVar = this.f12769b.f26804a;
                Executor a2 = zzbixVar.mo15396a();
                zzczsVar = this.f12769b.f26807d;
                zzczsVar.getClass();
                a2.execute(RunnableC3444cr.m27093a(zzczsVar));
            }
            zzbwkVar = this.f12769b.f26811h;
            zzbwkVar.m14978b(zzboqVar4.mo15193k());
        }
    }
}
