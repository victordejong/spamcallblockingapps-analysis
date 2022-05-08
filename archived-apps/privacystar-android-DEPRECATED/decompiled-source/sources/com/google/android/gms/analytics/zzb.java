package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.internal.measurement.zzab;
import com.google.android.gms.internal.measurement.zzac;
import com.google.android.gms.internal.measurement.zzad;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzaf;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.internal.measurement.zzah;
import com.google.android.gms.internal.measurement.zzai;
import com.google.android.gms.internal.measurement.zzaj;
import com.google.android.gms.internal.measurement.zzat;
import com.google.android.gms.internal.measurement.zzav;
import com.google.android.gms.internal.measurement.zzaw;
import com.google.android.gms.internal.measurement.zzaz;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzdg;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.internal.measurement.zzz;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzb.class */
public final class zzb extends zzat implements zzo {
    private static DecimalFormat zzrb;
    private final zzaw zzqx;
    private final String zzrc;
    private final Uri zzrd;

    public zzb(zzaw zzawVar, String str) {
        this(zzawVar, str, true, false);
    }

    private zzb(zzaw zzawVar, String str, boolean z, boolean z2) {
        super(zzawVar);
        Preconditions.checkNotEmpty(str);
        this.zzqx = zzawVar;
        this.zzrc = str;
        this.zzrd = zzb(this.zzrc);
    }

    private static String zza(double d) {
        if (zzrb == null) {
            zzrb = new DecimalFormat("0.######");
        }
        return zzrb.format(d);
    }

