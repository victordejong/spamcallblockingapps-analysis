package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.p026b.C0542i;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbws.class */
public final class zzbws {

    /* renamed from: a */
    private int f12578a;

    /* renamed from: b */
    private zzxb f12579b;

    /* renamed from: c */
    private zzaca f12580c;

    /* renamed from: d */
    private View f12581d;

    /* renamed from: e */
    private List<?> f12582e;

    /* renamed from: g */
    private zzxy f12584g;

    /* renamed from: h */
    private Bundle f12585h;

    /* renamed from: i */
    private zzbdi f12586i;

    /* renamed from: j */
    private zzbdi f12587j;

    /* renamed from: k */
    private IObjectWrapper f12588k;

    /* renamed from: l */
    private View f12589l;

    /* renamed from: m */
    private IObjectWrapper f12590m;

    /* renamed from: n */
    private double f12591n;

    /* renamed from: o */
    private zzaci f12592o;

    /* renamed from: p */
    private zzaci f12593p;

    /* renamed from: q */
    private String f12594q;

    /* renamed from: t */
    private float f12597t;

    /* renamed from: u */
    private String f12598u;

    /* renamed from: r */
    private C0542i<String, zzabu> f12595r = new C0542i<>();

    /* renamed from: s */
    private C0542i<String, String> f12596s = new C0542i<>();

    /* renamed from: f */
    private List<zzxy> f12583f = Collections.emptyList();

    /* renamed from: a */
    private static zzbws m3867a(zzxb zzxbVar, zzaca zzacaVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzaci zzaciVar, String str6, float f) {
        zzbws zzbwsVar = new zzbws();
        zzbwsVar.f12578a = 6;
        zzbwsVar.f12579b = zzxbVar;
        zzbwsVar.f12580c = zzacaVar;
        zzbwsVar.f12581d = view;
        zzbwsVar.zzn("headline", str);
        zzbwsVar.f12582e = list;
        zzbwsVar.zzn("body", str2);
        zzbwsVar.f12585h = bundle;
        zzbwsVar.zzn("call_to_action", str3);
        zzbwsVar.f12589l = view2;
        zzbwsVar.f12590m = iObjectWrapper;
        zzbwsVar.zzn("store", str4);
        zzbwsVar.zzn("price", str5);
        zzbwsVar.f12591n = d;
        zzbwsVar.f12592o = zzaciVar;
        zzbwsVar.zzn("advertiser", str6);
        zzbwsVar.m3869a(f);
        return zzbwsVar;
    }

    /* renamed from: a */
    private static <T> T m3868a(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }

    /* renamed from: a */
    private final String m3866a(String str) {
        String str2;
        synchronized (this) {
            str2 = this.f12596s.get(str);
        }
        return str2;
    }

    /* renamed from: a */
    private final void m3869a(float f) {
        synchronized (this) {
            this.f12597t = f;
        }
    }

