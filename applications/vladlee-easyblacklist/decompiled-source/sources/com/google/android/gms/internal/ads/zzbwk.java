package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwk.class */
public final class zzbwk extends zzbmd {

    /* renamed from: c */
    private final Executor f12541c;

    /* renamed from: d */
    private final zzbws f12542d;

    /* renamed from: e */
    private final zzbxa f12543e;

    /* renamed from: f */
    private final zzbxj f12544f;

    /* renamed from: g */
    private final zzbww f12545g;

    /* renamed from: h */
    private final zzbwz f12546h;

    /* renamed from: i */
    private final zzdxa<zzcab> f12547i;

    /* renamed from: j */
    private final zzdxa<zzbzz> f12548j;

    /* renamed from: k */
    private final zzdxa<zzcai> f12549k;

    /* renamed from: l */
    private final zzdxa<zzbzv> f12550l;

    /* renamed from: m */
    private final zzdxa<zzcad> f12551m;

    /* renamed from: n */
    private zzbxz f12552n;

    /* renamed from: o */
    private boolean f12553o;

    /* renamed from: p */
    private final zzats f12554p;

    /* renamed from: q */
    private final zzdq f12555q;

    /* renamed from: r */
    private final zzazb f12556r;

    /* renamed from: s */
    private final Context f12557s;

    /* renamed from: t */
    private final zzbwq f12558t;

    public zzbwk(zzbmg zzbmgVar, Executor executor, zzbws zzbwsVar, zzbxa zzbxaVar, zzbxj zzbxjVar, zzbww zzbwwVar, zzbwz zzbwzVar, zzdxa<zzcab> zzdxaVar, zzdxa<zzbzz> zzdxaVar2, zzdxa<zzcai> zzdxaVar3, zzdxa<zzbzv> zzdxaVar4, zzdxa<zzcad> zzdxaVar5, zzats zzatsVar, zzdq zzdqVar, zzazb zzazbVar, Context context, zzbwq zzbwqVar) {
        super(zzbmgVar);
        this.f12541c = executor;
        this.f12542d = zzbwsVar;
        this.f12543e = zzbxaVar;
        this.f12544f = zzbxjVar;
        this.f12545g = zzbwwVar;
        this.f12546h = zzbwzVar;
        this.f12547i = zzdxaVar;
        this.f12548j = zzdxaVar2;
        this.f12549k = zzdxaVar3;
        this.f12550l = zzdxaVar4;
        this.f12551m = zzdxaVar5;
        this.f12554p = zzatsVar;
        this.f12555q = zzdqVar;
        this.f12556r = zzazbVar;
        this.f12557s = context;
        this.f12558t = zzbwqVar;
    }