    private static void zza(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, zza(d));
        }
    }

    private static void zza(Map<String, String> map, String str, int i, int i2) {
        if (i > 0 && i2 > 0) {
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            map.put(str, sb.toString());
        }
    }

    private static void zza(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    private static void zza(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri zzb(String str) {
        Preconditions.checkNotEmpty(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("uri");
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    @VisibleForTesting
    private static Map<String, String> zzc(zzg zzgVar) {
        HashMap hashMap = new HashMap();
        zzab zzabVar = (zzab) zzgVar.zza(zzab.class);
        if (zzabVar != null) {
            for (Map.Entry<String, Object> entry : zzabVar.zzaw().entrySet()) {
                Object value = entry.getValue();
                String str = null;
                if (value != null) {
                    if (value instanceof String) {
                        String str2 = (String) value;
                        if (!TextUtils.isEmpty(str2)) {
                            str = str2;
                        }
                    } else if (value instanceof Double) {
                        Double d = (Double) value;
                        if (d.doubleValue() != 0.0d) {
                            str = zza(d.doubleValue());
                        }
                    } else if (!(value instanceof Boolean)) {
                        str = String.valueOf(value);
                    } else if (value != Boolean.FALSE) {
                        str = "1";
                    }
                }
                if (str != null) {
                    hashMap.put(entry.getKey(), str);
                }
            }
        }
        zzag zzagVar = (zzag) zzgVar.zza(zzag.class);
        if (zzagVar != null) {
            zza(hashMap, "t", zzagVar.zzbc());
            zza(hashMap, "cid", zzagVar.zzbd());
            zza(hashMap, "uid", zzagVar.zzbe());
            zza(hashMap, "sc", zzagVar.zzbh());
            zza(hashMap, "sf", zzagVar.zzbj());
            zza(hashMap, "ni", zzagVar.zzbi());
            zza(hashMap, "adid", zzagVar.zzbf());
            zza(hashMap, "ate", zzagVar.zzbg());
        }
        zzah zzahVar = (zzah) zzgVar.zza(zzah.class);
        if (zzahVar != null) {
            zza(hashMap, "cd", zzahVar.zzbk());
            zza(hashMap, "a", zzahVar.zzbl());
            zza(hashMap, "dr", zzahVar.zzbm());
        }
        zzae zzaeVar = (zzae) zzgVar.zza(zzae.class);
        if (zzaeVar != null) {
            zza(hashMap, "ec", zzaeVar.zzbb());
            zza(hashMap, "ea", zzaeVar.getAction());
            zza(hashMap, "el", zzaeVar.getLabel());
            zza(hashMap, "ev", zzaeVar.getValue());
        }
        zzy zzyVar = (zzy) zzgVar.zza(zzy.class);
        if (zzyVar != null) {
            zza(hashMap, "cn", zzyVar.getName());
            zza(hashMap, "cs", zzyVar.getSource());
            zza(hashMap, "cm", zzyVar.zzan());
            zza(hashMap, "ck", zzyVar.zzao());
            zza(hashMap, "cc", zzyVar.zzap());
            zza(hashMap, "ci", zzyVar.getId());
            zza(hashMap, "anid", zzyVar.zzaq());
            zza(hashMap, "gclid", zzyVar.zzar());
            zza(hashMap, "dclid", zzyVar.zzas());
            zza(hashMap, FirebaseAnalytics.Param.ACLID, zzyVar.zzat());
        }
        zzaf zzafVar = (zzaf) zzgVar.zza(zzaf.class);
        if (zzafVar != null) {
            zza(hashMap, "exd", zzafVar.zzum);
            zza(hashMap, "exf", zzafVar.zzun);
        }
        zzai zzaiVar = (zzai) zzgVar.zza(zzai.class);
        if (zzaiVar != null) {
            zza(hashMap, "sn", zzaiVar.zzvd);
            zza(hashMap, "sa", zzaiVar.zzve);
            zza(hashMap, "st", zzaiVar.zzvf);
        }
        zzaj zzajVar = (zzaj) zzgVar.zza(zzaj.class);
        if (zzajVar != null) {
            zza(hashMap, "utv", zzajVar.zzvg);
            zza(hashMap, "utt", zzajVar.zzvh);
            zza(hashMap, "utc", zzajVar.mCategory);
            zza(hashMap, "utl", zzajVar.zzvi);
        }
        zzz zzzVar = (zzz) zzgVar.zza(zzz.class);
        if (zzzVar != null) {
            for (Map.Entry<Integer, String> entry2 : zzzVar.zzau().entrySet()) {
                String zze = zzd.zze(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(zze)) {
                    hashMap.put(zze, entry2.getValue());
                }
            }
        }
        zzaa zzaaVar = (zzaa) zzgVar.zza(zzaa.class);
        if (zzaaVar != null) {
            for (Map.Entry<Integer, Double> entry3 : zzaaVar.zzav().entrySet()) {
                String zzg = zzd.zzg(entry3.getKey().intValue());
                if (!TextUtils.isEmpty(zzg)) {
                    hashMap.put(zzg, zza(entry3.getValue().doubleValue()));
                }
            }
        }
        zzad zzadVar = (zzad) zzgVar.zza(zzad.class);
        if (zzadVar != null) {
            ProductAction zzax = zzadVar.zzax();
            if (zzax != null) {
                for (Map.Entry<String, String> entry4 : zzax.build().entrySet()) {
                    if (entry4.getKey().startsWith("&")) {
                        hashMap.put(entry4.getKey().substring(1), entry4.getValue());
                    } else {
                        hashMap.put(entry4.getKey(), entry4.getValue());
                    }
                }
            }
            int i = 1;
            for (Promotion promotion : zzadVar.zzba()) {
                hashMap.putAll(promotion.zzn(zzd.zzk(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : zzadVar.zzay()) {
                hashMap.putAll(product.zzn(zzd.zzi(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry5 : zzadVar.zzaz().entrySet()) {
                List<Product> value2 = entry5.getValue();
                String zzn = zzd.zzn(i3);
                int i4 = 1;
                for (Product product2 : value2) {
                    String valueOf = String.valueOf(zzn);
                    String valueOf2 = String.valueOf(zzd.zzl(i4));
                    hashMap.putAll(product2.zzn(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String valueOf3 = String.valueOf(zzn);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry5.getKey());
                }
                i3++;
            }
        }
        zzac zzacVar = (zzac) zzgVar.zza(zzac.class);
        if (zzacVar != null) {
            zza(hashMap, "ul", zzacVar.getLanguage());
            zza(hashMap, "sd", zzacVar.zzug);
            zza(hashMap, "sr", zzacVar.zzuh, zzacVar.zzui);
            zza(hashMap, "vp", zzacVar.zzuj, zzacVar.zzuk);
        }
        zzx zzxVar = (zzx) zzgVar.zza(zzx.class);
        if (zzxVar != null) {
            zza(hashMap, "an", zzxVar.zzaj());
            zza(hashMap, "aid", zzxVar.zzal());
            zza(hashMap, "aiid", zzxVar.zzam());
            zza(hashMap, "av", zzxVar.zzak());
        }
        return hashMap;
    }

    @Override // com.google.android.gms.analytics.zzo
    public final void zzb(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkArgument(zzgVar.zzx(), "Can't deliver not submitted measurement");
        Preconditions.checkNotMainThread("deliver should be called on worker thread");
        zzg zzs = zzgVar.zzs();
        zzag zzagVar = (zzag) zzs.zzb(zzag.class);
        if (TextUtils.isEmpty(zzagVar.zzbc())) {
            zzby().zza(zzc(zzs), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(zzagVar.zzbd())) {
            zzby().zza(zzc(zzs), "Ignoring measurement without client id");
        } else if (!this.zzqx.zzco().getAppOptOut()) {
            double zzbj = zzagVar.zzbj();
            if (zzdg.zza(zzbj, zzagVar.zzbd())) {
                zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(zzbj));
                return;
            }
            Map<String, String> zzc = zzc(zzs);
            zzc.put("v", "1");
            zzc.put("_v", zzav.zzwa);
            zzc.put("tid", this.zzrc);
            if (this.zzqx.zzco().isDryRunEnabled()) {
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
            zzdg.zzb(hashMap, "uid", zzagVar.zzbe());
            zzx zzxVar = (zzx) zzgVar.zza(zzx.class);
            if (zzxVar != null) {
                zzdg.zzb(hashMap, "an", zzxVar.zzaj());
                zzdg.zzb(hashMap, "aid", zzxVar.zzal());
                zzdg.zzb(hashMap, "av", zzxVar.zzak());
                zzdg.zzb(hashMap, "aiid", zzxVar.zzam());
            }
            zzc.put("_s", String.valueOf(zzcc().zza(new zzaz(0L, zzagVar.zzbd(), this.zzrc, !TextUtils.isEmpty(zzagVar.zzbf()), 0L, hashMap))));
            zzcc().zza(new zzck(zzby(), zzc, zzgVar.zzv(), true));
        }
    }

    @Override // com.google.android.gms.analytics.zzo
    public final Uri zzo() {
        return this.zzrd;
    }
}
