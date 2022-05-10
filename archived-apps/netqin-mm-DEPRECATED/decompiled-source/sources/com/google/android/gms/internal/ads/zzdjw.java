package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbnw;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzdjw;
import com.google.android.gms.internal.ads.zzdlu;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4118uv;
import p131c.p161d.p170b.p224d.p252g.p253a.C4155vv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjw.class */
public abstract class zzdjw<AppOpenAd extends zzbqo, AppOpenRequestComponent extends zzbnw<AppOpenAd>, AppOpenRequestComponentBuilder extends zzbtq<AppOpenRequestComponent>> implements zzdae<AppOpenAd> {

    /* renamed from: a */
    public final Context f27436a;

    /* renamed from: b */
    public final Executor f27437b;

    /* renamed from: c */
    public final zzbix f27438c;

    /* renamed from: d */
    public final zzdkc f27439d;

    /* renamed from: e */
    public final zzdlv<AppOpenRequestComponent, AppOpenAd> f27440e;

    /* renamed from: f */
    public final ViewGroup f27441f;

    /* renamed from: g */
    public final zzdom f27442g;

    /* renamed from: h */
    public zzdzc<AppOpenAd> f27443h;

    public zzdjw(Context context, Executor executor, zzbix zzbixVar, zzdlv<AppOpenRequestComponent, AppOpenAd> zzdlvVar, zzdkc zzdkcVar, zzdom zzdomVar) {
        this.f27436a = context;
        this.f27437b = executor;
        this.f27438c = zzbixVar;
        this.f27440e = zzdlvVar;
        this.f27439d = zzdkcVar;
        this.f27442g = zzdomVar;
        this.f27441f = new FrameLayout(context);
    }

    /* renamed from: a */
    public abstract AppOpenRequestComponentBuilder mo13538a(zzbol zzbolVar, zzbtp zzbtpVar, zzbys zzbysVar);

    /* renamed from: a */
    public final AppOpenRequestComponentBuilder m13551b(zzdlu zzdluVar) {
        synchronized (this) {
            C4155vv vvVar = (C4155vv) zzdluVar;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23807e4)).booleanValue()) {
                zzbol zzbolVar = new zzbol(this.f27441f);
                zzbtp.zza zzaVar = new zzbtp.zza();
                zzaVar.m15065a(this.f27436a);
                zzaVar.m15061a(vvVar.f15886a);
                return mo13538a(zzbolVar, zzaVar.m15066a(), new zzbys.zza().m14923a());
            }
            zzdkc a = zzdkc.m13543a(this.f27439d);
            zzbys.zza zzaVar2 = new zzbys.zza();
            zzaVar2.m14918a((zzbui) a, this.f27437b);
            zzaVar2.m14914a((zzbwb) a, this.f27437b);
            zzaVar2.m14921a((zzp) a, this.f27437b);
            zzaVar2.m14911a(a);
            zzbol zzbolVar2 = new zzbol(this.f27441f);
            zzbtp.zza zzaVar3 = new zzbtp.zza();
            zzaVar3.m15065a(this.f27436a);
            zzaVar3.m15061a(vvVar.f15886a);
            return mo13538a(zzbolVar2, zzaVar3.m15066a(), zzaVar2.m14923a());
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m13558a() {
        this.f27439d.mo13335a(zzdpe.m13339a(zzdpg.INVALID_AD_UNIT_ID, null, null));
    }

    /* renamed from: a */
    public final void m13553a(zzvs zzvsVar) {
        this.f27442g.m13431a(zzvsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: a */
    public final boolean mo13489a(zzvg zzvgVar, String str, zzdad zzdadVar, zzdag<? super AppOpenAd> zzdagVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m17286a("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzbbq.m15856b("Ad unit ID should not be null for app open ad.");
                this.f27437b.execute(new Runnable(this) { // from class: c.d.b.d.g.a.rv

                    /* renamed from: a */
                    public final zzdjw f15044a;

                    {
                        this.f15044a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f15044a.m13558a();
                    }
                });
                return false;
            } else if (this.f27443h != null) {
                return false;
            } else {
                zzdox.m13386a(this.f27436a, zzvgVar.f29006f);
                zzdom zzdomVar = this.f27442g;
                zzdomVar.m13429a(str);
                zzdomVar.m13432a(zzvn.m11193v());
                zzdomVar.m13433a(zzvgVar);
                zzdok d = zzdomVar.m13420d();
                C4155vv vvVar = new C4155vv(null);
                vvVar.f15886a = d;
                zzdzc<AppOpenAd> a = this.f27440e.mo13517a(new zzdlw(vvVar), new zzdlx(this) { // from class: c.d.b.d.g.a.qv

                    /* renamed from: a */
                    public final zzdjw f14844a;

                    {
                        this.f14844a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdlx
                    /* renamed from: a */
                    public final zzbtq mo13516a(zzdlu zzdluVar) {
                        return this.f14844a.m13551b(zzdluVar);
                    }
                });
                this.f27443h = a;
                zzdyq.m12991a(a, new C4118uv(this, zzdagVar, vvVar), this.f27437b);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdae
    /* renamed from: n */
    public final boolean mo13485n() {
        zzdzc<AppOpenAd> zzdzcVar = this.f27443h;
        return zzdzcVar != null && !zzdzcVar.isDone();
    }
}
