package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctj.class */
public final class zzctj implements zzcub<zzctg> {

    /* renamed from: a */
    private final zzdhd f13849a;

    /* renamed from: b */
    private final ScheduledExecutorService f13850b;

    /* renamed from: c */
    private final zzcob f13851c;

    /* renamed from: d */
    private final Context f13852d;

    /* renamed from: e */
    private final zzczu f13853e;

    /* renamed from: f */
    private final zzcnz f13854f;

    /* renamed from: g */
    private String f13855g;

    public zzctj(zzdhd zzdhdVar, ScheduledExecutorService scheduledExecutorService, String str, zzcob zzcobVar, Context context, zzczu zzczuVar, zzcnz zzcnzVar) {
        this.f13849a = zzdhdVar;
        this.f13850b = scheduledExecutorService;
        this.f13855g = str;
        this.f13851c = zzcobVar;
        this.f13852d = context;
        this.f13853e = zzczuVar;
        this.f13854f = zzcnzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3692a() {
        Map<String, List<Bundle>> zzr = this.f13851c.zzr(this.f13855g, this.f13853e.zzgmm);
        final ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : zzr.entrySet()) {
            final String key = entry.getKey();
            final List<Bundle> value = entry.getValue();
            final Bundle bundle = this.f13853e.zzgml.zzccf != null ? this.f13853e.zzgml.zzccf.getBundle(key) : null;
            arrayList.add(zzdgn.zze(zzdgs.zza(new zzdgd(this, key, value, bundle) { // from class: com.google.android.gms.internal.ads.wu

                /* renamed from: a */
                private final zzctj f10666a;

                /* renamed from: b */
                private final String f10667b;

                /* renamed from: c */
                private final List f10668c;

                /* renamed from: d */
                private final Bundle f10669d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10666a = this;
                    this.f10667b = key;
                    this.f10668c = value;
                    this.f10669d = bundle;
                }

                @Override // com.google.android.gms.internal.ads.zzdgd
                public final zzdhe zzanm() {
                    return this.f10666a.m3691a(this.f10667b, this.f10668c, this.f10669d);
                }
            }, this.f13849a)).zza(((Long) zzve.zzoy().zzd(zzzn.zzckm)).longValue(), TimeUnit.MILLISECONDS, this.f13850b).zza(Throwable.class, new zzded(key) { // from class: com.google.android.gms.internal.ads.wt

                /* renamed from: a */
                private final String f10665a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10665a = key;
                }

                @Override // com.google.android.gms.internal.ads.zzded
                public final Object apply(Object obj) {
                    String valueOf = String.valueOf(this.f10665a);
                    zzavs.zzex(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.f13849a));
        }
        return zzdgs.zzi(arrayList).zza(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.wv

            /* renamed from: a */
            private final List f10670a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10670a = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdhe> list = this.f10670a;
                JSONArray jSONArray = new JSONArray();
                for (zzdhe zzdheVar : list) {
                    if (((JSONObject) zzdheVar.get()) != null) {
                        jSONArray.put(zzdheVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzctg(jSONArray.toString());
            }
        }, this.f13849a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3691a(String str, List list, Bundle bundle) {
        zzazl zzazlVar = new zzazl();
        this.f13854f.zzgg(str);
        zzani zzgh = this.f13854f.zzgh(str);
        if (zzgh != null) {
            zzgh.zza(ObjectWrapper.wrap(this.f13852d), this.f13855g, bundle, (Bundle) list.get(0), this.f13853e.zzblm, new zzcoh(str, zzgh, zzazlVar));
            return zzazlVar;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzctg> zzanc() {
        return ((Boolean) zzve.zzoy().zzd(zzzn.zzckn)).booleanValue() ? zzdgs.zza(new zzdgd(this) { // from class: com.google.android.gms.internal.ads.ws

            /* renamed from: a */
            private final zzctj f10664a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10664a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgd
            public final zzdhe zzanm() {
                return this.f10664a.m3692a();
            }
        }, this.f13849a) : zzdgs.zzaj(null);
    }
}
