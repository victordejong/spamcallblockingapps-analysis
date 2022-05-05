package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzfo;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfu.class */
public final class zzfu extends AbstractC2837hj implements AbstractC2855ia {

    /* renamed from: b */
    private static int f17190b = 65535;

    /* renamed from: c */
    private static int f17191c = 2;

    /* renamed from: d */
    private final Map<String, Map<String, String>> f17192d = new C0529a();

    /* renamed from: e */
    private final Map<String, Map<String, Boolean>> f17193e = new C0529a();

    /* renamed from: f */
    private final Map<String, Map<String, Boolean>> f17194f = new C0529a();

    /* renamed from: g */
    private final Map<String, zzbo.zzb> f17195g = new C0529a();

    /* renamed from: i */
    private final Map<String, String> f17197i = new C0529a();

    /* renamed from: h */
    private final Map<String, Map<String, Integer>> f17196h = new C0529a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfu(zzke zzkeVar) {
        super(zzkeVar);
    }

    /* renamed from: a */
    private final zzbo.zzb m1826a(String str, byte[] bArr) {
        if (bArr == null) {
            return zzbo.zzb.zzj();
        }
        try {
            zzbo.zzb zzbVar = (zzbo.zzb) ((zzfd) ((zzbo.zzb.zza) zzki.m1665a(zzbo.zzb.zzi(), bArr)).zzu());
            zzey zzx = zzr().zzx();
            String str2 = null;
            Long valueOf = zzbVar.zza() ? Long.valueOf(zzbVar.zzb()) : null;
            if (zzbVar.zzc()) {
                str2 = zzbVar.zzd();
            }
            zzx.zza("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzbVar;
        } catch (zzfo | RuntimeException e) {
            zzr().zzi().zza("Unable to merge remote config. appId", zzew.m1855a(str), e);
            return zzbo.zzb.zzj();
        }
    }

    /* renamed from: a */
    private static Map<String, String> m1830a(zzbo.zzb zzbVar) {
        C0529a aVar = new C0529a();
        if (zzbVar != null) {
            for (zzbo.zzc zzcVar : zzbVar.zze()) {
                aVar.put(zzcVar.zza(), zzcVar.zzb());
            }
        }
        return aVar;
    }

    /* renamed from: a */
    private final void m1828a(String str, zzbo.zzb.zza zzaVar) {
        C0529a aVar = new C0529a();
        C0529a aVar2 = new C0529a();
        C0529a aVar3 = new C0529a();
        if (zzaVar != null) {
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzbo.zza.C3511zza zzbm = zzaVar.zza(i).zzbm();
                if (TextUtils.isEmpty(zzbm.zza())) {
                    zzr().zzi().zza("EventConfig contained null event name");
                } else {
                    String zzb = zzgv.zzb(zzbm.zza());
                    zzbo.zza.C3511zza zzaVar2 = zzbm;
                    if (!TextUtils.isEmpty(zzb)) {
                        zzaVar2 = zzbm.zza(zzb);
                        zzaVar.zza(i, zzaVar2);
                    }
                    aVar.put(zzaVar2.zza(), Boolean.valueOf(zzaVar2.zzb()));
                    aVar2.put(zzaVar2.zza(), Boolean.valueOf(zzaVar2.zzc()));
                    if (zzaVar2.zzd()) {
                        if (zzaVar2.zze() < f17191c || zzaVar2.zze() > f17190b) {
                            zzr().zzi().zza("Invalid sampling rate. Event name, sample rate", zzaVar2.zza(), Integer.valueOf(zzaVar2.zze()));
                        } else {
                            aVar3.put(zzaVar2.zza(), Integer.valueOf(zzaVar2.zze()));
                        }
                    }
                }
            }
        }
        this.f17193e.put(str, aVar);
        this.f17194f.put(str, aVar2);
        this.f17196h.put(str, aVar3);
    }

    /* renamed from: i */
    private final void m1815i(String str) {
        m2024w();
        zzd();
        Preconditions.checkNotEmpty(str);
        if (this.f17195g.get(str) == null) {
            byte[] d = zzi().m2174d(str);
            if (d == null) {
                this.f17192d.put(str, null);
                this.f17193e.put(str, null);
                this.f17194f.put(str, null);
                this.f17195g.put(str, null);
                this.f17197i.put(str, null);
                this.f17196h.put(str, null);
                return;
            }
            zzbo.zzb.zza zzbm = m1826a(str, d).zzbm();
            m1828a(str, zzbm);
            this.f17192d.put(str, m1830a((zzbo.zzb) ((zzfd) zzbm.zzu())));
            this.f17195g.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
            this.f17197i.put(str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final zzbo.zzb m1829a(String str) {
        m2024w();
        zzd();
        Preconditions.checkNotEmpty(str);
        m1815i(str);
        return this.f17195g.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2837hj
    /* renamed from: a */
    protected final boolean mo1675a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1827a(String str, String str2) {
        Boolean bool;
        zzd();
        m1815i(str);
        if (m1817g(str) && zzkm.m1605e(str2)) {
            return true;
        }
        if (m1816h(str) && zzkm.m1631a(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f17193e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m1825a(String str, byte[] bArr, String str2) {
        m2024w();
        zzd();
        Preconditions.checkNotEmpty(str);
        zzbo.zzb.zza zzbm = m1826a(str, bArr).zzbm();
        if (zzbm == null) {
            return false;
        }
        m1828a(str, zzbm);
        this.f17195g.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
        this.f17197i.put(str, str2);
        this.f17192d.put(str, m1830a((zzbo.zzb) ((zzfd) zzbm.zzu())));
        zzi().m2181b(str, new ArrayList(zzbm.zzb()));
        try {
            zzbm.zzc();
            bArr = ((zzbo.zzb) ((zzfd) zzbm.zzu())).zzbi();
        } catch (RuntimeException e) {
            zzr().zzi().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzew.m1855a(str), e);
        }
        C2692c zzi = zzi();
        Preconditions.checkNotEmpty(str);
        zzi.zzd();
        zzi.m2024w();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (zzi.m2172e().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzi.zzr().zzf().zza("Failed to update remote config (got 0). appId", zzew.m1855a(str));
            }
        } catch (SQLiteException e2) {
            zzi.zzr().zzf().zza("Error storing remote config. appId", zzew.m1855a(str), e2);
        }
        this.f17195g.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final String m1824b(String str) {
        zzd();
        return this.f17197i.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m1823b(String str, String str2) {
        Boolean bool;
        zzd();
        m1815i(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f17194f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m1821c(String str, String str2) {
        Integer num;
        zzd();
        m1815i(str);
        Map<String, Integer> map = this.f17196h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m1822c(String str) {
        zzd();
        this.f17197i.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m1820d(String str) {
        zzd();
        this.f17195g.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final boolean m1819e(String str) {
        zzd();
        zzbo.zzb a = m1829a(str);
        if (a == null) {
            return false;
        }
        return a.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    /* renamed from: e_ */
    public final /* bridge */ /* synthetic */ C2847ht mo1647e_() {
        return super.mo1647e_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final long m1818f(String str) {
        String zza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(zza)) {
            return 0L;
        }
        try {
            return Long.parseLong(zza);
        } catch (NumberFormatException e) {
            zzr().zzi().zza("Unable to parse timezone offset. appId", zzew.m1855a(str), e);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final boolean m1817g(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final boolean m1816h(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2855ia
    public final String zza(String str, String str2) {
        zzd();
        m1815i(str);
        Map<String, String> map = this.f17192d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
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