    public static boolean zzy(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3872a() {
        this.f12543e.destroy();
        this.f12542d.destroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3871a(boolean z) {
        this.f12543e.zza(this.f12552n.zzaga(), this.f12552n.zzajz(), this.f12552n.zzaka(), z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3870b() {
        try {
            int zzaja = this.f12542d.zzaja();
            if (zzaja != 1) {
                if (zzaja != 2) {
                    if (zzaja != 3) {
                        if (zzaja != 6) {
                            if (zzaja != 7) {
                                zzavs.zzex("Wrong native template id!");
                            } else if (this.f12546h.zzajt() != null) {
                                this.f12546h.zzajt().zza(this.f12550l.get());
                            }
                        } else if (this.f12546h.zzajr() != null) {
                            zzg("Google", true);
                            this.f12546h.zzajr().zza(this.f12549k.get());
                        }
                    } else if (this.f12546h.zzfz(this.f12542d.getCustomTemplateId()) != null) {
                        if (this.f12542d.zzajf() != null) {
                            zzg("Google", true);
                        }
                        this.f12546h.zzfz(this.f12542d.getCustomTemplateId()).zzb(this.f12551m.get());
                    }
                } else if (this.f12546h.zzajq() != null) {
                    zzg("Google", true);
                    this.f12546h.zzajq().zza(this.f12548j.get());
                }
            } else if (this.f12546h.zzajp() != null) {
                zzg("Google", true);
                this.f12546h.zzajp().zza(this.f12547i.get());
            }
        } catch (RemoteException e) {
            zzavs.zzc("RemoteException when notifyAdLoad is called", e);
        }
    }

    public final void cancelUnconfirmedClick() {
        synchronized (this) {
            this.f12543e.cancelUnconfirmedClick();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final void destroy() {
        synchronized (this) {
            this.f12541c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.nv

                /* renamed from: a */
                private final zzbwk f10255a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10255a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10255a.m3872a();
                }
            });
            super.destroy();
        }
    }

    public final boolean isCustomClickGestureEnabled() {
        boolean isCustomClickGestureEnabled;
        synchronized (this) {
            isCustomClickGestureEnabled = this.f12543e.isCustomClickGestureEnabled();
        }
        return isCustomClickGestureEnabled;
    }

    public final void recordCustomClickGesture() {
        synchronized (this) {
            if (this.f12552n == null) {
                zzavs.zzea("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            final boolean z = this.f12552n instanceof zzbxi;
            this.f12541c.execute(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.nx

                /* renamed from: a */
                private final zzbwk f10257a;

                /* renamed from: b */
                private final boolean f10258b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10257a = this;
                    this.f10258b = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10257a.m3871a(this.f10258b);
                }
            });
        }
    }

    public final void setClickConfirmingView(View view) {
        synchronized (this) {
            this.f12543e.setClickConfirmingView(view);
        }
    }

    public final void zza(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.f12543e.zza(view, motionEvent, view2);
        }
    }

    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqc)).booleanValue()) {
                this.f12544f.zzc(this.f12552n);
            }
            this.f12543e.zza(view, view2, map, map2, z);
        }
    }

    public final void zza(zzaeb zzaebVar) {
        synchronized (this) {
            this.f12543e.zza(zzaebVar);
        }
    }

    public final void zza(zzbxz zzbxzVar) {
        zzdg zzbw;
        synchronized (this) {
            this.f12552n = zzbxzVar;
            this.f12544f.zza(zzbxzVar);
            this.f12543e.zza(zzbxzVar.zzaga(), zzbxzVar.zzaka(), zzbxzVar.zzakb(), zzbxzVar, zzbxzVar);
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzclc)).booleanValue() && (zzbw = this.f12555q.zzbw()) != null) {
                zzbw.zzb(zzbxzVar.zzaga());
            }
            if (zzbxzVar.zzake() != null) {
                zzbxzVar.zzake().zza(this.f12554p);
            }
        }
    }

    public final void zza(zzwn zzwnVar) {
        synchronized (this) {
            this.f12543e.zza(zzwnVar);
        }
    }

    public final void zza(zzwr zzwrVar) {
        synchronized (this) {
            this.f12543e.zza(zzwrVar);
        }
    }

    public final void zzaa(View view) {
        IObjectWrapper zzajh = this.f12542d.zzajh();
        if (this.f12545g.zzaiw() && zzajh != null && view != null) {
            zzq.zzlf().zzb(zzajh, view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final void zzagf() {
        this.f12541c.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.nu

            /* renamed from: a */
            private final zzbwk f10254a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10254a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10254a.m3870b();
            }
        });
        if (this.f12542d.zzaja() != 7) {
            Executor executor = this.f12541c;
            zzbxa zzbxaVar = this.f12543e;
            zzbxaVar.getClass();
            executor.execute(RunnableC2101nw.m4486a(zzbxaVar));
        }
        super.zzagf();
    }

    public final void zzaio() {
        synchronized (this) {
            if (!this.f12553o) {
                this.f12543e.zzaio();
            }
        }
    }

    public final boolean zzaiv() {
        return this.f12545g.zzajn();
    }

    public final boolean zzaiw() {
        return this.f12545g.zzaiw();
    }

    public final zzbwq zzaix() {
        return this.f12558t;
    }

    public final void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (!this.f12553o) {
                if (z) {
                    this.f12543e.zza(view, map, map2);
                    this.f12553o = true;
                    return;
                }
                if (!z) {
                    if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmi)).booleanValue() && map != null) {
                        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                            View view2 = entry.getValue().get();
                            if (view2 != null && zzy(view2)) {
                                this.f12543e.zza(view, map, map2);
                                this.f12553o = true;
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void zzb(zzbxz zzbxzVar) {
        synchronized (this) {
            this.f12543e.zza(zzbxzVar.zzaga(), zzbxzVar.zzajz());
            if (zzbxzVar.zzakd() != null) {
                zzbxzVar.zzakd().setClickable(false);
                zzbxzVar.zzakd().removeAllViews();
            }
            if (zzbxzVar.zzake() != null) {
                zzbxzVar.zzake().zzb(this.f12554p);
            }
            this.f12552n = null;
        }
    }

    public final void zzf(Bundle bundle) {
        synchronized (this) {
            this.f12543e.zzf(bundle);
        }
    }

    public final void zzfu(String str) {
        synchronized (this) {
            this.f12543e.zzfu(str);
        }
    }

    public final void zzg(Bundle bundle) {
        synchronized (this) {
            this.f12543e.zzg(bundle);
        }
    }

    public final void zzg(String str, boolean z) {
        View view;
        if (this.f12545g.zzaiw()) {
            zzbdi zzajg = this.f12542d.zzajg();
            zzbdi zzajf = this.f12542d.zzajf();
            if (zzajg != null || zzajf != null) {
                boolean z2 = true;
                boolean z3 = zzajg != null;
                if (zzajf == null) {
                    z2 = false;
                }
                String str2 = null;
                if (!z3) {
                    if (z2) {
                        str2 = "javascript";
                        zzajg = zzajf;
                    } else {
                        zzajg = null;
                        str2 = null;
                    }
                }
                if (zzajg.getWebView() != null && zzq.zzlf().zzp(this.f12557s)) {
                    int i = this.f12556r.zzdvz;
                    int i2 = this.f12556r.zzdwa;
                    StringBuilder sb = new StringBuilder(23);
                    sb.append(i);
                    sb.append(".");
                    sb.append(i2);
                    IObjectWrapper zza = zzq.zzlf().zza(sb.toString(), zzajg.getWebView(), "", "javascript", str2, str);
                    if (zza != null) {
                        this.f12542d.zzaq(zza);
                        zzajg.zzan(zza);
                        if (z2 && (view = zzajf.getView()) != null) {
                            zzq.zzlf().zza(zza, view);
                        }
                        if (z) {
                            zzq.zzlf().zzab(zza);
                        }
                    }
                }
            }
        }
    }

    public final boolean zzh(Bundle bundle) {
        synchronized (this) {
            if (this.f12553o) {
                return true;
            }
            boolean zzh = this.f12543e.zzh(bundle);
            this.f12553o = zzh;
            return zzh;
        }
    }

    public final void zzrp() {
        synchronized (this) {
            this.f12543e.zzrp();
        }
    }

    public final void zzz(View view) {
        IObjectWrapper zzajh = this.f12542d.zzajh();
        boolean z = this.f12542d.zzajg() != null;
        if (this.f12545g.zzaiw() && zzajh != null && z && view != null) {
            zzq.zzlf().zza(zzajh, view);
        }
    }
}
