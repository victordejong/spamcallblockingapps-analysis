package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.internal.zzab;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzc;
import com.google.android.gms.analytics.internal.zze;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzh;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.ad;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.an;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzb.class */
public class zzb extends zzc implements zzk {

    /* renamed from: a  reason: collision with root package name */
    private static DecimalFormat f3890a;

    /* renamed from: b  reason: collision with root package name */
    private final zzf f3891b;
    private final String c;
    private final Uri d;
    private final boolean e;
    private final boolean f;

    public zzb(zzf zzfVar, String str) {
        this(zzfVar, str, true, false);
    }

    public zzb(zzf zzfVar, String str, boolean z, boolean z2) {
        super(zzfVar);
        b.a(str);
        this.f3891b = zzfVar;
        this.c = str;
        this.e = z;
        this.f = z2;
        this.d = a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(String str) {
        b.a(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    private static String a(double d) {
        if (f3890a == null) {
            f3890a = new DecimalFormat("0.######");
        }
        return f3890a.format(d);
    }

    private static void a(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, a(d));
        }
    }

    private static void a(Map<String, String> map, String str, int i, int i2) {
        if (i > 0 && i2 > 0) {
            map.put(str, new StringBuilder(23).append(i).append("x").append(i2).toString());
        }
    }

    private static void a(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    private static void a(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    public static Map<String, String> zzc(zze zzeVar) {
        String valueOf;
        HashMap hashMap = new HashMap();
        af afVar = (af) zzeVar.zza(af.class);
        if (afVar != null) {
            for (Map.Entry entry : Collections.unmodifiableMap(afVar.f4102a).entrySet()) {
                Object value = entry.getValue();
                if (value == null) {
                    valueOf = null;
                } else if (value instanceof String) {
                    String str = (String) value;
                    valueOf = str;
                    if (TextUtils.isEmpty(str)) {
                        valueOf = null;
                    }
                } else if (value instanceof Double) {
                    Double d = (Double) value;
                    valueOf = d.doubleValue() != 0.0d ? a(d.doubleValue()) : null;
                } else {
                    valueOf = value instanceof Boolean ? value != Boolean.FALSE ? "1" : null : String.valueOf(value);
                }
                if (valueOf != null) {
                    hashMap.put((String) entry.getKey(), valueOf);
                }
            }
        }
        ak akVar = (ak) zzeVar.zza(ak.class);
        if (akVar != null) {
            a(hashMap, "t", akVar.f4111a);
            a(hashMap, "cid", akVar.f4112b);
            a(hashMap, "uid", akVar.c);
            a(hashMap, "sc", akVar.f);
            a(hashMap, "sf", akVar.h);
            a(hashMap, "ni", akVar.g);
            a(hashMap, "adid", akVar.d);
            a(hashMap, "ate", akVar.e);
        }
        al alVar = (al) zzeVar.zza(al.class);
        if (alVar != null) {
            a(hashMap, "cd", alVar.f4113a);
            a(hashMap, "a", alVar.f4114b);
            a(hashMap, "dr", alVar.c);
        }
        ai aiVar = (ai) zzeVar.zza(ai.class);
        if (aiVar != null) {
            a(hashMap, "ec", aiVar.f4107a);
            a(hashMap, "ea", aiVar.f4108b);
            a(hashMap, "el", aiVar.c);
            a(hashMap, "ev", aiVar.d);
        }
        ac acVar = (ac) zzeVar.zza(ac.class);
        if (acVar != null) {
            a(hashMap, "cn", acVar.f4098a);
            a(hashMap, "cs", acVar.f4099b);
            a(hashMap, "cm", acVar.c);
            a(hashMap, "ck", acVar.d);
            a(hashMap, "cc", acVar.e);
            a(hashMap, "ci", acVar.f);
            a(hashMap, "anid", acVar.g);
            a(hashMap, "gclid", acVar.h);
            a(hashMap, "dclid", acVar.i);
            a(hashMap, "aclid", acVar.j);
        }
        aj ajVar = (aj) zzeVar.zza(aj.class);
        if (ajVar != null) {
            a(hashMap, "exd", ajVar.f4109a);
            a(hashMap, "exf", ajVar.f4110b);
        }
        am amVar = (am) zzeVar.zza(am.class);
        if (amVar != null) {
            a(hashMap, "sn", amVar.f4115a);
            a(hashMap, "sa", amVar.f4116b);
            a(hashMap, "st", amVar.c);
        }
        an anVar = (an) zzeVar.zza(an.class);
        if (anVar != null) {
            a(hashMap, "utv", anVar.f4117a);
            a(hashMap, "utt", anVar.f4118b);
            a(hashMap, "utc", anVar.c);
            a(hashMap, "utl", anVar.d);
        }
        ad adVar = (ad) zzeVar.zza(ad.class);
        if (adVar != null) {
            for (Map.Entry entry2 : Collections.unmodifiableMap(adVar.f4100a).entrySet()) {
                String zzab = zzc.zzab(((Integer) entry2.getKey()).intValue());
                if (!TextUtils.isEmpty(zzab)) {
                    hashMap.put(zzab, (String) entry2.getValue());
                }
            }
        }
        ae aeVar = (ae) zzeVar.zza(ae.class);
        if (aeVar != null) {
            for (Map.Entry entry3 : Collections.unmodifiableMap(aeVar.f4101a).entrySet()) {
                String zzad = zzc.zzad(((Integer) entry3.getKey()).intValue());
                if (!TextUtils.isEmpty(zzad)) {
                    hashMap.put(zzad, a(((Double) entry3.getValue()).doubleValue()));
                }
            }
        }
        ah ahVar = (ah) zzeVar.zza(ah.class);
        if (ahVar != null) {
            ProductAction productAction = ahVar.d;
            if (productAction != null) {
                for (Map.Entry<String, String> entry4 : productAction.build().entrySet()) {
                    if (entry4.getKey().startsWith("&")) {
                        hashMap.put(entry4.getKey().substring(1), entry4.getValue());
                    } else {
                        hashMap.put(entry4.getKey(), entry4.getValue());
                    }
                }
            }
            int i = 1;
            for (Promotion promotion : Collections.unmodifiableList(ahVar.f4106b)) {
                hashMap.putAll(promotion.zzbD(zzc.zzah(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : Collections.unmodifiableList(ahVar.f4105a)) {
                hashMap.putAll(product.zzbD(zzc.zzaf(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry5 : ahVar.c.entrySet()) {
                List<Product> value2 = entry5.getValue();
                String zzak = zzc.zzak(i3);
                int i4 = 1;
                for (Product product2 : value2) {
                    String valueOf2 = String.valueOf(zzak);
                    String valueOf3 = String.valueOf(zzc.zzai(i4));
                    hashMap.putAll(product2.zzbD(valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String valueOf4 = String.valueOf(zzak);
                    String valueOf5 = String.valueOf("nm");
                    hashMap.put(valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4), entry5.getKey());
                }
                i3++;
            }
        }
        ag agVar = (ag) zzeVar.zza(ag.class);
        if (agVar != null) {
            a(hashMap, "ul", agVar.f4103a);
            a(hashMap, "sd", agVar.f4104b);
            a(hashMap, "sr", agVar.c, agVar.d);
            a(hashMap, "vp", agVar.e, agVar.f);
        }
        ab abVar = (ab) zzeVar.zza(ab.class);
        if (abVar != null) {
            a(hashMap, "an", abVar.f4096a);
            a(hashMap, "aid", abVar.c);
            a(hashMap, "aiid", abVar.d);
            a(hashMap, "av", abVar.f4097b);
        }
        return hashMap;
    }

    @Override // com.google.android.gms.analytics.zzk
    public void zzb(zze zzeVar) {
        b.a(zzeVar);
        b.b(zzeVar.zzkD(), "Can't deliver not submitted measurement");
        b.c("deliver should be called on worker thread");
        zze zzky = zzeVar.zzky();
        ak akVar = (ak) zzky.zzb(ak.class);
        if (TextUtils.isEmpty(akVar.f4111a)) {
            zzlR().zzh(zzc(zzky), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(akVar.f4112b)) {
            zzlR().zzh(zzc(zzky), "Ignoring measurement without client id");
        } else if (!this.f3891b.zzme().getAppOptOut()) {
            double d = akVar.h;
            if (zzao.zza(d, akVar.f4112b)) {
                zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(d));
                return;
            }
            Map<String, String> zzc = zzc(zzky);
            zzc.put("v", "1");
            zzc.put("_v", zze.zzWi);
            zzc.put("tid", this.c);
            if (this.f3891b.zzme().isDryRunEnabled()) {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry<String, String> entry : zzc.entrySet()) {
                    if (sb.length() != 0) {
                        sb.append(", ");
                    }
                    sb.append(entry.getKey());
                    sb.append("=");
                    sb.append(entry.getValue());
                }
                zzc("Dry run is enabled. GoogleAnalytics would have sent", sb.toString());
                return;
            }
            HashMap hashMap = new HashMap();
            zzao.zzc(hashMap, "uid", akVar.c);
            ab abVar = (ab) zzeVar.zza(ab.class);
            if (abVar != null) {
                zzao.zzc(hashMap, "an", abVar.f4096a);
                zzao.zzc(hashMap, "aid", abVar.c);
                zzao.zzc(hashMap, "av", abVar.f4097b);
                zzao.zzc(hashMap, "aiid", abVar.d);
            }
            zzc.put("_s", String.valueOf(zzkw().zza(new zzh(0L, akVar.f4112b, this.c, !TextUtils.isEmpty(akVar.d), 0L, hashMap))));
            zzkw().zza(new zzab(zzlR(), zzc, zzeVar.zzkB(), true));
        }
    }

    @Override // com.google.android.gms.analytics.zzk
    public Uri zzkn() {
        return this.d;
    }
}
