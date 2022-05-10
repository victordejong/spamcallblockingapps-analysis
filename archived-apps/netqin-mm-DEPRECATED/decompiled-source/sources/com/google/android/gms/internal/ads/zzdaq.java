package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbys;
import com.google.android.gms.internal.ads.zzcil;
import com.google.android.gms.internal.ads.zzdaq;
import com.google.android.gms.internal.ads.zzdbd;
import com.google.android.gms.internal.ads.zzdzc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3445cs;
import p131c.p161d.p170b.p224d.p252g.p253a.C3482ds;
import p131c.p161d.p170b.p224d.p252g.p253a.C3593gs;
import p131c.p161d.p170b.p224d.p252g.p253a.C3630hs;
import p131c.p161d.p170b.p224d.p252g.p253a.C4300zr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaq.class */
public final class zzdaq extends zzaxk {

    /* renamed from: k */
    public static final List<String> f26847k = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));

    /* renamed from: l */
    public static final List<String> f26848l = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: m */
    public static final List<String> f26849m = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));

    /* renamed from: n */
    public static final List<String> f26850n = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: a */
    public zzbix f26851a;

    /* renamed from: b */
    public Context f26852b;

    /* renamed from: c */
    public zzeg f26853c;

    /* renamed from: d */
    public zzbbx f26854d;

    /* renamed from: e */
    public zzdoz<zzcil> f26855e;

    /* renamed from: f */
    public final zzdzb f26856f;

    /* renamed from: g */
    public final ScheduledExecutorService f26857g;

    /* renamed from: h */
    public zzasa f26858h;

    /* renamed from: i */
    public Point f26859i = new Point();

    /* renamed from: j */
    public Point f26860j = new Point();

    public zzdaq(zzbix zzbixVar, Context context, zzeg zzegVar, zzbbx zzbbxVar, zzdoz<zzcil> zzdozVar, zzdzb zzdzbVar, ScheduledExecutorService scheduledExecutorService) {
        this.f26851a = zzbixVar;
        this.f26852b = context;
        this.f26853c = zzegVar;
        this.f26854d = zzbbxVar;
        this.f26855e = zzdozVar;
        this.f26856f = zzdzbVar;
        this.f26857g = scheduledExecutorService;
    }

    /* renamed from: a */
    public static /* synthetic */ Uri m13689a(Uri uri, String str) {
        Uri uri2 = uri;
        if (!TextUtils.isEmpty(str)) {
            uri2 = m13688a(uri, "nas", str);
        }
        return uri2;
    }

    /* renamed from: a */
    public static Uri m13688a(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        int i = indexOf;
        if (indexOf == -1) {
            i = uri2.indexOf("?adurl=");
        }
        if (i == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i2 = i + 1;
        return Uri.parse(uri2.substring(0, i2) + str + "=" + str2 + "&" + uri2.substring(i2));
    }

    /* renamed from: a */
    public static /* synthetic */ ArrayList m13679a(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!m13675b(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(m13688a(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m13687a(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host == null || path == null) {
            return false;
        }
        for (String str : list) {
            if (path.contains(str)) {
                for (String str2 : list2) {
                    if (host.endsWith(str2)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m13675b(Uri uri) {
        return m13687a(uri, f26849m, f26850n);
    }

    /* renamed from: C */
    public final zzdzc<String> m13693C(final String str) {
        final zzcil[] zzcilVarArr = new zzcil[1];
        zzdzc a = zzdyq.m12992a(this.f26855e.m13385a(), new zzdya(this, zzcilVarArr, str) { // from class: c.d.b.d.g.a.bs

            /* renamed from: a */
            public final zzdaq f12496a;

            /* renamed from: b */
            public final zzcil[] f12497b;

            /* renamed from: c */
            public final String f12498c;

            {
                this.f12496a = this;
                this.f12497b = zzcilVarArr;
                this.f12498c = str;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12496a.m13676a(this.f12497b, this.f12498c, (zzcil) obj);
            }
        }, this.f26856f);
        a.mo12976a(new Runnable(this, zzcilVarArr) { // from class: c.d.b.d.g.a.fs

            /* renamed from: a */
            public final zzdaq f12998a;

            /* renamed from: b */
            public final zzcil[] f12999b;

            {
                this.f12998a = this;
                this.f12999b = zzcilVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12998a.m13677a(this.f12999b);
            }
        }, this.f26856f);
        return zzdyl.m12999d(a).m13004a(((Integer) zzwm.m11166e().m16921a(zzabb.f23722O3)).intValue(), TimeUnit.MILLISECONDS, this.f26857g).m13003a(C4300zr.f16465a, this.f26856f).m13001a(Exception.class, C3445cs.f12581a, this.f26856f);
    }

    /* renamed from: Q1 */
    public final boolean m13692Q1() {
        Map<String, WeakReference<View>> map;
        zzasa zzasaVar = this.f26858h;
        return (zzasaVar == null || (map = zzasaVar.f24317b) == null || map.isEmpty()) ? false : true;
    }

    /* renamed from: a */
    public final Uri m13674b(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.f26853c.m12601a(uri, this.f26852b, (View) ObjectWrapper.m17021Q(iObjectWrapper), null);
        } catch (zzef e) {
            zzbbq.m15853c("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13691a(final Uri uri) throws Exception {
        return zzdyq.m12993a(m13693C("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzdvu(this, uri) { // from class: c.d.b.d.g.a.as

            /* renamed from: a */
            public final Uri f12312a;

            {
                this.f12312a = uri;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return zzdaq.m13689a(this.f12312a, (String) obj);
            }
        }, this.f26856f);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13682a(final ArrayList arrayList) throws Exception {
        return zzdyq.m12993a(m13693C("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzdvu(this, arrayList) { // from class: c.d.b.d.g.a.xr

            /* renamed from: a */
            public final List f16064a;

            {
                this.f16064a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return zzdaq.m13679a(this.f16064a, (String) obj);
            }
        }, this.f26856f);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13676a(zzcil[] zzcilVarArr, String str, zzcil zzcilVar) throws Exception {
        zzcilVarArr[0] = zzcilVar;
        Context context = this.f26852b;
        zzasa zzasaVar = this.f26858h;
        Map<String, WeakReference<View>> map = zzasaVar.f24317b;
        JSONObject a = zzbau.m15939a(context, map, map, zzasaVar.f24316a);
        JSONObject a2 = zzbau.m15940a(this.f26852b, this.f26858h.f24316a);
        JSONObject a3 = zzbau.m15937a(this.f26858h.f24316a);
        JSONObject b = zzbau.m15934b(this.f26852b, this.f26858h.f24316a);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", a);
        jSONObject.put("ad_view_signal", a2);
        jSONObject.put("scroll_view_signal", a3);
        jSONObject.put("lock_screen_signal", b);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", zzbau.m15935a((String) null, this.f26852b, this.f26860j, this.f26859i));
        }
        return zzcilVar.m14174a(str, jSONObject);
    }

    /* renamed from: a */
    public final /* synthetic */ ArrayList m13681a(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String a = this.f26853c.m12604a() != null ? this.f26853c.m12604a().mo13023a(this.f26852b, (View) ObjectWrapper.m17021Q(iObjectWrapper), (Activity) null) : "";
        if (!TextUtils.isEmpty(a)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!m13675b(uri)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzbbq.m15852d(sb.toString());
                    arrayList.add(uri);
                } else {
                    arrayList.add(m13688a(uri, "ms", a));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception("Empty impression URLs result.");
        }
        throw new Exception("Failed to get view signals.");
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13686a(IObjectWrapper iObjectWrapper, zzaxr zzaxrVar, zzaxg zzaxgVar) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        this.f26852b = context;
        String str = zzaxrVar.f24586a;
        String str2 = zzaxrVar.f24587b;
        zzvn zzvnVar = zzaxrVar.f24588c;
        zzvg zzvgVar = zzaxrVar.f24589d;
        zzdan p = this.f26851a.mo15365p();
        zzbtp.zza zzaVar = new zzbtp.zza();
        zzaVar.m15065a(context);
        zzdom zzdomVar = new zzdom();
        String str3 = str;
        if (str == null) {
            str3 = "adUnitId";
        }
        zzdomVar.m13429a(str3);
        zzvg zzvgVar2 = zzvgVar;
        if (zzvgVar == null) {
            zzvgVar2 = new zzvj().m11202a();
        }
        zzdomVar.m13433a(zzvgVar2);
        zzvn zzvnVar2 = zzvnVar;
        if (zzvnVar == null) {
            zzvnVar2 = new zzvn();
        }
        zzdomVar.m13432a(zzvnVar2);
        zzaVar.m15061a(zzdomVar.m13420d());
        zzdan a = p.mo13697a(zzaVar.m15066a());
        zzdbd.zza zzaVar2 = new zzdbd.zza();
        zzaVar2.m13665a(str2);
        zzdyq.m12991a(a.mo13695a(new zzdbd(zzaVar2)).mo13696a(new zzbys.zza().m14923a()).mo13698a().mo13694a(), new C3482ds(this, zzaxgVar), this.f26851a.mo15396a());
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13685a(zzasa zzasaVar) {
        this.f26858h = zzasaVar;
        this.f26855e.m13384a(1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: a */
    public final void mo13680a(List<Uri> list, final IObjectWrapper iObjectWrapper, zzart zzartVar) {
        try {
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23717N3)).booleanValue()) {
                zzartVar.mo16391h("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                zzartVar.mo16391h("There should be only 1 click URL.");
            } else {
                final Uri uri = list.get(0);
                if (!m13687a(uri, f26847k, f26848l)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzbbq.m15852d(sb.toString());
                    zzartVar.mo16392b(list);
                    return;
                }
                zzdzc a = this.f26856f.mo12977a(new Callable(this, uri, iObjectWrapper) { // from class: c.d.b.d.g.a.vr

                    /* renamed from: a */
                    public final zzdaq f15880a;

                    /* renamed from: b */
                    public final Uri f15881b;

                    /* renamed from: c */
                    public final IObjectWrapper f15882c;

                    {
                        this.f15880a = this;
                        this.f15881b = uri;
                        this.f15882c = iObjectWrapper;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f15880a.m13674b(this.f15881b, this.f15882c);
                    }
                });
                if (m13692Q1()) {
                    a = zzdyq.m12992a(a, new zzdya(this) { // from class: c.d.b.d.g.a.yr

                        /* renamed from: a */
                        public final zzdaq f16232a;

                        {
                            this.f16232a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdya
                        /* renamed from: d */
                        public final zzdzc mo13006d(Object obj) {
                            return this.f16232a.m13691a((Uri) obj);
                        }
                    }, this.f26856f);
                } else {
                    zzbbq.m15854c("Asset view map is empty.");
                }
                zzdyq.m12991a(a, new C3593gs(this, zzartVar), this.f26851a.mo15396a());
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m13677a(zzcil[] zzcilVarArr) {
        if (zzcilVarArr[0] != null) {
            this.f26855e.m13383a(zzdyq.m12988a(zzcilVarArr[0]));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: b */
    public final void mo13673b(final List<Uri> list, final IObjectWrapper iObjectWrapper, zzart zzartVar) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23717N3)).booleanValue()) {
            try {
                zzartVar.mo16391h("The updating URL feature is not enabled.");
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
            }
        } else {
            zzdzc a = this.f26856f.mo12977a(new Callable(this, list, iObjectWrapper) { // from class: c.d.b.d.g.a.ur

                /* renamed from: a */
                public final zzdaq f15666a;

                /* renamed from: b */
                public final List f15667b;

                /* renamed from: c */
                public final IObjectWrapper f15668c;

                {
                    this.f15666a = this;
                    this.f15667b = list;
                    this.f15668c = iObjectWrapper;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f15666a.m13681a(this.f15667b, this.f15668c);
                }
            });
            if (m13692Q1()) {
                a = zzdyq.m12992a(a, new zzdya(this) { // from class: c.d.b.d.g.a.wr

                    /* renamed from: a */
                    public final zzdaq f15971a;

                    {
                        this.f15971a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdya
                    /* renamed from: d */
                    public final zzdzc mo13006d(Object obj) {
                        return this.f15971a.m13682a((ArrayList) obj);
                    }
                }, this.f26856f);
            } else {
                zzbbq.m15854c("Asset view map is empty.");
            }
            zzdyq.m12991a(a, new C3630hs(this, zzartVar), this.f26851a.mo15396a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: c */
    public final IObjectWrapper mo13672c(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: g */
    public final IObjectWrapper mo13671g(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxl
    /* renamed from: s */
    public final void mo13670s(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23717N3)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.m17021Q(iObjectWrapper);
            zzasa zzasaVar = this.f26858h;
            this.f26859i = zzbau.m15938a(motionEvent, zzasaVar == null ? null : zzasaVar.f24316a);
            if (motionEvent.getAction() == 0) {
                this.f26860j = this.f26859i;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            Point point = this.f26859i;
            obtain.setLocation(point.x, point.y);
            this.f26853c.m12599a(obtain);
            obtain.recycle();
        }
    }
}
