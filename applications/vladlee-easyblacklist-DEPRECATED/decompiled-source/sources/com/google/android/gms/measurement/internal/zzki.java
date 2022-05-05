package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzji;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzki.class */
public final class zzki extends AbstractC2837hj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzki(zzke zzkeVar) {
        super(zzkeVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1667a(zzbr.zzg.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i = 0; i < zzaVar.zze(); i++) {
            if (str.equals(zzaVar.zzd(i).zzc())) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzbr.zze m1670a(zzbr.zzc zzcVar, String str) {
        for (zzbr.zze zzeVar : zzcVar.zza()) {
            if (zzeVar.zza().equals(str)) {
                return zzeVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <Builder extends zzgn> Builder m1665a(Builder builder, byte[] bArr) {
        zzeq zzb = zzeq.zzb();
        return zzb != null ? (Builder) builder.zza(bArr, zzb) : (Builder) builder.zza(bArr);
    }

    /* renamed from: a */
    private static String m1654a(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.Long> m1657a(java.util.BitSet r6) {
        /*
            r0 = r6
            int r0 = r0.length()
            r1 = 63
            int r0 = r0 + r1
            r1 = 64
            int r0 = r0 / r1
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0016:
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L_0x006a
            r0 = 0
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x0021:
            r0 = r12
            r1 = 64
            if (r0 >= r1) goto L_0x005a
            r0 = r9
            r1 = 6
            int r0 = r0 << r1
            r1 = r12
            int r0 = r0 + r1
            r13 = r0
            r0 = r13
            r1 = r6
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x005a
            r0 = r10
            r14 = r0
            r0 = r6
            r1 = r13
            boolean r0 = r0.get(r1)
            if (r0 == 0) goto L_0x0050
            r0 = r10
            r1 = 1
            r2 = r12
            long r1 = r1 << r2
            long r0 = r0 | r1
            r14 = r0
        L_0x0050:
            int r12 = r12 + 1
            r0 = r14
            r10 = r0
            goto L_0x0021
        L_0x005a:
            r0 = r8
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r9 = r9 + 1
            goto L_0x0016
        L_0x006a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzki.m1657a(java.util.BitSet):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1671a(zzbr.zzc.zza zzaVar, String str, Object obj) {
        List<zzbr.zze> zza = zzaVar.zza();
        int i = 0;
        while (true) {
            if (i >= zza.size()) {
                i = -1;
                break;
            } else if (str.equals(zza.get(i).zza())) {
                break;
            } else {
                i++;
            }
        }
        zzbr.zze.zza zza2 = zzbr.zze.zzh().zza(str);
        if (obj instanceof Long) {
            zza2.zza(((Long) obj).longValue());
        }
        if (i >= 0) {
            zzaVar.zza(i, zza2);
        } else {
            zzaVar.zza(zza2);
        }
    }

    /* renamed from: a */
    private static void m1662a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: a */
    private final void m1661a(StringBuilder sb, int i, zzbj.zzc zzcVar) {
        if (zzcVar != null) {
            m1662a(sb, i);
            sb.append("filter {\n");
            if (zzcVar.zze()) {
                m1659a(sb, i, "complement", Boolean.valueOf(zzcVar.zzf()));
            }
            m1659a(sb, i, "param_name", zzo().m1864b(zzcVar.zzg()));
            int i2 = i + 1;
            zzbj.zzf zzb = zzcVar.zzb();
            if (zzb != null) {
                m1662a(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzb.zza()) {
                    m1659a(sb, i2, "match_type", zzb.zzb().name());
                }
                m1659a(sb, i2, "expression", zzb.zzd());
                if (zzb.zze()) {
                    m1659a(sb, i2, "case_sensitive", Boolean.valueOf(zzb.zzf()));
                }
                if (zzb.zzh() > 0) {
                    m1662a(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str : zzb.zzg()) {
                        m1662a(sb, i2 + 2);
                        sb.append(str);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m1662a(sb, i2);
                sb.append("}\n");
            }
            m1660a(sb, i2, "number_filter", zzcVar.zzd());
            m1662a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    private static void m1660a(StringBuilder sb, int i, String str, zzbj.zzd zzdVar) {
        if (zzdVar != null) {
            m1662a(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (zzdVar.zza()) {
                m1659a(sb, i, "comparison_type", zzdVar.zzb().name());
            }
            if (zzdVar.zzc()) {
                m1659a(sb, i, "match_as_float", Boolean.valueOf(zzdVar.zzd()));
            }
            m1659a(sb, i, "comparison_value", zzdVar.zzf());
            m1659a(sb, i, "min_comparison_value", zzdVar.zzh());
            m1659a(sb, i, "max_comparison_value", zzdVar.zzj());
            m1662a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    private static void m1659a(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            m1662a(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    /* renamed from: a */
    private static void m1658a(StringBuilder sb, String str, zzbr.zzi zziVar) {
        if (zziVar != null) {
            m1662a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (zziVar.zzd() != 0) {
                m1662a(sb, 4);
                sb.append("results: ");
                int i = 0;
                for (Long l : zziVar.zzc()) {
                    if (i != 0) {
                        sb.append(", ");
                    }
                    sb.append(l);
                    i++;
                }
                sb.append('\n');
            }
            if (zziVar.zzb() != 0) {
                m1662a(sb, 4);
                sb.append("status: ");
                int i2 = 0;
                for (Long l2 : zziVar.zza()) {
                    if (i2 != 0) {
                        sb.append(", ");
                    }
                    sb.append(l2);
                    i2++;
                }
                sb.append('\n');
            }
            if (zziVar.zzf() != 0) {
                m1662a(sb, 4);
                sb.append("dynamic_filter_timestamps: {");
                int i3 = 0;
                for (zzbr.zzb zzbVar : zziVar.zze()) {
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null);
                    sb.append(":");
                    sb.append(zzbVar.zzc() ? Long.valueOf(zzbVar.zzd()) : null);
                    i3++;
                }
                sb.append("}\n");
            }
            if (zziVar.zzh() != 0) {
                m1662a(sb, 4);
                sb.append("sequence_filter_timestamps: {");
                int i4 = 0;
                for (zzbr.zzj zzjVar : zziVar.zzg()) {
                    if (i4 != 0) {
                        sb.append(", ");
                    }
                    sb.append(zzjVar.zza() ? Integer.valueOf(zzjVar.zzb()) : null);
                    sb.append(": [");
                    int i5 = 0;
                    for (Long l3 : zzjVar.zzc()) {
                        long longValue = l3.longValue();
                        if (i5 != 0) {
                            sb.append(", ");
                        }
                        sb.append(longValue);
                        i5++;
                    }
                    sb.append("]");
                    i4++;
                }
                sb.append("}\n");
            }
            m1662a(sb, 3);
            sb.append("}\n");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m1663a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m1656a(List<Long> list, int i) {
        return i < (list.size() << 6) && ((1 << (i % 64)) & list.get(i / 64).longValue()) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Object m1650b(zzbr.zzc zzcVar, String str) {
        zzbr.zze a = m1670a(zzcVar, str);
        if (a == null) {
            return null;
        }
        if (a.zzb()) {
            return a.zzc();
        }
        if (a.zzd()) {
            return Long.valueOf(a.zze());
        }
        if (a.zzf()) {
            return Double.valueOf(a.zzg());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m1653a(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzp().zzd();
        MessageDigest d = zzkm.m1608d();
        if (d != null) {
            return zzkm.m1619a(d.digest(bArr));
        }
        zzr().zzf().zza("Failed to get MD5");
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends Parcelable> T m1652a(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                T createFromParcel = creator.createFromParcel(obtain);
                obtain.recycle();
                return createFromParcel;
            } catch (SafeParcelReader.ParseException e) {
                zzr().zzf().zza("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m1673a(zzbj.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (zzbVar.zza()) {
            m1659a(sb, 0, "filter_id", Integer.valueOf(zzbVar.zzb()));
        }
        m1659a(sb, 0, "event_name", zzo().m1866a(zzbVar.zzc()));
        String a = m1654a(zzbVar.zzh(), zzbVar.zzi(), zzbVar.zzk());
        if (!a.isEmpty()) {
            m1659a(sb, 0, "filter_type", a);
        }
        m1660a(sb, 1, "event_count_filter", zzbVar.zzg());
        sb.append("  filters {\n");
        for (zzbj.zzc zzcVar : zzbVar.zzd()) {
            m1661a(sb, 2, zzcVar);
        }
        m1662a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m1672a(zzbj.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (zzeVar.zza()) {
            m1659a(sb, 0, "filter_id", Integer.valueOf(zzeVar.zzb()));
        }
        m1659a(sb, 0, "property_name", zzo().m1862c(zzeVar.zzc()));
        String a = m1654a(zzeVar.zze(), zzeVar.zzf(), zzeVar.zzh());
        if (!a.isEmpty()) {
            m1659a(sb, 0, "filter_type", a);
        }
        m1661a(sb, 1, zzeVar.zzd());
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m1668a(zzbr.zzf zzfVar) {
        List<zzbr.zze> zza;
        if (zzfVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (zzbr.zzg zzgVar : zzfVar.zza()) {
            if (zzgVar != null) {
                m1662a(sb, 1);
                sb.append("bundle {\n");
                if (zzgVar.zza()) {
                    m1659a(sb, 1, "protocol_version", Integer.valueOf(zzgVar.zzb()));
                }
                m1659a(sb, 1, "platform", zzgVar.zzq());
                if (zzgVar.zzz()) {
                    m1659a(sb, 1, "gmp_version", Long.valueOf(zzgVar.zzaa()));
                }
                if (zzgVar.zzab()) {
                    m1659a(sb, 1, "uploading_gmp_version", Long.valueOf(zzgVar.zzac()));
                }
                if (zzgVar.zzbc()) {
                    m1659a(sb, 1, "dynamite_version", Long.valueOf(zzgVar.zzbd()));
                }
                if (zzgVar.zzau()) {
                    m1659a(sb, 1, "config_version", Long.valueOf(zzgVar.zzav()));
                }
                m1659a(sb, 1, "gmp_app_id", zzgVar.zzam());
                m1659a(sb, 1, "admob_app_id", zzgVar.zzbb());
                m1659a(sb, 1, "app_id", zzgVar.zzx());
                m1659a(sb, 1, "app_version", zzgVar.zzy());
                if (zzgVar.zzar()) {
                    m1659a(sb, 1, "app_version_major", Integer.valueOf(zzgVar.zzas()));
                }
                m1659a(sb, 1, "firebase_instance_id", zzgVar.zzaq());
                if (zzgVar.zzah()) {
                    m1659a(sb, 1, "dev_cert_hash", Long.valueOf(zzgVar.zzai()));
                }
                m1659a(sb, 1, "app_store", zzgVar.zzw());
                if (zzgVar.zzg()) {
                    m1659a(sb, 1, "upload_timestamp_millis", Long.valueOf(zzgVar.zzh()));
                }
                if (zzgVar.zzi()) {
                    m1659a(sb, 1, "start_timestamp_millis", Long.valueOf(zzgVar.zzj()));
                }
                if (zzgVar.zzk()) {
                    m1659a(sb, 1, "end_timestamp_millis", Long.valueOf(zzgVar.zzl()));
                }
                if (zzgVar.zzm()) {
                    m1659a(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzgVar.zzn()));
                }
                if (zzgVar.zzo()) {
                    m1659a(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzgVar.zzp()));
                }
                m1659a(sb, 1, "app_instance_id", zzgVar.zzag());
                m1659a(sb, 1, "resettable_device_id", zzgVar.zzad());
                m1659a(sb, 1, "device_id", zzgVar.zzat());
                m1659a(sb, 1, "ds_id", zzgVar.zzay());
                if (zzgVar.zzae()) {
                    m1659a(sb, 1, "limited_ad_tracking", Boolean.valueOf(zzgVar.zzaf()));
                }
                m1659a(sb, 1, "os_version", zzgVar.zzr());
                m1659a(sb, 1, "device_model", zzgVar.zzs());
                m1659a(sb, 1, "user_default_language", zzgVar.zzt());
                if (zzgVar.zzu()) {
                    m1659a(sb, 1, "time_zone_offset_minutes", Integer.valueOf(zzgVar.zzv()));
                }
                if (zzgVar.zzaj()) {
                    m1659a(sb, 1, "bundle_sequential_index", Integer.valueOf(zzgVar.zzak()));
                }
                if (zzgVar.zzan()) {
                    m1659a(sb, 1, "service_upload", Boolean.valueOf(zzgVar.zzao()));
                }
                m1659a(sb, 1, "health_monitor", zzgVar.zzal());
                if (zzgVar.zzaw() && zzgVar.zzax() != 0) {
                    m1659a(sb, 1, "android_id", Long.valueOf(zzgVar.zzax()));
                }
                if (zzgVar.zzaz()) {
                    m1659a(sb, 1, "retry_counter", Integer.valueOf(zzgVar.zzba()));
                }
                List<zzbr.zzk> zze = zzgVar.zze();
                if (zze != null) {
                    for (zzbr.zzk zzkVar : zze) {
                        if (zzkVar != null) {
                            m1662a(sb, 2);
                            sb.append("user_property {\n");
                            m1659a(sb, 2, "set_timestamp_millis", zzkVar.zza() ? Long.valueOf(zzkVar.zzb()) : null);
                            m1659a(sb, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().m1862c(zzkVar.zzc()));
                            m1659a(sb, 2, "string_value", zzkVar.zze());
                            m1659a(sb, 2, "int_value", zzkVar.zzf() ? Long.valueOf(zzkVar.zzg()) : null);
                            m1659a(sb, 2, "double_value", zzkVar.zzh() ? Double.valueOf(zzkVar.zzi()) : null);
                            m1662a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzbr.zza> zzap = zzgVar.zzap();
                zzgVar.zzx();
                if (zzap != null) {
                    for (zzbr.zza zzaVar : zzap) {
                        if (zzaVar != null) {
                            m1662a(sb, 2);
                            sb.append("audience_membership {\n");
                            if (zzaVar.zza()) {
                                m1659a(sb, 2, "audience_id", Integer.valueOf(zzaVar.zzb()));
                            }
                            if (zzaVar.zzf()) {
                                m1659a(sb, 2, "new_audience", Boolean.valueOf(zzaVar.zzg()));
                            }
                            m1658a(sb, "current_data", zzaVar.zzc());
                            m1658a(sb, "previous_data", zzaVar.zze());
                            m1662a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<zzbr.zzc> zzc = zzgVar.zzc();
                if (zzc != null) {
                    for (zzbr.zzc zzcVar : zzc) {
                        if (zzcVar != null) {
                            m1662a(sb, 2);
                            sb.append("event {\n");
                            m1659a(sb, 2, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().m1866a(zzcVar.zzc()));
                            if (zzcVar.zzd()) {
                                m1659a(sb, 2, "timestamp_millis", Long.valueOf(zzcVar.zze()));
                            }
                            if (zzcVar.zzf()) {
                                m1659a(sb, 2, "previous_timestamp_millis", Long.valueOf(zzcVar.zzg()));
                            }
                            if (zzcVar.zzh()) {
                                m1659a(sb, 2, "count", Integer.valueOf(zzcVar.zzi()));
                            }
                            if (!(zzcVar.zzb() == 0 || (zza = zzcVar.zza()) == null)) {
                                for (zzbr.zze zzeVar : zza) {
                                    if (zzeVar != null) {
                                        m1662a(sb, 3);
                                        sb.append("param {\n");
                                        m1659a(sb, 3, AppMeasurementSdk.ConditionalUserProperty.NAME, zzo().m1864b(zzeVar.zza()));
                                        m1659a(sb, 3, "string_value", zzeVar.zzc());
                                        m1659a(sb, 3, "int_value", zzeVar.zzd() ? Long.valueOf(zzeVar.zze()) : null);
                                        m1659a(sb, 3, "double_value", zzeVar.zzf() ? Double.valueOf(zzeVar.zzg()) : null);
                                        m1662a(sb, 3);
                                        sb.append("}\n");
                                    }
                                }
                            }
                            m1662a(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m1662a(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final List<Long> m1655a(List<Long> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                zzr().zzi().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    zzr().zzi().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (size2 >= 0 && ((Long) arrayList.get(size2)).longValue() == 0) {
            size2--;
            size = size2;
        }
        return arrayList.subList(0, size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1669a(zzbr.zze.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zza().zzb().zzc();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzr().zzf().zza("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1666a(zzbr.zzk.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zza().zzb().zzc();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
        } else if (obj instanceof Long) {
            zzaVar.zzb(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzr().zzf().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2837hj
    /* renamed from: a */
    protected final boolean mo1675a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1674a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zzm().currentTimeMillis() - j) > j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1664a(zzan zzanVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotNull(zzmVar);
        if (zzji.zzb() && zzt().zza(zzap.zzcj)) {
            return !TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzr);
        }
        if (!TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzr)) {
            return true;
        }
        zzu();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final List<Integer> m1651b() {
        Map<String, String> zza = zzap.zza(this.f17026a.zzn());
        if (zza == null || zza.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = zzap.zzam.zza(null).intValue();
        for (Map.Entry<String, String> entry : zza.entrySet()) {
            if (entry.getKey().startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt(entry.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            zzr().zzi().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e) {
                    zzr().zzi().zza("Experiment ID NumberFormatException", e);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final byte[] m1649b(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            zzr().zzf().zza("Failed to ungzip content", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final byte[] m1648c(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzr().zzf().zza("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    /* renamed from: e_ */
    public final /* bridge */ /* synthetic */ C2847ht mo1647e_() {
        return super.mo1647e_();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ C2692c zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