    public static zzbws zza(zzall zzallVar) {
        try {
            zzxb videoController = zzallVar.getVideoController();
            zzaca zzrh = zzallVar.zzrh();
            View view = (View) m3868a(zzallVar.zzsu());
            String headline = zzallVar.getHeadline();
            List<?> images = zzallVar.getImages();
            String body = zzallVar.getBody();
            Bundle extras = zzallVar.getExtras();
            String callToAction = zzallVar.getCallToAction();
            View view2 = (View) m3868a(zzallVar.zzsv());
            IObjectWrapper zzri = zzallVar.zzri();
            String store = zzallVar.getStore();
            String price = zzallVar.getPrice();
            double starRating = zzallVar.getStarRating();
            zzaci zzrg = zzallVar.zzrg();
            zzbws zzbwsVar = new zzbws();
            zzbwsVar.f12578a = 2;
            zzbwsVar.f12579b = videoController;
            zzbwsVar.f12580c = zzrh;
            zzbwsVar.f12581d = view;
            zzbwsVar.zzn("headline", headline);
            zzbwsVar.f12582e = images;
            zzbwsVar.zzn("body", body);
            zzbwsVar.f12585h = extras;
            zzbwsVar.zzn("call_to_action", callToAction);
            zzbwsVar.f12589l = view2;
            zzbwsVar.f12590m = zzri;
            zzbwsVar.zzn("store", store);
            zzbwsVar.zzn("price", price);
            zzbwsVar.f12591n = starRating;
            zzbwsVar.f12592o = zzrg;
            return zzbwsVar;
        } catch (RemoteException e) {
            zzavs.zzd("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzbws zza(zzalq zzalqVar) {
        try {
            zzxb videoController = zzalqVar.getVideoController();
            zzaca zzrh = zzalqVar.zzrh();
            View view = (View) m3868a(zzalqVar.zzsu());
            String headline = zzalqVar.getHeadline();
            List<?> images = zzalqVar.getImages();
            String body = zzalqVar.getBody();
            Bundle extras = zzalqVar.getExtras();
            String callToAction = zzalqVar.getCallToAction();
            View view2 = (View) m3868a(zzalqVar.zzsv());
            IObjectWrapper zzri = zzalqVar.zzri();
            String advertiser = zzalqVar.getAdvertiser();
            zzaci zzrj = zzalqVar.zzrj();
            zzbws zzbwsVar = new zzbws();
            zzbwsVar.f12578a = 1;
            zzbwsVar.f12579b = videoController;
            zzbwsVar.f12580c = zzrh;
            zzbwsVar.f12581d = view;
            zzbwsVar.zzn("headline", headline);
            zzbwsVar.f12582e = images;
            zzbwsVar.zzn("body", body);
            zzbwsVar.f12585h = extras;
            zzbwsVar.zzn("call_to_action", callToAction);
            zzbwsVar.f12589l = view2;
            zzbwsVar.f12590m = zzri;
            zzbwsVar.zzn("advertiser", advertiser);
            zzbwsVar.f12593p = zzrj;
            return zzbwsVar;
        } catch (RemoteException e) {
            zzavs.zzd("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static zzbws zzb(zzall zzallVar) {
        try {
            return m3867a(zzallVar.getVideoController(), zzallVar.zzrh(), (View) m3868a(zzallVar.zzsu()), zzallVar.getHeadline(), zzallVar.getImages(), zzallVar.getBody(), zzallVar.getExtras(), zzallVar.getCallToAction(), (View) m3868a(zzallVar.zzsv()), zzallVar.zzri(), zzallVar.getStore(), zzallVar.getPrice(), zzallVar.getStarRating(), zzallVar.zzrg(), null, 0.0f);
        } catch (RemoteException e) {
            zzavs.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzbws zzb(zzalq zzalqVar) {
        try {
            return m3867a(zzalqVar.getVideoController(), zzalqVar.zzrh(), (View) m3868a(zzalqVar.zzsu()), zzalqVar.getHeadline(), zzalqVar.getImages(), zzalqVar.getBody(), zzalqVar.getExtras(), zzalqVar.getCallToAction(), (View) m3868a(zzalqVar.zzsv()), zzalqVar.zzri(), null, null, -1.0d, zzalqVar.zzrj(), zzalqVar.getAdvertiser(), 0.0f);
        } catch (RemoteException e) {
            zzavs.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    public static zzbws zzb(zzalr zzalrVar) {
        try {
            return m3867a(zzalrVar.getVideoController(), zzalrVar.zzrh(), (View) m3868a(zzalrVar.zzsu()), zzalrVar.getHeadline(), zzalrVar.getImages(), zzalrVar.getBody(), zzalrVar.getExtras(), zzalrVar.getCallToAction(), (View) m3868a(zzalrVar.zzsv()), zzalrVar.zzri(), zzalrVar.getStore(), zzalrVar.getPrice(), zzalrVar.getStarRating(), zzalrVar.zzrg(), zzalrVar.getAdvertiser(), zzalrVar.getMediaContentAspectRatio());
        } catch (RemoteException e) {
            zzavs.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public final void destroy() {
        synchronized (this) {
            if (this.f12586i != null) {
                this.f12586i.destroy();
                this.f12586i = null;
            }
            if (this.f12587j != null) {
                this.f12587j.destroy();
                this.f12587j = null;
            }
            this.f12588k = null;
            this.f12595r.clear();
            this.f12596s.clear();
            this.f12579b = null;
            this.f12580c = null;
            this.f12581d = null;
            this.f12582e = null;
            this.f12585h = null;
            this.f12589l = null;
            this.f12590m = null;
            this.f12592o = null;
            this.f12593p = null;
            this.f12594q = null;
        }
    }

    public final String getAdvertiser() {
        String a;
        synchronized (this) {
            a = m3866a("advertiser");
        }
        return a;
    }

    public final String getBody() {
        String a;
        synchronized (this) {
            a = m3866a("body");
        }
        return a;
    }

    public final String getCallToAction() {
        String a;
        synchronized (this) {
            a = m3866a("call_to_action");
        }
        return a;
    }

    public final String getCustomTemplateId() {
        String str;
        synchronized (this) {
            str = this.f12594q;
        }
        return str;
    }

    public final Bundle getExtras() {
        Bundle bundle;
        synchronized (this) {
            if (this.f12585h == null) {
                this.f12585h = new Bundle();
            }
            bundle = this.f12585h;
        }
        return bundle;
    }

    public final String getHeadline() {
        String a;
        synchronized (this) {
            a = m3866a("headline");
        }
        return a;
    }

    public final List<?> getImages() {
        List<?> list;
        synchronized (this) {
            list = this.f12582e;
        }
        return list;
    }

    public final float getMediaContentAspectRatio() {
        float f;
        synchronized (this) {
            f = this.f12597t;
        }
        return f;
    }

    public final List<zzxy> getMuteThisAdReasons() {
        List<zzxy> list;
        synchronized (this) {
            list = this.f12583f;
        }
        return list;
    }

    public final String getPrice() {
        String a;
        synchronized (this) {
            a = m3866a("price");
        }
        return a;
    }

    public final double getStarRating() {
        double d;
        synchronized (this) {
            d = this.f12591n;
        }
        return d;
    }

    public final String getStore() {
        String a;
        synchronized (this) {
            a = m3866a("store");
        }
        return a;
    }

    public final zzxb getVideoController() {
        zzxb zzxbVar;
        synchronized (this) {
            zzxbVar = this.f12579b;
        }
        return zzxbVar;
    }

    public final void setImages(List<zzabu> list) {
        synchronized (this) {
            this.f12582e = list;
        }
    }

    public final void setStarRating(double d) {
        synchronized (this) {
            this.f12591n = d;
        }
    }

    public final void zza(zzaca zzacaVar) {
        synchronized (this) {
            this.f12580c = zzacaVar;
        }
    }

    public final void zza(zzaci zzaciVar) {
        synchronized (this) {
            this.f12592o = zzaciVar;
        }
    }

    public final void zza(zzxy zzxyVar) {
        synchronized (this) {
            this.f12584g = zzxyVar;
        }
    }

    public final void zza(String str, zzabu zzabuVar) {
        synchronized (this) {
            if (zzabuVar == null) {
                this.f12595r.remove(str);
            } else {
                this.f12595r.put(str, zzabuVar);
            }
        }
    }

    public final void zzab(View view) {
        synchronized (this) {
            this.f12589l = view;
        }
    }

    public final int zzaja() {
        int i;
        synchronized (this) {
            i = this.f12578a;
        }
        return i;
    }

    public final View zzajb() {
        View view;
        synchronized (this) {
            view = this.f12581d;
        }
        return view;
    }

    public final zzaci zzajc() {
        List<?> list = this.f12582e;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.f12582e.get(0);
        if (obj instanceof IBinder) {
            return zzach.zzm((IBinder) obj);
        }
        return null;
    }

    public final zzxy zzajd() {
        zzxy zzxyVar;
        synchronized (this) {
            zzxyVar = this.f12584g;
        }
        return zzxyVar;
    }

    public final View zzaje() {
        View view;
        synchronized (this) {
            view = this.f12589l;
        }
        return view;
    }

    public final zzbdi zzajf() {
        zzbdi zzbdiVar;
        synchronized (this) {
            zzbdiVar = this.f12586i;
        }
        return zzbdiVar;
    }

    public final zzbdi zzajg() {
        zzbdi zzbdiVar;
        synchronized (this) {
            zzbdiVar = this.f12587j;
        }
        return zzbdiVar;
    }

    public final IObjectWrapper zzajh() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f12588k;
        }
        return iObjectWrapper;
    }

    public final C0542i<String, zzabu> zzaji() {
        C0542i<String, zzabu> iVar;
        synchronized (this) {
            iVar = this.f12595r;
        }
        return iVar;
    }

    public final String zzajj() {
        String str;
        synchronized (this) {
            str = this.f12598u;
        }
        return str;
    }

    public final C0542i<String, String> zzajk() {
        C0542i<String, String> iVar;
        synchronized (this) {
            iVar = this.f12596s;
        }
        return iVar;
    }

    public final void zzaq(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.f12588k = iObjectWrapper;
        }
    }

    public final void zzb(zzaci zzaciVar) {
        synchronized (this) {
            this.f12593p = zzaciVar;
        }
    }

    public final void zzb(zzxb zzxbVar) {
        synchronized (this) {
            this.f12579b = zzxbVar;
        }
    }

    public final void zzdj(int i) {
        synchronized (this) {
            this.f12578a = i;
        }
    }

    public final void zzf(List<zzxy> list) {
        synchronized (this) {
            this.f12583f = list;
        }
    }

    public final void zzfw(String str) {
        synchronized (this) {
            this.f12594q = str;
        }
    }

    public final void zzfx(String str) {
        synchronized (this) {
            this.f12598u = str;
        }
    }

    public final void zzi(zzbdi zzbdiVar) {
        synchronized (this) {
            this.f12586i = zzbdiVar;
        }
    }

    public final void zzj(zzbdi zzbdiVar) {
        synchronized (this) {
            this.f12587j = zzbdiVar;
        }
    }

    public final void zzn(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.f12596s.remove(str);
            } else {
                this.f12596s.put(str, str2);
            }
        }
    }

    public final zzaci zzrg() {
        zzaci zzaciVar;
        synchronized (this) {
            zzaciVar = this.f12592o;
        }
        return zzaciVar;
    }

    public final zzaca zzrh() {
        zzaca zzacaVar;
        synchronized (this) {
            zzacaVar = this.f12580c;
        }
        return zzacaVar;
    }

    public final IObjectWrapper zzri() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.f12590m;
        }
        return iObjectWrapper;
    }

    public final zzaci zzrj() {
        zzaci zzaciVar;
        synchronized (this) {
            zzaciVar = this.f12593p;
        }
        return zzaciVar;
    }
}
